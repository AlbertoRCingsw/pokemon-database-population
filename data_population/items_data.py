from data_population import utils
from logger_config import logger
import db

# The following dictionary returns the generation id and number
# when accessing it using text. Useful for insertions.
GENERATIONS = {
    "generation-i": 1,
    "generation-ii": 2,
    "generation-iii": 3,
    "generation-iv": 4,
    "generation-v": 5,
    "generation-vi": 6,
    "generation-vii": 7,
    "generation-viii": 8,
    "generation-ix": 9,
}

def insert_item(cursor, item, directory):

    item_json = utils.create_entity_directory_and_return_data(directory, "item", item["name"], item["url"])
    item_name = item_json["name"]

    logger.debug(f"Inserting {item_name} Item")

    # The description will be the first english description in effect_entries
    item_effect_entries = item_json.get("effect_entries")
    item_description = "There is no English description available"
    if (item_effect_entries is not None):
        i = 0
        while i < len(item_effect_entries) and i >= 0:
            
            if item_effect_entries[i]["language"]["name"] == "en":
                item_description = item_effect_entries[i]["short_effect"]
                i = -1
            else:
                i += 1

    fling_power = item_json.get("fling_power", 0)

    fling_effect = item_json.get("fling_effect", None)
    if (fling_effect is not None):
        fling_effect = fling_effect.get("name", None)

    sprite = item_json["sprites"].get("default")

    attributes_tuple = "(name, description, fling_power, fling_effect, sprite)"
    tuple = (item_name, item_description, fling_power, fling_effect, sprite)
    try:
        item_id = db.simple_insert(cursor, "item", attributes_tuple, tuple)
    except Exception:
        logger.error(f"Error inserting Item {item_name}", exc_info=True)
        raise

    game_indices = item_json["game_indices"]
    for i in range(0, len(game_indices)):
        generation_name = game_indices[i]["generation"]["name"]
        try:
            db.simple_insert(cursor, "item_is_in_generation", "(fk_item, fk_generation)", (item_id, GENERATIONS[generation_name]))
        except Exception:
            logger.error(f"Error adding the item-generation relationship: Item {item_name} - Gen {generation_name}", exc_info=True)
            raise

def insert_items(cursor, items_directory, items_url):
    logger.info("Entering insert_items")
    
    # url = items_url
    '''
    progress = 0
    total = 0
    while url:
        items = utils.process_url(url, "item", 0)
        total = items["count"]
        items_collection = items["results"]

        for i in range(0, len(items_collection)):
            insert_item(cursor, items_collection[i], items_directory)
        
        url = items["next"]
        progress += 20
        logger.info(f"Progress: {progress} / {total}")
    '''

    items_list = utils.get_entity_data("item")
    for item in items_list:
        insert_item(cursor, item, items_directory)
    
    logger.info("Exiting insert_items")