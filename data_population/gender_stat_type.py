from logger_config import logger
import db

GENDERS = ["male", "female", "unknown"]
STAT_TYPES = ["dv", "stat_experience", "ev", "iv"]

def insert_genders_and_stats_types(cursor):
    logger.info("Entering insert_genders_and_stats_types")
    for gender in GENDERS:
        logger.debug(f"Gender: {gender}")
        db.simple_insert(cursor, 'gender', '(name)', (gender,))
    
    for stat in STAT_TYPES:
        logger.debug(f"Stat type: {stat}")
        db.simple_insert(cursor, 'stats_type', '(name)', (stat,))
    
    logger.info("Exiting insert_genders_and_stats_types")
    

    
