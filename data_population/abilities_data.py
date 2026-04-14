from data_population import utils
from logger_config import logger
import db

def insert_abilities(cursor, generation_number, abilities_directory):
    logger.info("Entering insert_abilities")

    generation_data = utils.get_generation_data(generation_number)
    generation_abilities = generation_data["abilities"]

    first_version_group_name = generation_data["version_groups"][0]["name"]

    for i in range(0, len(generation_abilities)):
        ability_name = generation_abilities[i]["name"]
        logger.debug(f"Inserting ability {ability_name}")
        ability_json = utils.create_directory_and_return_data(abilities_directory, ability_name)

        ability_description = "There is no English description available."
        ability_flavor_text = ability_json.get("flavor_text_entries")
        if (ability_flavor_text is not None):
            i = 0

            while i < len(ability_flavor_text) and i >= 0:
        
                flavor_text = ability_flavor_text[i]
                language = flavor_text["language"]["name"]
                version_group = flavor_text["version_group"]["name"]
                
                if (language == "en" and version_group == first_version_group_name):
                    ability_description = flavor_text["flavor_text"]
                    i = -1
                else:
                    i += 1

        attributes_tuple = "(name, fk_generation, description)"
        values_tuple = (ability_name, generation_number, ability_description)
        try:
            db.simple_insert(cursor, "ability", attributes_tuple, values_tuple)
        except Exception:
            logger.error(f"Error inserting ability: {ability_name}", exc_info=True)

    logger.info("Exiting insert_abilities")