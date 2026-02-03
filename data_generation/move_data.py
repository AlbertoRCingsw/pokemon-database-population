from data_generation import utils
from pathlib import Path
import requests

flags = ["protect", "mirror", "metronome", "contact", "snatch", "bullet", "distance", "slicing", "wind", "bypasssub", "sound", "dance", "nosleeptalk", "noassist", "pulse", "bite", "charge", "gravity", "punch", "defrost", "powder"]
other_flags = ["isNonstandard", "isZ", "ohko", "willCrit"]

def process_showdown_url(url):
    response = requests.get(url)
        
    if response.status_code != 200:
        raise Exception(f"Could not get the resource")
    data = response.json()
    
    return data

def append_to_query_list(value, query_list):
    query_list.append(value)

def get_move_data(cur, move, showdown_move, generation_number):

    # stat changes and ailments -> PokéAPI

    query_values_list = [] # Constructs the arguments of the query

    # The type needs some processing
    fk_type = utils.get_type_pk_by_name(cur, move["type"]["name"])
    append_to_query_list(fk_type, query_values_list)

    # The generation it was introduced in
    append_to_query_list(generation_number, query_values_list)

    append_to_query_list(move.get("name"), query_values_list)
    append_to_query_list(move.get("power") or 0, query_values_list)

    # If no accuracy, the field is 0 because if it were to be implemented in gameplay, 0 is an impossible accuracy value
    append_to_query_list(move.get("accuracy") or 0, query_values_list)
    append_to_query_list(showdown_move["category"], query_values_list)
    append_to_query_list(move["pp"], query_values_list)

    append_to_query_list(move["target"]["name"], query_values_list)

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
    
    append_to_query_list(showdown_move["desc"], query_values_list)
    append_to_query_list(showdown_move["shortDesc"], query_values_list)
    append_to_query_list(move["priority"], query_values_list)
    query_values_list.append(crit_rate)
    query_values_list.append(drain)
    query_values_list.append(flinch_chance)

    query_values_list.append(max_hits)
    query_values_list.append(min_hits)
    query_values_list.append(max_turns)
    query_values_list.append(min_turns)

    query_values_list.append(healing)
    query_values_list.append(recoil)

    return query_values_list

def insert_move(cur, data):
    insert_string = "INSERT INTO pokemon.move (" \
                "fk_type, " \
                "fk_generation, " \
                "name, " \
                "power, " \
                "accuracy, " \
                "category, " \
                "power_points, " \
                "target, " \
                "description," \
                "short_description, " \
                "priority, " \
                "crit_rate, " \
                "drain, " \
                "flinch_chance, " \
                "max_hits, " \
                "min_hits, " \
                "max_turns, " \
                "min_turns, " \
                "healing, " \
                "recoil)\nVALUES "
    
    insert_string += "(" + ", ".join(["%s"]*len(data)) + ")"
    
    data_tuple = tuple(data)

    cur.execute(insert_string, data_tuple)
    
    return cur.lastrowid

def get_type_id(type_name, cur):
    if type_name == "unknown":
        type_name = "???"
    cur.execute("SELECT pk_type FROM pokemon.type WHERE name = %s", (type_name,))
    result = cur.fetchone()
    return result[0]

def check_if_none(cur, move_details, key, fk_move):
    value = "none"

    if key == "type" and not (move_details.get("type") is None):
        value = get_type_id(move_details["type"]["name"], cur)
    else:
        if not key in move_details or key in move_details and move_details[key] is None:
            if key == "pp":
                key = "power_points"
            if key == "type":
                key = "fk_type"

            cur.execute(f"SELECT {key} FROM move WHERE pk_move = %s", (fk_move,))
            value = cur.fetchone()[0]  
        else:
            value = move_details[key]

    return value

def get_gen_by_games(cur, version_group):
    cur.execute("SELECT fk_generation FROM pokemon.version_group vg WHERE vg.name = %s", (version_group,))
    next_gen = cur.fetchone()[0] 
    return next_gen

