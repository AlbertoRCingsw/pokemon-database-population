from data_population import utils
from logger_config import logger
import db

# The following dictionary returns the generation id and number
# when accessing it using text. Useful for insertions.
GENERATIONS = {
    "generation-i": 1,
    "generation-ii": 2,
    "generation-iii": 3,
    "generation-iv": 4,
    "generation-v": 5,
    "generation-vi": 6,
    "generation-vii": 7,
    "generation-viii": 8,
    "generation-ix": 9,
}

CURRENT_GENERATION = 9

# A Pokémon form is considered the default form if the Pokémon doesn't need to switch to it in combat
# For example: Deoxys-Defense can start combat as Deoxys Defense
#              If it's raning, Castform may appear directly in its rainy form 
DEFAULT_FORMS = ["castform",
                 "meloetta-aria", "aegislash-shield", 
                 "wishiwashi-solo", "lycanroc-midday", "lycanroc-midnight", "lycanroc-dusk",
                 "necrozma", "necrozma-dusk", "necrozma-dawn",
                 "cramorant", "eiscue-ice", "morpeko-full-belly", "palafin-zero", "terapagos-terastal",
                 "terapagos-stellar", "ogerpon", "ogerpon-wellspring-mask", "ogerpon-hearthflame-mask",
                 "ogerpon-cornerstone-mask", "greninja", "greninja-battle-bond"]


SWITCHABLE_FORM = ["castform", "castform-sunny", "castform-rainy", "castfoorm-snowy",
                   "meloetta-pirouette", "aegislash-blade", "greninja-ash",
                   "wishiwashi-solo", "wishiwashi-school", "necrozma-ultra",
                   "cramorant-gulping", "cramorant-gorging", "eiscue-ice", "eiscue-noice", "morpeko-full-belly",
                   "morpeko-hangry", "palafin-hero", "terapagos-terastal", "terapagos-stellar"]

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

COSPLAY_PIKACHUS = ["pikachu-cosplay", "pikachu-rock-star", "pikachu-belle", 
                    "pikachu-pop-star", "pikachu-phd", "pikachu-libre"]

CAP_PIKACHUS = ["pikachu-original-cap", "pikachu-hoenn-cap", "pikachu-sinnoh-cap",
                "pikachu-unova-cap", "pikachu-kalos-cap", "pikachu-alola-cap",
                "pikachu-partner-cap", "pikachu-world-cap"]

STARTER_PIKACHU = "pikachu-starter"


GENDERS = {
    "M": "male",
    "F": "female",
    "N": "unknown"
}

def insert_gender_relationship(cursor, gender_name, rate, form_id):
    gender_id = db.get_pk_by_name(cursor, "gender", gender_name)
    gender_relationship_tuple = (form_id, gender_id, rate)
    attributes_tuple = '(fk_form, fk_gender, rate)'
    try:
        db.simple_insert(cursor, "form_has_gender", attributes_tuple, gender_relationship_tuple)
    except Exception:
        logger.error(f"Error inserting a gender relationship between Gender {gender_name} and Pokémon (form id) {form_id}", exc_info=True)
        raise
    
def insert_genders(cursor, form_id, pokedex, showdown_name):
    if (showdown_name in pokedex.keys()):
        pokemon = pokedex[showdown_name]
        gender = pokemon.get("gender")
        gender_ratio = pokemon.get("genderRatio")

        if gender_ratio is not None:
            for gender_key, gender_value in gender_ratio.items():
                insert_gender_relationship(cursor, GENDERS[gender_key], gender_value, form_id)
        elif gender == "M":
            insert_gender_relationship(cursor, GENDERS["M"], 1, form_id)
        elif gender == "F":
            insert_gender_relationship(cursor, GENDERS["F"], 1, form_id)
        elif gender == "N":
            insert_gender_relationship(cursor, GENDERS["N"], 1, form_id)
        else:
            insert_gender_relationship(cursor, GENDERS["M"], 0.5, form_id)
            insert_gender_relationship(cursor, GENDERS["F"], 0.5, form_id)

