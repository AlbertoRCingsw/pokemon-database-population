import json
from pathlib import Path
from data_generation import utils

# Function to get and transform the type data
def insert_data(cur, script, number, generations_directory):
    
    file_path = generations_directory / f"{number}.json"
    
    generation = utils.read_from_json_file(file_path)
    
    games = generation["version_groups"]

    for i in range (0, len(games)):
        name = games[i] ["name"]
        cur.execute("SELECT pk_generation FROM pokemon.generation WHERE main_region = %s", (generation["main_region"]["name"],))
        generation_id = cur.fetchone()[0]
        cur.execute("INSERT INTO pokemon.version_group (name, fk_generation) VALUES (%s, %s)", (name, generation_id))
        query = f"INSERT INTO pokemon.version_group (name, fk_generation)\n VALUES ('{name}', {generation_id});"
        utils.write_query_to_file(script, query)
    


def insert_version_groups(cur, script, upper_generations_limit, generations_directory):
    header = "-- VERSION_GROUPS\n-- VERSION_GROUPS\n-- VERSION_GROUPS\n\n"
    utils.write_header(script, header)
    
    for i in range(1, upper_generations_limit):  # The 9 generations
        try:
            insert_data(cur, script, i, generations_directory)
        except Exception as e:
            print(f"❌ Error with generation #{i}: {e}")
    
    utils.write_ending_blank_lines

print("🎉 Version groups insertion complete.")
