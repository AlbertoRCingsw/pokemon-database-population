import time
from pathlib import Path
from data_generation import utils

def insert_type(cur, type_index, types_directory):

    data = utils.create_directory_and_return_data(types_directory, type_index["name"])
    name = data["name"] 
    # Get the sprite too

    try:
        cur.execute("INSERT INTO pokemon.type (name) VALUES (%s)", (name,))
        print(f"✅ Inserting type: {name}")

    except Exception as e:
        print(f"❌ Error inserting type: {e}")    


def insert_types(cur, types_directory):

    types = utils.get_entity_data("type")

    for type in types:
        insert_type(cur, type, types_directory)