def add_move_version(cur, query_tuple):
    cur.execute("INSERT INTO pokemon.move_version (fk_move, name, fk_type, power, accuracy, power_points, fk_generation) " \
    "VALUES (%s, %s, %s, %s, %s, %s, %s)", query_tuple)

def insert_move_version(cur, fk_move, move_details, gen_number):

    cur.execute("SELECT name FROM move WHERE pk_move = %s", (fk_move,))
    name = cur.fetchone()[0]
    
    fk_type = check_if_none(cur, move_details, "type", fk_move)
    power = check_if_none(cur, move_details, "power", fk_move)
    accuracy = check_if_none(cur, move_details, "accuracy", fk_move)
    power_points = check_if_none(cur, move_details, "pp", fk_move)
    fk_generation = gen_number

    query_tuple = (fk_move, name, fk_type, power, accuracy, power_points, fk_generation)    
    add_move_version(cur, query_tuple)

    next_version_group = move_details["version_group"]["name"]
    next_gen = get_gen_by_games(cur, next_version_group)
    return next_gen

def move_versioning(cur, fk_move, past_values, first_gen):

    generation_value = first_gen
    for i in range(0, len(past_values)):
        move_version_details = {}

        past_values_dict = past_values[i]

        for key, value in past_values_dict.items():
            if value is not None:
                move_version_details[key] = value
        
        if (move_version_details):
            generation_value = insert_move_version(cur, fk_move, move_version_details, generation_value)
    
    cur.execute("SELECT pk_move, name, fk_type, power, accuracy, power_points FROM move WHERE pk_move = %s", (fk_move,)) 
    almost_query_tuple = cur.fetchone()

    query_tuple = almost_query_tuple + (generation_value,)
    add_move_version(cur, query_tuple)

def is_shadow_move(move, name):

    is_in_gen3 = move["generation"]["name"] == "generation-iii"
    name_contains_shadow = "shadow" in name
    is_not_common = name not in ["shadow-ball", "shadow-punch", "shadow-claw", "shadow-force", "shadow-sneak"]
    
    return is_in_gen3 and name_contains_shadow and is_not_common

def is_z_move(name):
    return name.endswith("--special") or name.endswith("--physical") or name == "catastropika"

def process_showdown_move(name):
    showdown_key = name
    if "-" in name:

        if name == "vice-grip":
            showdown_key = "visegrip"
        else:
            showdown_key = name.lower().replace("-", "")

    return showdown_key

def get_effect_id(cur, name, chance, value):
    tuple = (name, chance, value)
    cur.execute("SELECT pk_move_effect " \
                "FROM pokemon.move_effect me " \
                "WHERE me.effect = %s AND me.effect_chance = %s AND me.value = %s", tuple)
    result = cur.fetchone()
    if (result is None):
        cur.execute("INSERT INTO pokemon.move_effect (effect, effect_chance, value) " \
                    "VALUES (%s, %s, %s)", tuple)
        result = cur.lastrowid
    else:
        result = result[0]
    return result

def move_stat_changes(cur, fk_move, move):

    stat_changes = move["stat_changes"]
    for i in range(0, len(stat_changes)):
        effect_id = get_effect_id(cur, stat_changes[i]["stat"]["name"], move["meta"]["stat_chance"], stat_changes[i]["change"])

        cur.execute("INSERT INTO pokemon.move_has_move_effect (fk_move, fk_move_effect) " \
                    "VALUES (%s, %s)", (fk_move, effect_id))

def is_bad_poison(name):

    result = False
    bad_poison_moves = ["poison-fang", "malignant-chain", "toxic"]
    if name in bad_poison_moves:
        result = True
    
    return result

def insert_ailment(cur, fk_move, fk_effect):
    cur.execute("INSERT INTO move_has_move_effect (fk_move, fk_move_effect)" \
                "VALUES (%s, %s)", (fk_move, fk_effect))

