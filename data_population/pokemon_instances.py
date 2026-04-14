from data_population import utils
from logger_config import logger
import db

from typing import Any
JSON = dict[str, Any] | list[Any] | str | int | float | bool | None
from mysql.connector.cursor import MySQLCursor

import random
import re

MEW = '''Mew @ Mental Herb  
Ability: Synchronize  
EVs: 252 HP / 4 Def / 252 Spe  
Jolly Nature  
- Thunder Wave  
- Stealth Rock  
- Explosion  
- Taunt  
'''

GARCHOMP = '''Ragnarok (Garchomp) (M) @ Yache Berry  
Ability: Rough Skin  
EVs: 252 Atk / 4 Def / 252 Spe  
Jolly Nature  
- Earthquake  
- Dragon Claw  
- Swords Dance  
- Fire Fang'''

FERROTHORN = '''Ferrothorn @ Lum Berry
Ability: Iron Barbs
EVs: 252 HP / 252 Atk / 4 SpD
IVs: 0 Spe
Brave Nature
- Stealth Rock
- Power Whip
- Gyro Ball
- Spikes
'''

KLEFKI = '''Klefki @ Choice Band
Ability: Pixilate
Happiness: 0
EVs: 248 HP / 252 Atk / 8 SpD
Adamant Nature
- Frustration
- Foul Play
- Switcheroo
- Facade
'''

CHANSEY_GEN_1 = '''Chansey (F)  
Ability: No Ability  
- Ice Beam  
- Thunderbolt  
- Thunder Wave  
- Soft-Boiled  
'''

STAT_NAMES = {
    'hp': 'hp',
    'atk': 'attack',
    'def': 'defense',
    'spa': 'special_attack',
    'spd': 'special_defense',
    'spe': 'speed',
    'spc': 'special'
}

GENDERS = {
    'm': 'male',
    'f': 'female'
}

POKEMON_DICTIONARY_1 = {
    'nickname': None,
    'form_id': None,
    'team_id': None,
    'gender_id': None,
    'item_id': None,
    'ability_id': None,
    'happiness': 255,
    'level': 100,
    'evs': {
        'hp': 65535,
        'attack': 65535,
        'defense': 65535,
        'special_attack': None,
        'special_defense': None,
        'speed': 65535,
        'special': 65535
    },
    'ivs': {
        'hp': 15,
        'attack': 15,
        'defense': 15,
        'special_attack': None,
        'special_defense': None,
        'speed': 15,
        'special': 15
    },
    'nature_id': None,
    'tera-type_id': None,
    'moves_ids': {
        'move1_id': None,
        'move2_id': None,
        'move3_id': None,
        'move4_id': None
    }
}

POKEMON_DICTIONARY_2 = {
    'nickname': None,
    'form_id': None,
    'team_id': None,
    'gender_id': None,
    'item_id': None,
    'ability_id': None,
    'happiness': 255,
    'level': 100,
    'evs': {
        'hp': 65535,
        'attack': 65535,
        'defense': 65535,
        'special_attack': 65535,
        'special_defense': 65535,
        'speed': 65535,
        'special': None
    },
    'ivs': {
        'hp': 15,
        'attack': 15,
        'defense': 15,
        'special_attack': 15,
        'special_defense': 15,
        'speed': 15,
        'special': None
    },
    'nature_id': None,
    'tera-type_id': None,
    'moves_ids': {
        'move1_id': None,
        'move2_id': None,
        'move3_id': None,
        'move4_id': None
    }
}

POKEMON_DICTIONARY_3 = {
    'nickname': None,
    'form_id': None,
    'tera_type_id': None,
    'team_id': None,
    'gender_id': None,
    'item_id': None,
    'ability_id': None,
    'happiness': 255,
    'level': 100,
    'evs': {
        'hp': 252,
        'attack': 252,
        'defense': 252,
        'special_attack': 252,
        'special_defense': 252,
        'speed': 252,
        'special': None
    },
    'ivs': {
        'hp': 31,
        'attack': 31,
        'defense': 31,
        'special_attack': 31,
        'special_defense': 31,
        'speed': 31,
        'special': None
    },
    'nature_id': None,
    'tera-type_id': None,
    'moves_ids': {
        'move1_id': None,
        'move2_id': None,
        'move3_id': None,
        'move4_id': None
    }
}

