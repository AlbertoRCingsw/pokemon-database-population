from data_generation import utils
from pathlib import Path

ZA_MEGAS = ["clefable-mega, victreebel-mega, starmie-mega", "dragonite-mega",
                "meganium-mega", "feraligatr-mega", "skarmory-mega", "skarmory-mega", 
                "froslass-mega", "emboar-mega", "excadrill-mega", "scolipede-mega",
                "scrafty-mega", "eelektross-mega", "chandelure-mega", "chesnaught-mega",
                "delphox-mega", "greninja-mega", "pyroar-mega", "floette-mega", 
                "malamar-mega", "barbaracle-mega", "hawlucha-mega", "zygarde-mega",
                "drampa-mega", "falinks-mega"]

MEGA_DIMENSION_MEGAS = ["raichu-mega-x", "raichu-mega-y", "chimecho-mega", "absol-mega-z",
                        "staraptor-mega", "garchomp-mega-z", "lucario-mega-z", "heatran-mega",
                        "darkrai-mega", "golurk-mega", "meowstic-mega", "crabominable-mega",
                        "golisopod-mega", "magearna-mega", "magearna-original-mega", 
                        "zeraora-mega", "scovillain-mega", "glimmora-mega", "tatsugiri-curly-mega",
                        "tatsugiri-droopy-mega", "tatsugiri-stretchy-mega", "baxcalibur-mega"]

def adapt_generation_number(name):
    if (name == 'meganium'):
        return 2 # Meganium is a Gen 2 Pokémon
    elif (name == 'yanmega'):
        return 4 # Yanmega is a Gen 4 Pokémon
    elif ('mega' in name):
        if (name not in ZA_MEGAS and name not in MEGA_DIMENSION_MEGAS):
            return 9 # Gen 9 introduced several new megas
        else:
            return 6 # The original megas were introduced in gen 6
    elif ('alola' in name):
        return 7 # All alolan forms were introduced in Gen 7
    elif ('galar' in name or 'gmax' in name or 'hisui' in name):
        return 8 # All Galar, Gigantamax and Hisuian forms were introduced in Gen 8
    elif ('paldea' in name):
        return 9 # All Paldean forms were introdcued in Gen 9
    else:
        return 0 # The generation number does not change in any other scenario

def insert_pokemon_form_type(cur, script, tuple):
    cur.execute("INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation, is_primary)\n" \
                "VALUES (%s, %s, %s, %s)", tuple)
    query = f"INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation, is_primary)\n" \
            f"VALUES {tuple};"
    utils.write_query_to_file(script, query)

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

    query_tuple = (hp, attack, defense, special_attack, special_defense, speed, generation_number, form_id)

    cur.execute("INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, " \
                "base_special_defense, base_speed, fk_generation, fk_form)\n" \
                "VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", query_tuple)
    query = f"INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, " \
             "base_special_defense, base_speed, fk_generation, fk_form)\n" \
            f"VALUES {query_tuple};"
    utils.write_query_to_file(script, query)

def insert_form(cur, script, form_tuple):
    cur.execute("INSERT INTO pokemon.form (name, is_default, fk_pokemon_species, height, weight, " \
                "legacy_cry, latest_cry, artwork, shiny_artwork)" \
                "\nVALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", form_tuple)
    query = "INSERT INTO pokemon.form (name, is_default, fk_pokemon_species, height, weight, " \
            "legacy_cry, latest_cry, artwork, shiny_artwork)\n" \
            f"VALUES {form_tuple};"
    utils.write_query_to_file(script, query)
    return cur.lastrowid

def insert_pokemon_species(cur, script, species_tuple):
    cur.execute("INSERT INTO pokemon.pokemon_species (name, pokedex_index, is_baby, is_legendary, is_mythical, evolves_from)\n" \
    "VALUES (%s, %s, %s, %s, %s, %s)", species_tuple)
    query = f"INSERT INTO pokemon.pokemon_species (name, pokedex_index, is_baby, is_legendary, is_mythical, evolves_from)\n" \
            f"VALUES {species_tuple};"
    utils.write_query_to_file(script, query)
    cur.execute("SELECT * FROM pokemon.pokemon_species WHERE name = %s", (species_tuple[0],))
    return cur.fetchone()[0]

def insert_pokemon(cur, script, generation_number, pokemon_species_directory, pokemon_forms_directory):
    header = "-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS\n-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS\n-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS\n"
    utils.write_header(script, header)

    generation = utils.get_generation_data(generation_number)
    number_of_pokemon = len(generation["pokemon_species"]) 
    aux_generation_number = 0 # Useful when dealing with forms introduced later than the base form

    for i in range(0, number_of_pokemon):
        
        # Pokémon species data
        pokemon_species_name = generation["pokemon_species"][i]["name"]
        
        print(f"✅ Inserting pokemon species: {pokemon_species_name}")
        species = utils.create_directory_and_return_data(pokemon_species_directory, pokemon_species_name)

        pokemon_species_id = species["id"]

        is_baby, is_legendary, is_mythical = species["is_baby"], species["is_legendary"], species["is_mythical"]
        evolves_from = None
        if (species.get("evolves_from_species", None) is not None):
            evolves_from = species["evolves_from_species"]["name"]

        # Inserts the Pokemon and obtain its id, useful when creating relationships
        species_tuple = (pokemon_species_name, pokemon_species_id, is_baby, is_legendary, is_mythical, evolves_from)
        pokemon_species_id_in_db = insert_pokemon_species(cur, script, species_tuple)

        varieties = species["varieties"]
        form_names = iterate_forms(varieties)

        # Pokémon forms data
        for i in range (0, len(form_names)):

            # Extracts this form's data
            current_form = utils.create_directory_and_return_data(pokemon_forms_directory, form_names[i])

            current_form_name = current_form["name"]
            is_default = True
            if current_form_name != pokemon_species_name:
                is_default = False

            height, weight = current_form["height"], current_form["weight"]
            legacy_cry, latest_cry = current_form["cries"]["legacy"], current_form["cries"]["latest"]
            artwork = current_form["sprites"]["other"]["official-artwork"]["front_default"]
            shiny_artwork = current_form["sprites"]["other"]["official-artwork"]["front_shiny"]

            # Inserts the Pokémon form 
            form_tuple = (current_form_name, is_default, pokemon_species_id_in_db, height, weight, 
                          legacy_cry, latest_cry, artwork, shiny_artwork)
            form_id = insert_form(cur, script, form_tuple)
            
            # A Pokémon form may be introduced later than the base form
            aux_generation_number = adapt_generation_number(current_form_name)

            if aux_generation_number > 0:
                insert_pokemon_stats(cur, script, current_form["stats"], form_id, aux_generation_number)
            else:
                insert_pokemon_stats(cur, script, current_form["stats"], form_id, generation_number)

            aux_generation_number = adapt_generation_number(current_form_name)
            for i in range(0, len(current_form["types"])):
                type_name = current_form["types"][i]["type"]["name"]
                pk_type = utils.get_pk_by_name(cur, "type", type_name)

                is_primary = False
                if (current_form["types"][i]["slot"] == 1):
                    is_primary = True

                if aux_generation_number > 0:
                    type_tuple = (form_id, pk_type, aux_generation_number, is_primary)
                    insert_pokemon_form_type(cur, script, type_tuple)
                else:
                    type_tuple = (form_id, pk_type, generation_number, is_primary)
                    insert_pokemon_form_type(cur, script, type_tuple)
            
            utils.write_blank_line(script)
    utils.write_ending_blank_lines(script)