import time
from pathlib import Path
from data_generation import utils

def get_generation_data(number, directory):

    data = utils.create_directory_and_return_data(directory, number)

    games = data["version_groups"]
    first_games = games[0] ["name"]
    main_region = data["main_region"]["name"]

    return (number, main_region, first_games)

def insert_generations(cur, script, upper_limit, directory):
    header = "-- GENERATION\n-- GENERATION\n-- GENERATION\n\n"
    utils.write_header(script, header)

    for i in range(1, upper_limit):  
        try:
            data = get_generation_data(i, directory)
            cur.execute(" INSERT INTO pokemon.generation (number, main_region, games)\nVALUES (%s, %s, %s)", data)
            print(f"✅ Inserting generation #{i}: {data[0]}")

            query = f"INSERT INTO pokemon.generation (number, main_region, games)\nVALUES ({data[0]}, '{data[1]}', '{data[2]}');"
            utils.write_query_to_file(script, query)

        except Exception as e:
            print(f"❌ Error with generation #{i}: {e}")

    utils.write_ending_blank_lines(script)