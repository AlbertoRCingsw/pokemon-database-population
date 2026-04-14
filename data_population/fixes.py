from data_population import utils
from logger_config import logger
import db

import re

STARTER_PIKACHU_MOVES = ["pika-papow", "splishy-splash", "zippy-zap", "floaty-fall"]
STARTER_EEVEE_MOVES = ["veevee-volley", "bouncy-bubble", "buzzy-buzz", "sizzly-slide", "baddy-bad", "glitzy-glow", "sappy-seed", "freezy-frost", "sparkly-swirl"]

EXCLUSIVE_Z_MOVES_LEARNED_BY = {
    "catastropika": ("pikachu", "volt-tackle", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-original-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-hoenn-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-sinnoh-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-unova-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-kalos-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-alola-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-partner-cap", "thunderbolt", "sun-moon"),
    "10-000-000-volt-thunderbolt": ("pikachu-world-cap", "thunderbolt", "sun-moon"),
    "stoked-sparksurfer": ("raichu-alola", "thunderbolt", "sun-moon"),
    "extreme-evoboost": ("eevee", "last-resort", "sun-moon"),
    "pulverizing-pancake": ("snorlax", "giga-impact", "sun-moon"),
    "genesis-supernova": ("mew", "psychic", "sun-moon"),
    "sinister-arrow-raid": ("decidueye", "spirit-shackle", "sun-moon"),
    "malicious-moonsault": ("incineroar", "darkest-lariat", "sun-moon"),
    "oceanic-operetta": ("primarina", "sparkling-aria", "sun-moon"),
    "splintered-stormshards": ("lycanroc-midday", "stone-edge", "ultra-sun-ultra-moon"),
    "splintered-stormshards": ("lycanroc-midnight", "stone-edge", "ultra-sun-ultra-moon"),
    "splintered-stormshards": ("lycanroc-dusk", "stone-edge", "ultra-sun-ultra-moon"),
    "lets-snuggle-forever": ("mimikyu-disguised", "play-rough", "ultra-sun-ultra-moon"),
    "lets-snuggle-forever": ("mimikyu-busted", "play-rough", "ultra-sun-ultra-moon"),
    "clangorous-soulblaze": ("kommo-o", "clanging-scales", "ultra-sun-ultra-moon"),
    "guardian-of-alola": ("tapu-bulu", "natures-madness", "sun-moon"),
    "guardian-of-alola": ("tapu-lele", "natures-madness", "sun-moon"),
    "guardian-of-alola": ("tapu-koko", "natures-madness", "sun-moon"),
    "guardian-of-alola": ("tapu-fini", "natures-madness", "sun-moon"),
    "searing-sunraze-smash": ("necrozma-dusk", "sunsteel-strike", "ultra-sun-ultra-moon"),
    "menacing-moonraze-maelstrom": ("necrozma-dawn", "moongeist-beam", "ultra-sun-ultra-moon"),
    "light-that-burns-the-sky": ("necrozma-ultra", "photon-geyser", "ultra-sun-ultra-moon"),
    "soul-stealing-7-star-strike": ("marshadow", "spectral-thief", "sun-moon")
}

def update_form(cursor, name):
    db.simple_update(cursor, "form f", ("f.is_default",), (True,), ("f.name",), (name,))

def fix_data(cursor):
    logger.info("Entering the fix_data method")

    # Blizzard's power in gen I
    db.simple_update(cursor, "move_version", ("power",), (120,), ("name", "fk_generation"), ("blizzard", 1))

    # Recover had 10 PP in Gen IV, not 5. It has 5 PP in Gen IX
    db.simple_update(cursor, "move_version", ("fk_generation",), (9,), ("name", "fk_generation"), ("recover", 4))
    
    fk_move = db.get_pk_by_name(cursor, "move", "recover")
    fk_type = db.get_pk_by_name(cursor, "type", "normal")
    attributes_tuple = "(fk_move, name, fk_type, power, accuracy, power_points, fk_generation)"
    values_tuple = (fk_move, "recover", fk_type, 0, 0, 10, 4)
    db.simple_insert(cursor, "move_version", attributes_tuple, values_tuple)
    
    # Toxic's number of turns
    db.simple_update(cursor, "move m", ("m.min_turns", "m.max_turns"), (1, 1), ("m.name",), ("toxic",))
    
    # Foresight's accuracy went from 100 to undefined in Generation IV
    foresight_move_version = db.simple_select(cursor, "move_version", "*", "name", "foresight")
    pk_foresight = foresight_move_version[0]
    db.simple_update(cursor, "move_version", ('accuracy',), (100,), ("pk_move_version",), (pk_foresight,))

    foresight_fields = "(fk_move, name, fk_type, power, accuracy, power_points, fk_generation)"
    foresight_values = foresight_move_version[1:]
    current_foresight_id = db.simple_insert(cursor, "move_version", foresight_fields, foresight_values)
    db.simple_update(cursor, "move_version", ("fk_generation",), (4,), ("pk_move_version",), (current_foresight_id,))

    # Foresight's, Odor Sleuth's and Miracle Eye's effects are inaccurate
    no_dark_immunities_id = db.simple_insert(cursor, "move_effect", "(effect, effect_chance, value)", ("no-dark-immunities", 100, 1))
    miracle_eye_id = db.get_pk_by_name(cursor, "move", "miracle-eye")
    db.simple_delete(cursor, "move_has_move_effect", "fk_move", miracle_eye_id)
    db.simple_insert(cursor, "move_has_move_effect", "(fk_move, fk_move_effect)", (miracle_eye_id, no_dark_immunities_id))

    db.simple_update(cursor, "move_effect", ("effect",), ("no-ghost-immunities",), "effect", "no-type-immunity")

    # Smack Down, Thousand Arrows and Telekinesis have a similar problem
    ground_immunity_id= db.simple_insert(cursor, "move_effect", "(effect, effect_chance, value)", ("ground-immunity", 100, 1))
    telekinesis_id = db.get_pk_by_name(cursor, "move", "telekinesis")
    db.simple_delete(cursor, "move_has_move_effect", "fk_move", telekinesis_id)
    db.simple_insert(cursor, "move_has_move_effect", "(fk_move, fk_move_effect)", (telekinesis_id, ground_immunity_id))

    db.simple_update(cursor, "move_effect", ("effect",), ("ground-vulnerable",), "effect", "unknown")

    # Z Curse has two effects but they ar enot separated by either a "." or a new line character
    z_curse_id = db.get_pk_by_name(cursor, "move", "z-curse")
    result = db.simple_select(cursor, "move", "description", "pk_move", z_curse_id)
    description = result[0]
    strings = re.split(r'(?<=\))(?=[A-Z])', description)

    new_description = strings[0] + ".\n" + strings[1]

    db.simple_update(cursor, "move", ("description",), (new_description,), "name", "z-curse")


    
    # There are Pokémmon that can change forms and a form is considered
    # the or, more appropriately, a default form if the Pokémon can 
    # start a battle in that form

    update_form(cursor, "deoxys-attack")
    update_form(cursor, "deoxys-defense")
    update_form(cursor, "deoxys-speed")
    
    update_form(cursor, "rotom-heat")
    update_form(cursor, "rotom-wash")
    update_form(cursor, "rotom-frost")
    update_form(cursor, "rotom-fan")
    update_form(cursor, "rotom-mow")

    update_form(cursor, "hoopa-unbound")

    update_form(cursor, "zygarde-10")
    db.simple_update(cursor, "form f", ("f.name",), ("zygarde-10%",), ("f.name",), ("zygarde-10",))

    update_form(cursor, "darmanitan-galar-standard")
    db.simple_update(cursor, "form f", ("f.name",), ("darmanitan-galar",), ("f.name",), ("darmanitan-galar-standard",))


    # Starter Pikachu and Eevee from Let's Go Pikachu and Let's Go Eevee 
    fk_form_pikachu = db.get_pk_by_name(cursor, "form", "pikachu-starter")
    fk_form_eevee = db.get_pk_by_name(cursor, "form", "eevee-starter")
    fk_version_group = db.get_pk_by_name(cursor, "version_group", "lets-go-pikachu-lets-go-eevee")
    method = "tutor"
    level = 0
    table_name = "form_learned_moves"
    attributes_tuple = "(fk_form, fk_version_group, method, level, fk_move)"
    
    for special_move in STARTER_PIKACHU_MOVES:
        fk_move = db.get_pk_by_name(cursor, "move", special_move)
        if special_move == "pika-papow":
            values_tuple = (fk_form_pikachu, fk_version_group, "partner-power", level, fk_move)
        else:
            values_tuple = (fk_form_pikachu, fk_version_group, method, level, fk_move)
        db.simple_insert(cursor, table_name, attributes_tuple, values_tuple)
    
    for special_move in STARTER_EEVEE_MOVES:
        fk_move = db.get_pk_by_name(cursor, "move", special_move)
        if special_move == "veevee-volley":
            values_tuple = (fk_form_eevee, fk_version_group, "partner-power", 0, fk_move)
        else:
            values_tuple = (fk_form_eevee, fk_version_group, method, level, fk_move)
        db.simple_insert(cursor, table_name, attributes_tuple, values_tuple)
    
    for key, value in EXCLUSIVE_Z_MOVES_LEARNED_BY.items():
        logger.info(f"Pokemon: {value[0]} - Games: {value[2]} - Z-Move: {key} - Original Move: {value[1]}")

        form_id = db.get_pk_by_name(cursor, "form", value[0])
        move_id = db.get_pk_by_name(cursor, "move", key)
        version_group_id = db.get_pk_by_name(cursor, "version_group", value[2])

        attributes_tuple = "(fk_form, fk_version_group, method, level, fk_move)"
        values_tuple = (form_id, version_group_id, "z", 1, move_id)
        db.simple_insert(cursor, "form_learned_moves", attributes_tuple, values_tuple)

        original_move_id = db.get_pk_by_name(cursor, "move", value[1])
        db.simple_update(cursor, "move", ("isZ", "fk_move"), (True, original_move_id), ("pk_move",), (move_id,))
    
    logger.info("Exiting the fix_data method")