def get_form_id_from_name(cursor: MySQLCursor, name: str) -> (int | None):
    '''
    Processes and returns the id corresponding to a specific Pokémon form using its name.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        name (str): That specific form's name.
    Returns:
        form_id (int): The Pokémon's form id.
    '''

    form_id = None
    pokemon_name = utils.normalize_name(name)

    form_id_result = db.simple_select(cursor, "form", "pk_form", "name", pokemon_name)
    
    if (form_id_result is None):
        species_id_result = db.simple_select(cursor, "pokemon_species", "pk_pokemon_species", "name", pokemon_name)
        if (species_id_result is None):
            return None
        else:
            pokemon_species_id = species_id_result[0]
            where_fields = ("fk_pokemon_species", "is_default")
            where_values = (pokemon_species_id, True)
            second_form_id_result = db.simple_select(cursor, "form", "pk_form", where_fields, where_values)
            if second_form_id_result is not None:
                form_id = second_form_id_result[0]
    else:
        form_id = form_id_result[0]
    
    return form_id


def parse_name_part(cursor: MySQLCursor, name_part: str, pokemon_dictionary):
    '''
    Parses the first line. Specifically, the first part, which is left from the @ symbol if it exists.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        name_part (str): The string up to the @ symbol in the first line.
        pokemon_dictionary (dict): The dictionary storing the Pokémon information.
    '''
    if '(' in name_part:
        list_of_strings = name_part.split('(')

        for elem in list_of_strings:
            if ')' in elem:
                elem = elem.replace(')', '')
                form_id = get_form_id_from_name(cursor, elem.strip())

                if form_id is None and elem.lower() == 'f' or elem.lower() == 'm':
                    pokemon_dictionary['gender_id'] = db.get_pk_by_name(cursor, 'gender', GENDERS[elem.lower()])
                else:
                    pokemon_dictionary['form_id'] = form_id
            else:
                form_id = get_form_id_from_name(cursor, elem.strip())

                if form_id is None:
                    pokemon_dictionary['nickname'] = elem.strip()
                else:
                    pokemon_dictionary['form_id'] = form_id

    else:
        form_id = get_form_id_from_name(cursor, name_part.strip())
        pokemon_dictionary['form_id'] = form_id



def parse_name_line(cursor: MySQLCursor, line: str, pokemon_dictionary: dict):
    '''
    Parses the first line, containing the Pokémon name, and adds everything to the Pokémon dictionary argument.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        line (str): The line with the Pokémon name and, optionally, its gender, nickname and held item.
        pokemon_dictionary (dict): The dictionary storing the Pokémon information.
    '''

    if '@' in line:
        strings = line.split('@')

        for i in range(0, len(strings)):
            if (i == 0):
                parse_name_part(cursor, strings[i].strip(), pokemon_dictionary)
            else:
                item_name = utils.normalize_name(strings[i].strip())
                pokemon_dictionary['item_id'] = db.get_pk_by_name(cursor, 'item', item_name)
    else:
        parse_name_part(cursor, line.strip(), pokemon_dictionary)

def parse_move_line(cursor: MySQLCursor, line: str, pokemon_dictionary: dict, counter: int):
    '''
    Parses a move line and adds the move to the Pokémon dictionary argument.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        line (str):
        pokemon_dictionary (dict): The dictionary storing the Pokémon information.
    '''
    move_key = f'move{counter}_id'
    stripped_line = line.replace('-', '', 1).strip()

    if '[' in stripped_line:
        stripped_line = stripped_line.split('[')[0].strip()

    pokemon_dictionary['moves_ids'][move_key] = db.get_pk_by_name(cursor, 'move', utils.normalize_name(stripped_line))

