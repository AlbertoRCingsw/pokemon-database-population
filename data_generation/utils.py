import json
import requests
import time
from pathlib import Path

def create_scripts(scripts_directory, script_names):
    script_paths = []
    if not scripts_directory.is_dir():
        scripts_directory.mkdir(exist_ok=True)
        
    for i in range(0, len(script_names)):
        script_path = scripts_directory / f"{script_names[i]}.sql"
        with open(script_path, "w", encoding='utf-8') as script:
            script.close
        script_paths.append(script_path)
    
    return script_paths
    
def read_from_json_file(file_path):
    with open(file_path, "r") as json_type:
        data = json.load(json_type)
    return data

def create_json_file(file_path, data):
    json_type = json.dumps(data, indent=2)
    with open(file_path, "w") as type_file:
        type_file.write(json_type)

def write_header(file, header):
    with open(file, "a") as f:
        f.write(header)

def write_query_to_file(file, query):
    with open(file, "a", encoding="utf-8") as f:
        f.write(query)
        f.write("\n")

def write_blank_line(file):
    with open(file, "a") as f:
        f.write("\n")

def write_ending_blank_lines(file):
    with open(file, "a") as f:
        f.write("\n\n")

def process_url(url, name, name_id):
    response = requests.get(url)
        
    if response.status_code != 200:
        raise Exception(f"Could not get {name} with ID {name_id}")
    data = response.json()
    
    return data

def create_directory_and_return_data(directory, entity, identifier):
    file_path = directory / f"{entity}_{identifier}.json"

    directory.mkdir(exist_ok=True)

    if directory.is_dir() and file_path.is_file():
            data = read_from_json_file(file_path)
    else:

        url = f"https://pokeapi.co/api/v2/{entity}/{identifier}"

        time.sleep(0.6)
        data = process_url(url, entity, identifier)
        
        create_json_file(file_path, data)
    
    return data

def create_item_directory_and_return_data(directory, entity, item_name, item_url):
    file_path = directory / f"{entity}_{item_name}.json"

    if directory.is_dir() and file_path.is_file():
            data = read_from_json_file(file_path)
    else:
        url = item_url

        time.sleep(0.6)
        data = process_url(url, entity, item_name)
        
        create_json_file(file_path, data)
    return data

def get_entire_pokedex(url, directory, json_file_name):
    file_path = directory / json_file_name
    if directory.is_dir():
            data = read_from_json_file(file_path)
    else:
        directory.mkdir(exist_ok=True)
        create_json_file(file_path, data)

    return data

def get_generation_data(generation_number):
    generation_directory = Path("./generations")
    generation_path = generation_directory / f"generation_{generation_number}.json"

    generation_data = read_from_json_file(generation_path)

    return generation_data

def get_type_pk_by_name(cur, name):
    cur.execute("SELECT pk_type FROM pokemon.type WHERE name = %s", (name,))
    result = cur.fetchone()
    pk_type = result[0]
    
    return pk_type