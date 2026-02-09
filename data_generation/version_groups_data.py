import json
from pathlib import Path
from data_generation import utils

# Function to get and transform the type data
def insert_data(cur, number, generations_directory):
    
    file_path = generations_directory / f"{number}.json"
    
    generation = utils.read_from_json_file(file_path)
    
    games = generation["version_groups"]

    for i in range (0, len(games)):
        name = games[i] ["name"]
        cur.execute("SELECT pk_generation FROM pokemon.generation WHERE main_region = %s", (generation["main_region"]["name"],))
        generation_id = cur.fetchone()[0]
        cur.execute("INSERT INTO pokemon.version_group (name, fk_generation) VALUES (%s, %s)", (name, generation_id))
    


def insert_version_groups(cur, upper_generations_limit, generations_directory):
    for i in range(1, upper_generations_limit):  # The 9 generations
        try:
            insert_data(cur, i, generations_directory)
        except Exception as e:
            print(f"❌ Error with generation #{i}: {e}")

print("🎉 Version groups insertion complete.")
