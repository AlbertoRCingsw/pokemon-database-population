from data_generation import utils
from pathlib import Path

def get_pokemon_species_id(pokemon_species_name, pokemon_species_id, cur, script):
    cur.execute("INSERT INTO pokemon.pokemon_species (name, pokedex_index)\nVALUES (%s, %s)", (pokemon_species_name, pokemon_species_id))
    query = f"INSERT INTO pokemon.pokemon_species (name, pokedex_index)\nVALUES ('{pokemon_species_name}', {pokemon_species_id});"
    utils.write_query_to_file(script, query)
    cur.execute("SELECT * FROM pokemon.pokemon_species WHERE name = %s", (pokemon_species_name,))
    result = cur.fetchone()
    return result[0]

def iterate_forms(varieties):
    form_names = []

    varieties_size = len(varieties)
    for i in range(0, varieties_size):
        form_names.append(varieties[i]["pokemon"]["name"])
    
    return form_names

def insert_pokemon_stats(cur, script, stats, form_id, generation_number):

    base_stats = []
    for j in range(0, len(stats)):
        base_stats.append(stats[j]["base_stat"])
            
    hp = base_stats[0]
    attack = base_stats[1]
    defense = base_stats[2]
    special_attack = base_stats[3]
    special_defense = base_stats[4]
    speed = base_stats[5]

    cur.execute("INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)\nVALUES (%s, %s, %s, %s, %s, %s, %s, %s)", (hp, attack, defense, special_attack, special_defense, speed, generation_number, form_id))
    query = f"INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)\nVALUES ({hp}, {attack}, {defense}, {special_attack}, {special_defense}, {speed}, {generation_number}, {form_id});"
    utils.write_query_to_file(script, query)


def insert_pokemon(cur, script, generation_number):
    header = "-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS\n-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS\n-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS\n"
    utils.write_header(script, header)

    generation = utils.get_generation_data(generation_number)
    number_of_pokemon = len(generation["pokemon_species"]) 

    for i in range(0, number_of_pokemon):
        pokemon_species_name = generation["pokemon_species"][i]["name"]
        pokemon_species_directory = Path("./pokemon-species")
        entity = str(pokemon_species_directory)
        print(f"✅ Inserting pokemon species: {pokemon_species_name}")
        species = utils.create_directory_and_return_data(pokemon_species_directory, entity, pokemon_species_name)

        pokemon_species_id = species["id"]
        varieties = species["varieties"]
        form_names = iterate_forms(varieties)

        # Inserts the Pokemon and obtain its id, useful when creating relationships
        pokemon_species_id_in_db = get_pokemon_species_id(pokemon_species_name, pokemon_species_id, cur, script)

        pokemon_form_directory = Path("./pokemon")
        pokemon_form_entity = str(pokemon_form_directory)

        for i in range (0, len(form_names)):
            current_form = utils.create_directory_and_return_data(pokemon_form_directory, pokemon_form_entity, form_names[i])

            current_form_name = current_form["name"]
            is_default = True
            if current_form_name != pokemon_species_name:
                is_default = False

            cur.execute("INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)\nVALUES (%s, %s, %s)", (current_form_name, is_default, pokemon_species_id_in_db))
            query = f"INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)\nVALUES ('{current_form_name}', {is_default}, {pokemon_species_id_in_db});"
            utils.write_query_to_file(script, query)
            form_id = cur.lastrowid

            insert_pokemon_stats(cur, script, current_form["stats"], form_id, generation_number)

            for i in range(0, len(current_form["types"])):
                type_name = current_form["types"][i]["type"]["name"]

                pk_type = utils.get_type_pk_by_name(cur, type_name)

                cur.execute("INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)\nVALUES (%s, %s, %s)", (form_id, pk_type, generation_number))
                query = f"INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)\nVALUES ({form_id}, {pk_type}, {generation_number});"
                utils.write_query_to_file(script, query)
            
            utils.write_blank_line(script)
    utils.write_ending_blank_lines(script)