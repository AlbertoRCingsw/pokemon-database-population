from data_population import utils
from logger_config import logger
import db

def insert_generation(cursor, index, directory):

    try:
        data = utils.create_directory_and_return_data(directory, index)

        logger.debug(f"Inserting generation #{index}")
        
        games = data["version_groups"]
        first_games = games[0] ["name"]
        main_region = data["main_region"]["name"]

        generation_fields = '(number, main_region, games)'
        generation_data = (index, main_region, first_games)

        db.simple_insert(cursor, 'generation', generation_fields, generation_data)

    except Exception:
        logger.error(f"Error inserting type #{index}", exc_info=True)  
        raise

def insert_generations(cursor, directory):
    logger.info("Entering insert_generations")
    generations = utils.get_entity_data("generation")

    for i in range(1, len(generations) + 1):
        insert_generation(cursor, i, directory)
    
    logger.info("Exiting insert_generations")