def parse_evs_ivs(field_name: str, line: str, pokemon_dictionary: dict):
    '''
    Parses the EVs or IVs values in the dictionary and stores them in it. 
    It also sets the values not present in the line argument as zero.
    
    Args:
        field_name (str): Its value will be 'evs' or 'ivs'
        line (str): The line containing all the values corresponding to the stats
        pokemon_dictionary (dict): The dictionary storing the Pokémon information.
    '''
    strings = line.split('/')

    for string in strings:
        final_list = string.strip().split(' ')
        stat_value = final_list[0]
        stat_name = STAT_NAMES[final_list[1]]
        pokemon_dictionary[field_name][stat_name] = int(stat_value)


def parse_line(cursor: MySQLCursor, line: str, pokemon_dictionary: dict):
    '''
    Parses a line. This line may include the Pokémon's EVs, IVs, nature... 
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        line (str):
        pokemon_dictionary (dict): The dictionary storing the Pokémon information.
    '''
    lowercase_line = line.lower().strip()

    if 'level' in lowercase_line:
        strings = line.split(' ')
        pokemon_dictionary['level'] = int(strings[1])
    elif 'happiness' in lowercase_line:
        strings = line.split(' ')
        pokemon_dictionary['happiness'] = int(strings[1])
    elif 'nature' in lowercase_line:
        strings = lowercase_line.split(' ')
        pokemon_dictionary['nature_id'] = db.get_pk_by_name(cursor, 'nature', strings[0])
    elif 'ability' in lowercase_line:
        strings = lowercase_line.split(': ')
        pokemon_dictionary['ability_id'] = db.get_pk_by_name(cursor, 'ability', utils.normalize_name(strings[1]))
    elif 'evs' in lowercase_line:
        strings = lowercase_line.split(':')
        parse_evs_ivs('evs', strings[1].strip(), pokemon_dictionary)
    elif 'ivs' in lowercase_line or 'dvs' in lowercase_line:
        strings = lowercase_line.split(':')
        parse_evs_ivs('ivs', strings[1].strip(), pokemon_dictionary)
    elif 'tera' in lowercase_line or 'type' in lowercase_line:
        strings = lowercase_line.split(':')
        pokemon_dictionary['tera_type_id'] = db.get_pk_by_name(cursor, "type", strings[1].strip().lower())


def parse_pokemon(cursor, pokemon_string, pokemon_dictionary):
    '''
    Parses the Pokémon string and processes each individual line.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        pokemon_string (str): The Pokémon's data in the standard Smogon format.
        pokemon_dictionary (dict): It contains the information that will be stored in the database.
    '''
    list_of_strings = pokemon_string.split('\n')
    counter = 0

    # Only three relevant cases
    for line in list_of_strings:
        if ('@' in line or line == list_of_strings[0]):
            parse_name_line(cursor, line, pokemon_dictionary)
        elif ('-' in line and counter >= 0 and counter <= 3):
            counter += 1
            parse_move_line(cursor, line, pokemon_dictionary, counter)
        elif line != '': # It either features the character ':' or it doesn't feature any special character
            parse_line(cursor, line, pokemon_dictionary)

