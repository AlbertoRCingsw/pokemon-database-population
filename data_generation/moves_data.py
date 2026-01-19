from data_generation import utils
from pathlib import Path

def get_and_insert_effect(cur, move_target, move_effect_entries, move_meta):
    
    target = move_target["name"]
    if move_effect_entries is None or move_effect_entries == []:
        description = "A description could not be retrieved."
        short_description = "No description."
    else:
        description = move_effect_entries[0]["effect"]
        short_description = move_effect_entries[0]["short_effect"] 
    
    if (move_meta is not None):
        flinch_chance = move_meta.get("flinch_chance") or 0
        drain = move_meta.get("drain") or 0
        crit_rate = move_meta.get("crit_rate") or 0
        healing = move_meta.get("healing") or 0
        max_hits, max_turns = move_meta.get("max_hits") or 1, move_meta.get("max_turns") or 0 
        min_hits, min_turns = move_meta.get("min_hits") or 1, move_meta.get("min_turns") or 0
        stat_chance = move_meta.get("stat_chance") or 0

        if (move_meta["ailment"] is not None):
            status = move_meta["ailment"].get("name") or 'none'
        else:
            status = 'none'

        status_chance = move_meta.get("ailment_chance", 0)
    else:
        flinch_chance, drain, crit_rate, healing, status, status_chance = 0, 0, 0, 0, 'none', 0
        min_hits, max_hits, min_turns, max_turns = 0, 0, 0, 0
        stat_chance = 0

    insert_string = "INSERT INTO pokemon.effect ("  \
                    "target, " \
                    "status, " \
                    "status_chance, " \
                    "description, " \
                    "flinch_chance, " \
                    "drain, " \
                    "crit_rate, " \
                    "healing, " \
                    "max_hits, " \
                    "max_turns, " \
                    "min_hits, " \
                    "min_turns, " \
                    "stat_chance, " \
                    "short_description)\nVALUES "
    query_string = insert_string
    insert_string += "(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

    effect_data = (target, status, status_chance, description, flinch_chance, drain, crit_rate, healing, max_hits, max_turns, min_hits, min_turns, stat_chance, short_description)

    cur.execute(insert_string, effect_data)
    effect_id = cur.lastrowid

    query = query_string + str(effect_data) + ";"

    return effect_id, query


def get_and_insert_move(cur, generation_number, move, move_type, move_damage_class, fk_effect):
    fk_generation = generation_number 
    type_name = move_type["name"]
    fk_type = utils.get_type_pk_by_name(cur, type_name)
    
    name = move["name"]
    power_points = move["pp"]
    priority = move["priority"]
    
    # If there is no power, then it is not a damage dealing move 
    power = move.get("power") or 0 
    # If there is no accuracy, then it never misses
    accuracy = move.get("accuracy") or 1000

    category = move_damage_class["name"]

    move_data = (fk_generation, fk_type, fk_effect, name, power, power_points, priority, accuracy, category)
        
    insert_string = "INSERT INTO pokemon.move (" \
                    "fk_generation, " \
                    "fk_type, " \
                    "fk_effect, " \
                    "name, " \
                    "power, " \
                    "power_points, " \
                    "priority, " \
                    "accuracy, " \
                    "category)\nVALUES "
    query_string = insert_string
    insert_string += "(%s, %s, %s, %s, %s, %s, %s, %s, %s)"

    cur.execute(insert_string, move_data)
    query = query_string + str(move_data) + ";"

    return query


def insert_moves(cur, script, generation_number):

    header = "-- MOVES\n-- MOVES\n-- MOVES\n\n"
    utils.write_header(script, header)
    generation = utils.get_generation_data(generation_number)

    generation_moves = generation["moves"]

    moves_directory = Path("./moves")
    move_entity = str(moves_directory)[:-1]

    for i in range(0, len(generation_moves)):
        move_name = generation_moves[i]["name"]
        move = utils.create_directory_and_return_data(moves_directory, move_entity, move_name)
        
        if move["type"]["name"] != 'shadow':
            effect_id, query = get_and_insert_effect(cur, move["target"], move["effect_entries"], move["meta"])
            utils.write_query_to_file(script, query)
            utils.write_blank_line(script)
            print("✅ An effect has been inserted")

            query = get_and_insert_move(cur, generation_number, move, move["type"], move["damage_class"], effect_id)
            utils.write_query_to_file(script, query)
            utils.write_blank_line(script)
            print(f"✅ A new move, {move_name} has been inserted")
    utils.write_ending_blank_lines(script)