import json
import requests
import time
from pathlib import Path
from typing import Any
from mysql.connector.cursor import MySQLCursor

JSON = dict[str, Any] | list[Any] | str | int | float | bool | None
GENERATIONS_DIRECTORY = Path("./cache/generations/")

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
    
def read_from_json_file(file_path: Path) -> JSON:
    '''
    Reads the specified JSON file.
    
    Args:
        file_path (Path):
    '''
    with open(file_path, "r") as json_type:
        data = json.load(json_type)
    return data

def create_json_file(file_path: Path, data):
    '''
    Creates a JSON file, containing the specified data, in the specified path.
    
    Args:
        file_path (Path):
        data (JSON): 
    '''
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

def process_url(url: str, name: str, name_id: Any) -> JSON:
    '''
    Performs the GET request to retrieve the necessary data corresponding to that entity name and that id.
    
    Args:
        url (str): The endpoint from which the data will be requested.
        name (str): The entity name, corresponding to a table's name in the database.
        name_id (Any): The object's identifier. Either the name or a number. 

    Returns:
        JSON: The JSON file that contains the requested data.
    '''
    response = requests.get(url)
        
    if response.status_code != 200:
        raise Exception(f"Could not get {name} with ID {name_id}")
    data = response.json()
    
    return data

def get_entity_from_directory(directory: Path) -> str:
    '''
    Get the PokéAPI entity name from the local directory name.
    
    Args:
        directory (Path): The directory where the JSON file should be.

    Returns:
        str: PokéAPI entity name.
    '''
    directory_name = directory.name

    if (directory_name[-4:] == "ties"): 
        entity = "ability" 
    elif (directory_name[-1:] == "n"):
        entity = directory_name
    elif ("-" in directory_name):
        entity = "pokemon-species"
    else:
        entity = directory_name[:-1] 
    
    return entity

def create_directory_and_return_data(directory: Path, identifier: Any) -> JSON:
    '''
    Uses the directory and identifier to look for the corresponding JSON file.

    If the file is not found, it requests it from the primary source.

    Args:
        directory (Path): The directory where the JSON file should be.
        identifier (Any): The file identifier (name or number)

    Returns:
        JSON: The JSON file that contains the requested data.
    '''

    file_path = directory / f"{identifier}.json"

    directory.mkdir(exist_ok=True)

    if directory.is_dir() and file_path.is_file():
            data = read_from_json_file(file_path)
    else:
        entity = get_entity_from_directory(directory)
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

def get_generation_data(generation_number: int) -> JSON:
    '''
    Retrieves the data from a specific generation.
    Args:
        generation_number (int): A generation's number.

    Returns:
        JSON: The data for generation generation_number.
    '''
    generation_path = GENERATIONS_DIRECTORY / f"{generation_number}.json"
    generation_data = read_from_json_file(Path(generation_path))

    return generation_data

def get_gen_by_games(cur: MySQLCursor, version_group: str) -> int:
    '''
    Retrieves the generation number of the specified version group.
    Args:
        cur (MySQLCursor): The MySQL cursor managing the current connection.
        version_group (str): Name of a version group.

    Returns:
        int: That version group's generation number.
    '''
    cur.execute("SELECT fk_generation FROM pokemon.version_group vg WHERE vg.name = %s", (version_group,))
    return cur.fetchone()[0] 

def get_pk_by_name(cur: MySQLCursor, entity: str, name: str) -> int:
    '''
    Retrieves the primary key of the necessary row.
    Args:
        cur (MySQLCursor): The MySQL cursor managing the current connection.
        entity (str): Name of an entity, represented by a table in the database.
        name (str): Identifies a row.

    Returns:
        int: The primary key belonging to the selected row.
    '''

    if name == "unknown":
        name = "???"

    cur.execute(f"SELECT pk_{entity} FROM pokemon.{entity} WHERE name = %s", (name,))
    result = cur.fetchone()
    pk_entity = result[0]
    
    return pk_entity