def insert_pokemon(cursor: MySQLCursor, pokemon_dictionary: dict):
    '''
    Inserts the specific Pokémon in the database.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        pokemon_dictionary (dict): It contains the information that will be stored in the database.
    '''
    logger.debug(f"inserting Pokémon with Nickname {pokemon_dictionary.get('nickname')} and form id {pokemon_dictionary['form_id']}")
    
    result = db.simple_select(cursor, "form", "name", "pk_form", pokemon_dictionary['form_id'])
    form_name = result[0]
    
    if pokemon_dictionary.get('nickname') is None:
        nickname = form_name
    else:
        nickname = pokemon_dictionary['nickname']
    
    form_id, tera_type_id = pokemon_dictionary['form_id'], pokemon_dictionary['tera_type_id']
    level, happiness = pokemon_dictionary['level'], pokemon_dictionary['happiness']

    cursor.execute("SELECT g.pk_gender, fhg.rate " \
                "FROM pokemon.form f " \
                "JOIN pokemon.form_has_gender fhg ON (f.pk_form = fhg.fk_form) " \
                "JOIN pokemon.gender g ON (fhg.fk_gender = g.pk_gender) " \
                "WHERE f.name = %s", (form_name,))
    result = cursor.fetchall()
    current_gender_id = result[0][0]
    gender_rate = result[0][1]

    if pokemon_dictionary.get('gender_id') is None:
        if random.random() < gender_rate:
            gender_id = current_gender_id
        else:
            if current_gender_id == 1:
                gender_id = 2
            else:
                gender_id = 1
    else:
        gender_id = pokemon_dictionary['gender_id']

    if random.random() < 0.5:
        shiny = True
    else:
        shiny = False
    
    fields_tuple = '(nickname, happiness, level, shiny, fk_form, fk_ability, fk_nature, fk_gender, fk_item, fk_team, fk_type)'
    query_tuple = (nickname, happiness, level, shiny, form_id, pokemon_dictionary['ability_id'], pokemon_dictionary['nature_id'], gender_id, pokemon_dictionary['item_id'], pokemon_dictionary['team_id'], tera_type_id)

    try:
        pokemon_instance_id = db.simple_insert(cursor, 'pokemon_instance', fields_tuple, query_tuple)
    except Exception:
        logger.info(f"Error inserting a Pokémon instance with Pokémon form id: {form_id} and Nickname: {nickname}", exc_info=True)
        raise

    evs_hp = pokemon_dictionary['evs']['hp']
    evs_attack = pokemon_dictionary['evs']['attack']
    evs_defense = pokemon_dictionary['evs']['defense']
    evs_special_attack = pokemon_dictionary['evs']['special_attack']
    evs_special_defense = pokemon_dictionary['evs']['special_defense']
    evs_speed = pokemon_dictionary['evs']['speed']
    evs_special = pokemon_dictionary['evs']['special']

    stats_type_id = db.get_pk_by_name(cursor, 'stats_type', 'ev')

    stats_tuple = '(fk_stats_Type, hp, attack, defense, special_attack, special_defense, speed, special)'
    evs_tuple = (stats_type_id, evs_hp, evs_attack, evs_defense, evs_special_attack, evs_special_defense, evs_speed, evs_special)

    try:    
        evs_id = db.simple_insert(cursor, 'stats', stats_tuple, evs_tuple)
    except Exception:
        logger.error(f"Error inserting Pokémon's ({nickname}) EVs", exc_info=True)
        raise
    try:
        db.simple_insert(cursor, 'pokemon_instance_has_stats', '(fk_pokemon_instance, fk_stats)', (pokemon_instance_id, evs_id))
    except Exception:
        logger.error(f"Error inserting Pokémon's EVs and Pokémon's ({nickname}) instance relationship", exc_info=True)
        raise

    ivs_hp = pokemon_dictionary['ivs']['hp']
    ivs_attack = pokemon_dictionary['ivs']['attack']
    ivs_defense = pokemon_dictionary['ivs']['defense']
    ivs_special_attack = pokemon_dictionary['ivs']['special_attack']
    ivs_special_defense = pokemon_dictionary['ivs']['special_defense']
    ivs_speed = pokemon_dictionary['ivs']['speed']
    ivs_special = pokemon_dictionary['ivs']['special']

    stats_type_id = db.get_pk_by_name(cursor, 'stats_type', 'iv')

    ivs_tuple = (stats_type_id, ivs_hp, ivs_attack, ivs_defense, ivs_special_attack, ivs_special_defense, ivs_speed, ivs_special)

    try:
        ivs_id = db.simple_insert(cursor, 'stats', stats_tuple, ivs_tuple)
    except Exception:
        logger.error(f"Error inserting Pokémon's ({nickname}) IVs", exc_info=True)
        raise
    try:
        db.simple_insert(cursor, 'pokemon_instance_has_stats', '(fk_pokemon_instance, fk_stats)', (pokemon_instance_id, ivs_id))
    except Exception:
        logger.error(f"Error inserting Pokémon's IVs and Pokémon's ({nickname}) instance relationship", exc_info=True)
        raise
    
    move_instance_fields = '(fk_move, fk_pokemon_instance)'

    move_instance_values = (pokemon_dictionary['moves_ids']['move1_id'], pokemon_instance_id)
    try:
        db.simple_insert(cursor, 'move_instance', move_instance_fields, move_instance_values)
    except Exception:
        logger.info(f"Error in INSERT: Move with id {move_instance_values[0]} and Pokémon with Nickname {nickname}")
        raise

    move_instance_values = (pokemon_dictionary['moves_ids']['move2_id'], pokemon_instance_id)
    try:
        db.simple_insert(cursor, 'move_instance', move_instance_fields, move_instance_values)
    except Exception:
        logger.info(f"Error in INSERT: Move with id {move_instance_values[0]} and Pokémon with Nickname {nickname}")
        raise

    move_instance_values = (pokemon_dictionary['moves_ids']['move3_id'], pokemon_instance_id)
    try:
        db.simple_insert(cursor, 'move_instance', move_instance_fields, move_instance_values)
    except Exception:
        logger.info(f"Error in INSERT: Move with id {move_instance_values[0]} and Pokémon with Nickname {nickname}")
        raise

    move_instance_values = (pokemon_dictionary['moves_ids']['move4_id'], pokemon_instance_id)
    try:
        db.simple_insert(cursor, 'move_instance', move_instance_fields, move_instance_values)
    except Exception:
        logger.info(f"Error in INSERT: Move with id {move_instance_values[0]} and Pokémon with Nickname {nickname}")
        raise
    