def deal_with_ailment_exceptions(cur, fk_move, ailments, chance):

    for i in range(0, len(ailments)):
        effect_id = get_effect_id(cur, ailments[i], chance, 1)
        insert_ailment(cur, fk_move, effect_id)

def move_ailment(cur, fk_move, move):
    ailment = move["meta"]["ailment"]["name"]
    ailment_chance = move["meta"]["ailment_chance"]
    
    move_stat_changes(cur, fk_move, move)

    value = 1
    if is_bad_poison(move["name"]):
        value = 2

    if (move["name"] == "tri-attack"):
        tri_attack_ailments = ["burn", "paralysis", "freeze"]
        deal_with_ailment_exceptions(cur, fk_move, tri_attack_ailments, 20)
    else:
        effect_id = get_effect_id(cur, ailment, ailment_chance, value)
        insert_ailment(cur, fk_move, effect_id)

def is_useful_flag(flag):

    important_flags =["protect", "mirror", "metronome", "contact", "snatch",
    "bullet", "distance", "slicing", "wind", "bypasssub",
    "sound", "dance", "nosleeptalk", "noassist", "pulse",
    "bite", "charge", "gravity", "punch", "defrost", "powder"]

    return flag in important_flags

def get_flag_id(cur, flag_name):

    cur.execute("SELECT f.pk_flag FROM pokemon.flag f WHERE f.name = %s", (flag_name,))
    result = cur.fetchone()

    if (result is None):
        cur.execute("INSERT INTO pokemon.flag (name) VALUES (%s)", (flag_name,))
        result = cur.lastrowid
    else:
        result = result[0]
    return result

def insert_flag(cur, fk_move, flag):
    fk_flag = get_flag_id(cur, flag)
    
    cur.execute("INSERT INTO pokemon.move_has_flag (fk_move, fk_flag) " \
                "VALUES (%s, %s)", (fk_move, fk_flag))

def insert_flags(cur, fk_move, showdown_move, flags):
    for key in flags:
        if is_useful_flag(key):
            insert_flag(cur, fk_move, key)
    
    willCrit = showdown_move.get("willCrit")
    if willCrit:
        insert_flag(cur, fk_move, "willCrit")

    ohko = showdown_move.get("ohko")
    if ohko:
        insert_flag(cur, fk_move, "ohko")

def insert_moves(cur, generation_number, showdown_json_url):

    showdown_json = process_showdown_url(showdown_json_url)

    generation = utils.get_generation_data(generation_number)
    generation_moves = generation["moves"]

    moves_directory = Path("./moves")
    move_entity = str(moves_directory)[:-1]

    for i in range(0, len(generation_moves)):
        move_name = generation_moves[i]["name"]
        move = utils.create_directory_and_return_data(moves_directory, move_entity, move_name)

        if  is_shadow_move(move, move_name) or is_z_move(move_name):
            print("shadow move or z move, skip for now")
        else:

            showdown_key = process_showdown_move(move_name)
            showdown_move = showdown_json[showdown_key]

            data = get_move_data(cur, move, showdown_move, generation_number)
            pk_move = insert_move(cur, data)

            print(f"Inserted {move_name}, with id {pk_move}")
            
            move_past_values = move.get("past_values", None)

            if move["past_values"] is not None:
                move_versioning(cur, pk_move, move_past_values, generation_number)
            
            if move["stat_changes"] is not None and move["stat_changes"]:
                move_stat_changes(cur, pk_move, move)
            
            if (move["meta"] is not None and move["meta"] and move["meta"]["ailment"]["name"].lower() != "none"):
                move_ailment(cur, pk_move, move)
            elif move["name"] == "dire-claw":
                dire_claw_ailments = ["poison", "paralysis", "sleep"]
                deal_with_ailment_exceptions(cur, pk_move, dire_claw_ailments, 50)
            
            insert_flags(cur, pk_move, showdown_move, showdown_move["flags"])

                