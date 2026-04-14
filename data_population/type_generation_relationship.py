from data_population import utils
from logger_config import logger
import db

def get_generation_id(number, cursor):
    generation_id = db.simple_select(cursor, "generation", "pk_generation", "number", number)
    return generation_id[0]

def insert_relationship(cursor, generation, type_id):
    logger.debug(f"Inserting relatioship: gen - {generation} and type_id {type_id}")
    generation_id = get_generation_id(generation, cursor)
    db.simple_insert(cursor, 'type_is_in_generation', '(fk_type, fk_generation)', (type_id, generation_id))

def perform_insertion(cursor, upper_generations_limit):
    logger.info("Entering perform_insertions")
    result = db.simple_select(cursor, "type", "name", None, None, "all")
    number_of_types = len(result)

    # Inserts the relationships between generations and types
    # Some specific types are featured only in certain generations (??? and shadow)
    # Some specific types were introduced in a specific generation (steel, dark and fairy)
    for i in range(0, number_of_types):
        type_name = result[i][0]
        type_id = db.get_pk_by_name(cursor, 'type', type_name)

        if type_name == 'fairy':
            for j in range(6, upper_generations_limit):
                insert_relationship(cursor, j, type_id)
        
        elif type_name == 'steel' or type_name == 'dark':
            for j in range(2, upper_generations_limit):
                insert_relationship(cursor, j, type_id)
        
        elif type_name == '???':
            for j in range(2, 5):
                insert_relationship(cursor, j, type_id)

        elif type_name == 'shadow':
            insert_relationship(cursor, 3, type_id)
        
        elif type_name == 'stellar':
            insert_relationship(cursor, 9, type_id)

        else:
            for j in range(1, upper_generations_limit):
                insert_relationship(cursor, j, type_id)
    
    logger.info("Exiting perform_insertions")