def manage_abilities(cursor, pokemon_name, abilities, past_abilities, generation_number):

    pokemon_id = db.get_pk_by_name(cursor, "form", pokemon_name)

    abilities_generation = {}

    if past_abilities and past_abilities is not None:
        for past_ability in past_abilities:
            last_generation_name = past_ability.get("generation").get("name")
            last_generation_number = GENERATIONS[last_generation_name]

            current_past_abilities = past_ability.get("abilities")
            
            if current_past_abilities is not None:
                for specific_past_ability in current_past_abilities:
                    specific_past_ability_data = specific_past_ability.get("ability")
                    name = None
                    if specific_past_ability_data:
                        name = specific_past_ability_data.get("name")
                    is_hidden = specific_past_ability.get("is_hidden")
                    slot = specific_past_ability.get("slot")

                    abilities_generation[slot] = last_generation_number + 1

                    if name:
                        ability_id = db.get_pk_by_name(cursor, "ability", name)
                        table_name = "form_has_ability"
                        attributes_tuple = "(fk_ability, fk_form, fk_generation, is_hidden, slot)"
                        ability_tuple = (ability_id, pokemon_id, last_generation_number, is_hidden, slot)
                        try:
                            db.simple_insert(cursor, table_name, attributes_tuple, ability_tuple)
                        except Exception:
                            logger.info(f"Error inserting past Ability {name} for Pokémon {pokemon_name}", exc_info=True)
                            raise

    for ability in abilities:
        current_ability = ability.get("ability")

        name = current_ability.get("name")
        is_hidden = ability.get("is_hidden")
        slot = ability.get("slot")

        current_generation_number = generation_number
        if abilities_generation.get(slot):
            current_generation_number = abilities_generation[slot]

        ability_id = db.get_pk_by_name(cursor, "ability", name)
        table_name = "form_has_ability"
        attributes_tuple = "(fk_ability, fk_form, fk_generation, slot, is_hidden)"
        ability_relationship_tuple = (ability_id, pokemon_id, current_generation_number, slot, is_hidden)
        try:
            db.simple_insert(cursor, table_name, attributes_tuple, ability_relationship_tuple)
        except Exception:
            logger.error(f"Error inserting abilities for Pokémon {pokemon_name}", exc_info=True)
            raise
    logger.debug(f"{pokemon_name} abilities were successfully inserted")

def adapt_generation_number(generation_number, name):
    if (name == 'meganium'):
        return 2 # Meganium is a Gen 2 Pokémon
    elif (name == 'yanmega'):
        return 4 # Yanmega is a Gen 4 Pokémon
    elif ('mega' in name):
        if (name not in ZA_MEGAS and name not in MEGA_DIMENSION_MEGAS):
            return 6 # The original megas were introduced in gen 6
        else:
            return 9 # Gen 9 introduced several new megas in Legends Pokémon ZA and its Mega Dimension DLC
    elif name in COSPLAY_PIKACHUS:
        return 6
    elif ('alola' in name or name in CAP_PIKACHUS or name == STARTER_PIKACHU):
        return 7 # All alolan forms were introduced in Gen 7
    elif ('galar' in name or 'gmax' in name or 'hisui' in name):
        return 8 # All Galar, Gigantamax and Hisuian forms were introduced in Gen 8
    elif ('paldea' in name):
        return 9 # All Paldean forms were introduced in Gen 9
    else:
        return generation_number # The generation number does not change in any other scenario

def iterate_forms(varieties):
    form_names = []

    varieties_size = len(varieties)
    for i in range(0, varieties_size):
        form_names.append(varieties[i]["pokemon"]["name"])
    
    return form_names

def insert_pokemon_stats(cursor, stats, form_id, generation_number):

    base_stats = []
    for j in range(0, len(stats)):
        base_stats.append(stats[j]["base_stat"])

    hp = base_stats[0]
    attack = base_stats[1]
    defense = base_stats[2]
    special_attack = base_stats[3]
    special_defense = base_stats[4]
    speed = base_stats[5]

    table_name = "base_stats"
    attributes_tuple = "(base_hp, base_attack, base_defense, base_special_attack, " \
        "base_special_defense, base_speed, fk_generation, fk_form)"
    query_tuple = (hp, attack, defense, special_attack, special_defense, speed, generation_number, form_id)

    try:
        db.simple_insert(cursor, table_name, attributes_tuple, query_tuple)
    except Exception:
        logger.error("Error inserting Pokémon stats", exc_info=True)
        raise

