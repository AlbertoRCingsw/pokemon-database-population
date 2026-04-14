from data_population import utils
from logger_config import logger
import db

import requests
from bs4 import BeautifulSoup

IMPORTANT_FLAGS = ["protect", "mirror", "metronome", "contact", "snatch", 
                   "bullet", "distance", "slicing", "wind", "bypasssub", 
                   "sound", "dance", "nosleeptalk", "noassist", "pulse", 
                   "bite", "charge", "gravity", "punch", "defrost", "powder"]

BAD_POISON_MOVES = ["poison-fang", "malignant-chain", "toxic"]

def is_useful_flag(flag):
    return flag in IMPORTANT_FLAGS

def is_shadow_move(move, name):

    is_in_gen3 = move["generation"]["name"] == "generation-iii"
    name_contains_shadow = "shadow" in name
    is_not_common = name not in ["shadow-ball", "shadow-punch", "shadow-claw", "shadow-force", "shadow-sneak"]
    
    return is_in_gen3 and name_contains_shadow and is_not_common



def get_move_data(cursor, move, showdown_move, generation_number, is_generic_Z):
    logger.debug(f"Retrieving data from move {move.get('name')}")
    # stat changes and ailments -> PokéAPI

    query_values_list = [] # Constructs the query arguments

    # The type needs some processing
    fk_type = db.get_pk_by_name(cursor, "type", move["type"]["name"])
    query_values_list.append(fk_type)

    # The generation it was introduced in
    query_values_list.append(generation_number)

    query_values_list.append(move.get("name"))
    query_values_list.append(move.get("power") or 0)

    # If no accuracy, the field is 0 because if it were to be implemented in gameplay, 0 is an impossible accuracy value
    query_values_list.append(move.get("accuracy") or None)

    if not is_generic_Z:
        query_values_list.append(showdown_move.get("category").lower())
    else:
        query_values_list.append(move.get("damage_class").get("name"))

    query_values_list.append(move.get("pp"))
    query_values_list.append(move["target"]["name"])

    # crit_rate, min_hits, max_hits, min_turns, max_turns, 
    # drain, flinch_chance, healing, recoil
    # stat changes and ailments

    move_meta = move["meta"]

    if (move_meta is not None):
        crit_rate = move_meta.get("crit_rate") or 0
        
        max_hits, max_turns = move_meta.get("max_hits") or 1, move_meta.get("max_turns") or 1 
        min_hits, min_turns = move_meta.get("min_hits") or 1, move_meta.get("min_turns") or 1
        
        drain = move_meta.get("drain") or 0
        recoil = 0

        flinch_chance = move_meta.get("flinch_chance") or 0
        flinch_chance = flinch_chance / 100

        healing = move_meta.get("healing") or 0
        healing = healing / 100
        
        stat_chance = move_meta.get("stat_chance") or 0
        stat_chance = stat_chance / 100

        if (drain < 0):
            drain = 0
            recoil = abs(drain) / 100
        else:
            drain = drain / 100

    else:
        flinch_chance, drain, crit_rate, healing = 0, 0, 0, 0
        min_hits, max_hits, min_turns, max_turns = 0, 0, 0, 0
        recoil = 0  
    
    query_values_list.append(showdown_move["desc"])
    query_values_list.append(showdown_move["shortDesc"])
    query_values_list.append(move["priority"])

    query_values_list.append(crit_rate)
    query_values_list.append(drain)
    query_values_list.append(flinch_chance)

    query_values_list.append(max_hits)
    query_values_list.append(min_hits)
    query_values_list.append(max_turns)
    query_values_list.append(min_turns)

    query_values_list.append(healing)
    query_values_list.append(recoil)

    if is_generic_Z:
        query_values_list.append(True)
    else:
        query_values_list.append(False)

    return query_values_list

