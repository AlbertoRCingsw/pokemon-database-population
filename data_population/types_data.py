from data_population import utils
from logger_config import logger
import db

UNKNOWN = "unknown"
STELLAR = "stellar"
SHADOW = "shadow"
CURRENT_GENERATION = "generation-ix"
CURRENT_GAMES = "scarlet-violet"

def insert_type(cursor, type, types_directory):

    data = utils.create_directory_and_return_data(types_directory, type["name"])
    name = data["name"] 

    if name == STELLAR:
        sprite_url = data["sprites"]["generation-ix"]["scarlet-violet"]["name_icon"]
    elif name == UNKNOWN:
        sprite_url = data["sprites"]["generation-iv"]["heartgold-soulsilver"]["name_icon"]
    elif name == SHADOW:
        sprite_url = None # There is no Shadow type icon in PokéAPI
    else:
        sprite_url = data["sprites"][CURRENT_GENERATION][CURRENT_GAMES]["name_icon"]

    try:
        logger.debug(f"Inserting type: {name}")
        db.simple_insert(cursor, "type", "(name, sprite)", (name, sprite_url))
    except Exception:
        logger.error(f"Error inserting type {name}", exc_info=True)  
        raise


def insert_types(cursor, types_directory):
    logger.info("Entering insert_types")
    types = utils.get_entity_data("type")

    for type in types:
        insert_type(cursor, type, types_directory)
    logger.info("Exiting insert_types")