def insert_pokemon_instance(cursor: MySQLCursor, pokemon_string: str, generation_number: int, team_id: int):
    '''
    Inserts a Pokémon instance in the database. This is the individual Pokémon in a team.
    It first parses the Pokémon string and then inserts in the database.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        pokemon_string (str): The Pokémon's data in the standard Smogon format.
        generation_number (int): The generation to which this Pokémon's team belongs to..
        team_id (int): The team that will be inserted, in the standard Smogon format.
    '''

    if generation_number == 1:
        pokemon_dictionary = POKEMON_DICTIONARY_1.copy()
    elif generation_number == 2:
        pokemon_dictionary = POKEMON_DICTIONARY_2.copy()
    else:
        pokemon_dictionary = POKEMON_DICTIONARY_3.copy()
    
    pokemon_dictionary['team_id'] = team_id

    parse_pokemon(cursor, pokemon_string, pokemon_dictionary)
    insert_pokemon(cursor, pokemon_dictionary)

def insert_pokemon_team(cursor: MySQLCursor, generation_number: int, team_name: str, team: str):
    '''
    Loops over the team's string to insert each Pokémon in it.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        generation_number (int): The team's generation.
        team_name (str): The team's name.
        team (str): The team that will be inserted, in the standard Smogon format.
    '''
    logger.info("Entering insert_pokemon_team")

    team_attributes = '(fk_generation, name)'
    team_data = (generation_number, team_name)
    team_id = db.simple_insert(cursor, 'team', team_attributes, team_data)

    pokemon_list = re.split(r'\n\n', team)

    for pokemon in pokemon_list:
        if pokemon != '': # Important because there will be empty lines in the standard Smogon format
            insert_pokemon_instance(cursor, pokemon, generation_number, team_id)
    
    # insert_pokemon_instance(cursor, GARCHOMP)
    # insert_pokemon_instance(cursor, MEW)
    # insert_pokemon_instance(cursor, KLEFKI)
    # insert_pokemon_instance(cursor, CHANSEY_GEN_1)
    # insert_pokemon_instance(cursor, FERROTHORN)
    