def check_if_none(cursor, move_details, key, fk_move):
    value = "none"

    if key == "type" and not (move_details.get("type") is None):
        value = db.get_pk_by_name(cursor, "type", move_details["type"]["name"])
    else:
        if not key in move_details or key in move_details and move_details[key] is None:
            if key == "pp":
                key = "power_points"
            if key == "type":
                key = "fk_type"
            try:
                query_result = db.simple_select(cursor, "move", key, "pk_move", fk_move)
                value = query_result[0]
            except Exception:
                logger.error("Error in SELECT in method check_if_none", exc_info=True)  
        else:
            value = move_details[key]

    return value

def insert_move_version(cursor, fk_move, move_details, gen_number):

    try:
        query_result = db.simple_select(cursor, "move", "name", "pk_move", fk_move)
        name = query_result[0]
    except Exception:
        logger.error(f"Error in SELECT: Move version for Move with id {fk_move}", exc_info=True)
        raise
    
    fk_type = check_if_none(cursor, move_details, "type", fk_move)
    power = check_if_none(cursor, move_details, "power", fk_move)
    accuracy = check_if_none(cursor, move_details, "accuracy", fk_move)
    power_points = check_if_none(cursor, move_details, "pp", fk_move)
    fk_generation = gen_number

    attributes_tuple = "(fk_move, name, fk_type, power, accuracy, power_points, fk_generation)"
    query_tuple = (fk_move, name, fk_type, power, accuracy, power_points, fk_generation) 
    try:
        db.simple_insert(cursor, "move_version", attributes_tuple, query_tuple)   
    except Exception:
        logger.error(f"Error inserting a version for Move with id {fk_move}", exc_info=True)
        raise
    
    try:
        next_version_group = move_details["version_group"]["name"]
        next_gen = db.simple_select(cursor, "version_group", "fk_generation", "name", next_version_group)[0]
    except Exception:
        logger.error(f"Error in SELECT of the next version group: {next_version_group}", exc_info=True)
        raise

    return next_gen

def move_versioning(cursor, fk_move, past_values, first_gen):

    generation_value = first_gen
    for i in range(0, len(past_values)):
        move_version_details = {}

        past_values_dict = past_values[i]

        for key, value in past_values_dict.items():
            if value is not None:
                move_version_details[key] = value
        
        if (move_version_details):
            generation_value = insert_move_version(cursor, fk_move, move_version_details, generation_value)

    try:
        select_string = "pk_move, name, fk_type, power, accuracy, power_points"
        almost_query_tuple = db.simple_select(cursor, "move", select_string, "pk_move", fk_move)
    except Exception:
        logger.error(f"Error in SELECT: For a Move version for Move with id {fk_move}", exc_info=True) 

    attributes_tuple = "(fk_move, name, fk_type, power, accuracy, power_points, fk_generation)"
    query_tuple = almost_query_tuple + (generation_value,)
    try:
        db.simple_insert(cursor, "move_version", attributes_tuple, query_tuple)
    except Exception:
        logger.error(f"Error inserting a Move version for Move {almost_query_tuple[1]}", exc_info=True)

def process_showdown_move(name):
    showdown_key = name
    if "-" in name:

        if name == "vice-grip":
            showdown_key = "visegrip"
        else:
            showdown_key = name.lower().replace("-", "")

    return showdown_key

def get_effect_id(cursor, name, chance, value):
    where_fields = ("me.effect", "me.effect_chance", "me.value")
    if chance == 0:
        chance = 100
    where_values = (name, chance, value)
    result = db.simple_select(cursor, "move_effect me", "pk_move_effect", where_fields, where_values)
    
    if (result is None):
        table_name = "move_effect"
        attributes_tuple = "(effect, effect_chance, value)"
        result = db.simple_insert(cursor, table_name, attributes_tuple, where_values)
    else:
        result = result[0]
    return result

def deal_with_ailment_exceptions(cursor, fk_move, ailments, chance):
    for i in range(0, len(ailments)):
        effect_id = get_effect_id(cursor, ailments[i], chance, 1)
        db.simple_insert(cursor, "move_has_move_effect", "(fk_move, fk_move_effect)", (fk_move, effect_id))

