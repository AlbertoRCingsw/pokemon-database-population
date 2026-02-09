import time
from pathlib import Path
from data_generation import utils

def insert_generation(cur, index, directory):

    try:
        data = utils.create_directory_and_return_data(directory, index)

        games = data["version_groups"]
        first_games = games[0] ["name"]
        main_region = data["main_region"]["name"]

        generation_data = (index, main_region, first_games)

        cur.execute("INSERT INTO pokemon.generation (number, main_region, games) " \
                    "VALUES (%s, %s, %s)", generation_data)
        # print(cur.lastrowid)
        print(f"✅ Inserting generation #{index}: {main_region}")

    except Exception as e:
        print(f"❌ Error inserting generation #{index}: {e}")

def insert_generations(cur, directory):

    generations = utils.get_entity_data("generation")

    for i in range(1, len(generations) + 1):
        insert_generation(cur, i, directory)