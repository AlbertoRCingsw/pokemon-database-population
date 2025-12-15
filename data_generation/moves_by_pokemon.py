from data_generation import utils
from pathlib import Path

def find_move_index(moves, move_name):
    found = False
    i = 0
    while (not found and i < len(moves)):
        move = moves[i]["move"]
        if (move["name"].lower() == move_name.lower()):
            found = True
        else:
            i += 1

    if not found:
        i = -1

    return i


def insert_learned_moves(cur, script, generation_number):    
    header = "-- MOVES_LEARNED\n-- MOVES_LEARNED\n-- MOVES_LEARNED\n\n"
    utils.write_header(script, header)

    generation_data = utils.get_generation_data(generation_number)

    generation_moves_list = generation_data["moves"] # Moves introduced in that generation

    moves_directory = Path("./moves")
    move_entity_name = "move"

    pokemon_directory = Path("./pokemon")

    for specific_move in generation_moves_list:
        # List of Pokémon that learn that specific move
        move = utils.create_directory_and_return_data(moves_directory, move_entity_name, specific_move["name"])
        pokemon_list = move["learned_by_pokemon"] 

        # Iterating through all Pokémon able to learn the move
        for i in range(0, len(pokemon_list)):
            pokemon_name = pokemon_list[i]["name"]
            pokemon_path = pokemon_directory / f"pokemon_{pokemon_name}.json"
            pokemon = utils.read_from_json_file(pokemon_path)

            # Each Pokémon has a list of moves that the Pokémon can learn
            index = find_move_index(pokemon["moves"], move["name"]) # Index where the move is in that list
            if index > -1:
                move = pokemon["moves"][index]["move"] # Now the variable is updated with new information about the move

                fk_move = utils.get_pk_by_name(cur, "move", specific_move["name"])
                fk_form = utils.get_pk_by_name(cur, "form", pokemon["name"])

                # Since the move was retrieved from the Pokémon, it now has information about
                # the version group where the Pokémon is able to learn the move
                version_group_details = pokemon["moves"][index]["version_group_details"]

                # The move may be learnt in more than one version group or via more than one method
                # That information is present in the version group details
                for j in range(0, len(version_group_details)):
                    current_version_group = version_group_details[j]

                    version_group_name = current_version_group["version_group"]["name"]
                    fk_version_group = utils.get_pk_by_name(cur, "version_group", version_group_name)
                    method = current_version_group["move_learn_method"]["name"]
                    level = current_version_group["level_learned_at"]

                    learned_move_data = (fk_form, fk_move, fk_version_group, method, level)

                    cur.execute("INSERT INTO pokemon.form_learned_moves (fk_form, fk_move, fk_version_group, method, level)\nVALUES (%s, %s, %s, %s, %s)", learned_move_data)
                    query = "INSERT INTO pokemon.form_learned_moves (fk_form, fk_move, fk_version_group, method, level)\nVALUES " + str(learned_move_data) + ";"
                    utils.write_query_to_file(script, query)
                    print("✅ New row inserted in form_learned_moves")

    utils.write_ending_blank_lines(script)