def insert_pokemon(cursor, generation_number, pokemon_species_directory, pokemon_forms_directory, pokedex_directory, showdown_url):
    logger.info(f"Entering insert_pokemon. Gen {generation_number}")
    generation = utils.get_generation_data(generation_number)
    number_of_pokemon = len(generation["pokemon_species"]) 

    for i in range(0, number_of_pokemon):
        
        # Pokémon species data
        pokemon_species_name = generation["pokemon_species"][i]["name"]
        
        logger.debug(f"Inserting pokemon species: {pokemon_species_name}")
        species = utils.create_directory_and_return_data(pokemon_species_directory, pokemon_species_name)

        pokedex_number = species["id"] # The Pokédex index number is equivalent to the PokéAPI species id

        is_baby, is_legendary, is_mythical = species["is_baby"], species["is_legendary"], species["is_mythical"]
        evolves_from = None
        if (species.get("evolves_from_species", None) is not None):
            evolves_from = species["evolves_from_species"]["name"]

        table_name = "pokemon_species"
        attributes_tuple = "(fk_generation, name, pokedex_index, is_baby, is_legendary, is_mythical, evolves_from)"
        species_tuple = (generation_number, pokemon_species_name, pokedex_number, is_baby, is_legendary, is_mythical, evolves_from)
        try:
            pokemon_species_id_in_db = db.simple_insert(cursor, table_name, attributes_tuple, species_tuple)
        except Exception:
            logger.error(f"Error inserting Pokémon species {pokemon_species_name}", exc_info=True)
            raise

        varieties = species["varieties"]
        form_names = iterate_forms(varieties)

        # Pokémon forms data
        for i in range (0, len(form_names)):

            # Extracts this form's data
            current_form = utils.create_directory_and_return_data(pokemon_forms_directory, form_names[i])

            current_form_name = current_form["name"]
            is_default = current_form.get("is_default")
            if is_default is None:
                is_default = False
            
            if (current_form_name in DEFAULT_FORMS or 
                'minior' in current_form_name and 'meteor' in current_form_name or
                'mimikyu' in current_form_name and 'busted' not in current_form_name or
                'oricorio' in current_form_name):
                is_default = True
            
            if (current_form_name in SWITCHABLE_FORM or 
                'minior' in current_form_name or
                'mimikyu' in current_form_name and 'busted' in current_form_name or
                'mega' in current_form_name and current_form_name != 'yanmega' or
                'gmax' in current_form_name):
                switchable = True
            else:
                switchable = False

            height, weight = current_form["height"], current_form["weight"]
            legacy_cry, latest_cry = current_form["cries"]["legacy"], current_form["cries"]["latest"]
            artwork = current_form["sprites"]["other"]["official-artwork"]["front_default"]
            shiny_artwork = current_form["sprites"]["other"]["official-artwork"]["front_shiny"]

            aux_generation_number = adapt_generation_number(generation_number, current_form_name)

            # Inserts the Pokémon form 
            attributes_tuple = "(name, is_default, switchable, fk_pokemon_species, fk_generation, height, weight, " \
                "legacy_cry, latest_cry, artwork, shiny_artwork)"
            form_tuple = (current_form_name, is_default, switchable, pokemon_species_id_in_db, aux_generation_number, height, weight, 
                          legacy_cry, latest_cry, artwork, shiny_artwork)
            try:
                form_id = db.simple_insert(cursor, "form", attributes_tuple, form_tuple)
            except Exception:
                logger.error(f"Error inserting Pokémon form {current_form_name}", exc_info=True)
                raise
            
            # A Pokémon form may be introduced later than the base form
            aux_generation_number = adapt_generation_number(generation_number, current_form_name)
            insert_pokemon_stats(cursor, current_form["stats"], form_id, aux_generation_number)
            
            for i in range(0, len(current_form["types"])):
                type_name = current_form["types"][i]["type"]["name"]
                pk_type = db.get_pk_by_name(cursor, "type", type_name)

                is_primary = False
                if (current_form["types"][i]["slot"] == 1):
                    is_primary = True

                type_tuple = (form_id, pk_type, aux_generation_number, is_primary)
                table_name = "form_has_type_per_generation"
                attributes_tuple = "(fk_form, fk_type, fk_generation, is_primary)"
                try:
                    db.simple_insert(cursor, table_name, attributes_tuple, type_tuple)
                except Exception:
                    logger.error(f"Error inserting the type relationship between Pokémon {current_form_name} and Type {type_name}", exc_info=True)
            
            pokedex = utils.get_entire_pokedex(showdown_url, pokedex_directory, "pokedex.json")
            normalized_name = current_form_name.lower().replace("-", "")
            if "pikachu" in normalized_name and "cap" in normalized_name:
                normalized_name = normalized_name.removesuffix("cap")
            insert_genders(cursor, form_id, pokedex, normalized_name)

            past_abilities = current_form["past_abilities"]
            manage_abilities(cursor, current_form_name, current_form["abilities"], past_abilities, aux_generation_number)
    
    logger.info(f"Exiting insert_pokemon. Gen {generation_number}")