def move_stat_changes(cursor, fk_move, move):
    stat_changes = move["stat_changes"]
    for i in range(0, len(stat_changes)):
        
        if (move.get("meta") is None):
            effect_id = get_effect_id(cursor, stat_changes[i]["stat"]["name"], 100, stat_changes[i]["change"])
        else:
            effect_id = get_effect_id(cursor, stat_changes[i]["stat"]["name"], move["meta"]["stat_chance"], stat_changes[i]["change"])

        db.simple_insert(cursor, "move_has_move_effect", "(fk_move, fk_move_effect)", (fk_move, effect_id))

def move_ailment(cursor, fk_move, move):
    ailment = move["meta"]["ailment"]["name"]
    ailment_chance = move["meta"]["ailment_chance"]

    if ailment_chance == 0: 
        ailment_chance = 100 # Moves like Swagger confuse its target 100% of the time, if they land
    
    move_stat_changes(cursor, fk_move, move)

    value = 1
    if (move["name"] in BAD_POISON_MOVES):
        value = 2

    if (move["name"] == "tri-attack"):
        tri_attack_ailments = ["burn", "paralysis", "freeze"]
        deal_with_ailment_exceptions(cursor, fk_move, tri_attack_ailments, 20)
    else:
        effect_id = get_effect_id(cursor, ailment, ailment_chance, value)
        db.simple_insert(cursor, "move_has_move_effect", "(fk_move, fk_move_effect)", (fk_move, effect_id))

def get_flag_id(cursor, flag_name):
    result = db.get_pk_by_name(cursor, "flag", flag_name)

    if (result is None):
        result = db.simple_insert(cursor, "flag", "(name)", (flag_name,))
    return result

def insert_flag(cursor, fk_move, flag):
    fk_flag = get_flag_id(cursor, flag)
    try:
        db.simple_insert(cursor, "move_has_flag", "(fk_move, fk_flag)", (fk_move, fk_flag,))
    except Exception:
        logger.error(f"Error inserting Flag {flag} for Move with id {fk_move}", exc_info=True)

def insert_flags(cursor, fk_move, showdown_move, flags):
    for key in flags:
        if is_useful_flag(key):
            insert_flag(cursor, fk_move, key)
    
    willCrit = showdown_move.get("willCrit")
    if willCrit:
        insert_flag(cursor, fk_move, "willCrit")

    ohko = showdown_move.get("ohko")
    if ohko:
        insert_flag(cursor, fk_move, "ohko")

def insert_status_z_move(cursor, table_name, z_move_json):
    z_name = "z-" + z_move_json["move_name"] 
    logger.debug(f"Inserting status Z Move {z_name}")

    select_output_string = "fk_type, fk_generation, name, power, accuracy, power_points, category, target, priority, crit_rate, drain, flinch_chance, max_hits, min_hits, max_turns, min_turns, healing, recoil"
    try:
        result = db.simple_select(cursor, table_name, select_output_string, "pk_move", z_move_json["move_id"])
    except Exception:
        logger.error(f"Error in SELECT: Z Move = {z_name}", exc_info=True)
        raise

    try:
        new_z_move_id = db.simple_insert(cursor, table_name, "(" + select_output_string + ")", result)
    except Exception:
        logger.error(f"Error in INSERT: Z Move = {z_name}", exc_info=True)
        raise
    
    update_set_fields = ("fk_generation", "name", "description", "short_description", "power_points", "isZ")
    update_set_values = (7, z_name, z_move_json["description"], z_move_json["short_description"], 1, True)
    try:
        db.simple_update(cursor, table_name, update_set_fields, update_set_values, ("pk_move",), (new_z_move_id,))
    except Exception:
        logger.error(f"Error in UPDATE: Z Move = {z_name}", exc_info=True)
        raise

