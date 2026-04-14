from data_population import utils
from logger_config import logger
import db

def insert_data(cursor, generation_number, generations_directory):
    
    file_path = generations_directory / f"{generation_number}.json"
    logger.debug(f"Inserting version groups. Generation {generation_number}")
    
    generation = utils.read_from_json_file(file_path)
    
    games = generation["version_groups"]

    for i in range (0, len(games)):
        try:
            name = games[i] ["name"]
            query_result = db.simple_select(cursor, "generation", "pk_generation", "main_region", (generation["main_region"]["name"]))
            generation_id = query_result[0]
            db.simple_insert(cursor, 'version_group', '(name, fk_generation)', (name, generation_id))
        except Exception:
            logger.error("Error inserting version group {name}", exc_info=True)
            raise
        

def insert_version_groups(cursor, upper_generations_limit, generations_directory):
    logger.info("Entering insert_version_groups")
    
    for i in range(1, upper_generations_limit):
            insert_data(cursor, i, generations_directory)
    
    logger.info("All version groups were inserted")
