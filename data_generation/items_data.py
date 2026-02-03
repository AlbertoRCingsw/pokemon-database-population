from data_generation import utils
from pathlib import Path

def insert_item(cur, item, generations, directory):

    item_json = utils.create_item_directory_and_return_data(directory, "item", item["name"], item["url"])

    item_name = item_json["name"]

    # First english description in effect entries
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

    fling_power = item_json.get("fling_power", 0) # fling power

    fling_effect = item_json.get("fling_effect", None) # fling effect
    if (fling_effect is not None):
        fling_effect = fling_effect.get("name", None)

    sprite = item_json["sprites"].get("default") # sprite

    tuple = (item_name, item_description, fling_power, fling_effect, sprite)
    cur.execute("INSERT INTO pokemon.item (name, description, fling_power, fling_effect, sprite) " \
                "VALUES (%s, %s, %s, %s, %s)", tuple)
    item_id = cur.lastrowid

    print(f"Inserted {item_name}")

    game_indices = item_json["game_indices"]

    for i in range(0, len(game_indices)):
        generation_name = game_indices[i]["generation"]["name"]
        cur.execute("INSERT INTO pokemon.item_is_in_generation (fk_item, fk_generation) " \
                    "VALUES (%s, %s)", (item_id, generations[generation_name]))

def insert_items(cur):

    generations = {
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

    items_directory = Path(".//cache/items")
    url = "https://pokeapi.co/api/v2/item/"
    
    progress = 0
    while url:
        items = utils.process_url(url, "item", 0)
        items_collection = items["results"]

        for i in range(0, len(items_collection)):
            insert_item(cur, items_collection[i], generations, items_directory)
        
        url = items["next"]
        progress += 20
        print(f"Progress: {progress}")