def insert_status_z_moves(cursor, url, table):
    try:
        page = requests.get(url, timeout=3)
        page.raise_for_status()
    except (requests.exceptions.Timeout,
            requests.exceptions.ConnectTimeout,
            requests.exceptions.ConnectionError,
            requests.exceptions.RequestException):
        logger.warning("The request failed, status Z-Moves could not be added because the server is unavailable")
        logger.warning(f"Network error", exc_info=True)
        return
    
    soup = BeautifulSoup(page.text, "html.parser")
    giant_table = soup.find("div", class_="mw-parser-output").find_all("table", class_="sortable roundy")
    status_z_moves_table = giant_table[len(giant_table) - 1]

    rows_data = status_z_moves_table.find_all("tr")

    for i in range (2, len(rows_data)):
        row_data = rows_data[i].find_all("td")
        individual_row_data = [data.text.strip() for data in row_data]

        j = 0
        move_json = {}
        for datum in individual_row_data:
            j += 1

            if j == 1:
                move_json["move_name"] = utils.normalize_name(datum)
                move_json["move_id"] = db.get_pk_by_name(cursor, table, move_json["move_name"])
            elif j == 2:
                move_json["type_id"] = db.get_pk_by_name(cursor, table, utils.normalize_name(datum))
            elif j == 3:
                move_json["short_description"] = datum
            elif j == 4:
                move_json["description"] = datum
        insert_status_z_move(cursor, table, move_json)

def insert_moves(cursor, generation_number, showdown_json_url, z_moves_url, moves_directory):
    logger.info(f"Entering insert_moves. Gen {generation_number}")
    showdown_json = utils.process_url(showdown_json_url, "moves", "showdown moves")

    generation = utils.get_generation_data(generation_number)
    generation_moves = generation["moves"]

    for i in range(0, len(generation_moves)):
        move_name = generation_moves[i]["name"]
        move = utils.create_directory_and_return_data(moves_directory, move_name)
        is_generic_z = False

        if  is_shadow_move(move, move_name):
            logger.info("shadow move, skip for now")
        else:
            
            if move_name.endswith("--special"):
                move["name"] = move_name.removesuffix("--special")
                move_name = move_name.removesuffix("--special")
                is_generic_z = True
            elif move_name.endswith("--physical"):
                move["name"] = move_name.removesuffix("--physical")
                move_name = move_name.removesuffix("--physical")
                is_generic_z = True

            showdown_key = process_showdown_move(move_name)
            showdown_move = showdown_json[showdown_key]

            data = get_move_data(cursor, move, showdown_move, generation_number, is_generic_z)
            attributes_tuple = "(fk_type, fk_generation, name, power, accuracy, category, power_points, target, description" \
                        ", short_description, priority, crit_rate, drain, flinch_chance, max_hits, min_hits, " \
                        "max_turns, min_turns, healing, recoil, isZ)"
            try:
                logger.debug(f"Inserting Move with name {move_name}")
                pk_move = db.simple_insert(cursor, "move", attributes_tuple, tuple(data))
            except Exception:
                logger.error(f"Error inserting a Move: {move_name}", exc_info=True)
            
            move_past_values = move.get("past_values", None)

            if move["past_values"] is not None:
                move_versioning(cursor, pk_move, move_past_values, generation_number)
            
            if move["stat_changes"] is not None and move["stat_changes"]:
                move_stat_changes(cursor, pk_move, move)
            
            if (move["meta"] and move["meta"] is not None and move["meta"]["ailment"]["name"].lower() != "none"):
                move_ailment(cursor, pk_move, move)
            elif move["name"] == "dire-claw":
                dire_claw_ailments = ["poison", "paralysis", "sleep"]
                deal_with_ailment_exceptions(cursor, pk_move, dire_claw_ailments, 50)
            
            insert_flags(cursor, pk_move, showdown_move, showdown_move["flags"])   
    
    if generation_number == 7:
        insert_status_z_moves(cursor, z_moves_url, "move")
    
    logger.info(f"Exiting insert_moves. Gen {generation_number}")