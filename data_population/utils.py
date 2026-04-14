from pathlib import Path
from logger_config import logger

import json
import requests
import time

from typing import Any
from mysql.connector.cursor import MySQLCursor

JSON = dict[str, Any] | list[Any] | str | int | float | bool | None
GENERATIONS_DIRECTORY = Path("./cache/generations/")
POKEAPI_BASE_URL = "https://pokeapi.co/api/v2/"

def read_from_text_file(file_path: Path) -> str:
    '''
    Reads the specified text file.
    
    Args:
        file_path (Path):
    '''
    with open(file_path, "r") as text_file:
        content = text_file.read()
    return content

def read_from_json_file(file_path: Path) -> JSON:
    '''
    Reads the specified JSON file.
    
    Args:
        file_path (Path):
    '''
    with open(file_path, "r") as json_type:
        data = json.load(json_type)
    return data

def create_json_file(file_path: Path, data: JSON):
    '''
    Creates a JSON file, containing the specified data, in the specified path.
    
    Args:
        file_path (Path):
        data (JSON): 
    '''
    json_type = json.dumps(data, indent=2)
    with open(file_path, "w") as type_file:
        type_file.write(json_type)

def process_url(url: str, name: str, name_id: Any) -> JSON:
    '''
    Performs the GET request to retrieve the necessary data corresponding to that entity name and that id.
    name and name_id are both used only in the exception message.
    
    Args:
        url (str): The endpoint from which the data will be requested.
        name (str): The entity name, corresponding to a table's name in the database.
        name_id (Any): The object's identifier. Either the name or a number. 

    Returns:
        JSON: The JSON file that contains the requested data.
    '''
    time.sleep(0.6) # Limits the frequency of requests
    try:
        response = requests.get(url, timeout=3)
        response.raise_for_status()
    except requests.exceptions.ConnectTimeout:
        logger.error("Connection timeout error", exc_info=True)
        raise
    except requests.exceptions.Timeout:
        logger.error("Timeout error", exc_info=True)
        raise
    except requests.exceptions.HTTPError:
        logger.error("HTTP error", exc_info=True)
        raise
    except requests.exceptions.ConnectionError:
        logger.error("Connection error", exc_info=True)
        raise
    except requests.exceptions.RequestException:
        logger.error("Request error", exc_info=True)
        raise
    except Exception:
        logger.error(f"Error processing the query for {name} with identifier {name_id}", exc_info=True)
        raise
    
    return response.json()

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
        identifier (Any): The filejiu identifier (name or number)

    Returns:
        JSON: The JSON file that contains the requested data.
    '''
    file_path = directory / f"{identifier}.json"

    directory.mkdir(exist_ok=True)

    if directory.is_dir() and file_path.is_file():
            data = read_from_json_file(file_path)
    else:
        entity = get_entity_from_directory(directory)
        url = POKEAPI_BASE_URL + f"{entity}/{identifier}"

        data = process_url(url, entity, identifier)
        
        create_json_file(file_path, data)
    
    return data

# This one existes even though it's very similar to the previous one because there are some items
# whose names are not processed correctly by PokéAPI and it also deals with retrieving data from
# endpoints that return a results list containing all objects (items, natures...)
def create_entity_directory_and_return_data(directory: Path, entity: str, name: str, item_url: str) -> JSON:
    '''
    Uses the directory, entity and identifier to look for the corresponding JSON file.
    If the file is not found, it requests it from the primary source using the item_url argument.

    Args:
        directory (Path): The directory where the JSON file should be.
        entity (str): The entity's name
        name (str): The object's name
        item_url (str): URL used to retrieve the the object.

    Returns:
        JSON: The JSON file that contains the requested data.
    '''
    file_path = directory / f"{entity}_{name}.json"

    if directory.is_dir() and file_path.is_file():
            data = read_from_json_file(file_path)
    else:
        url = item_url

        data = process_url(url, entity, name)
        
        directory.mkdir(exist_ok=True)

        create_json_file(file_path, data)
    return data

def get_entity_data(entity_name: str) -> list:
    '''
    Uses the name of a PokéAPI entity (type, nature, pokemon, pokemon-species...) to retrieve all its contents.
    
    Args:
        entity (str): The entity's name in PokéAPI

    Returns:
        list: A list containing all objects. Each object has two fields: name and URL.
    '''
    entity_url = POKEAPI_BASE_URL + f"{entity_name}/"
    total = -1
    progress = 0
    result_list = []
    while entity_url:
        entity = process_url(entity_url, entity_name, f"Unknown item: {progress} / {total}")
        if total < 0:
            total = entity["count"]
        collection = entity["results"]
        result_list.extend(collection)

        entity_url = entity["next"]
        progress += 20
        if progress > total:
            progress = total
        logger.info(f"Progress in entity {entity_name}: {progress} / {total}")

    return result_list

def get_entire_pokedex(url, directory, json_file_name) -> JSON:
    '''
    Returns a JSON file containing all Pokémon. 
    If the file is not found in its directory, it is requested and stored in said directory.
    
    Args:
        url (str): The Pokédex' URL.
        directory (str): The Pokédex' directory
        json_file_name: The Pokédex' JSON file name

    Returns:
        JSON: A JSON file.
    '''
    file_path = directory / json_file_name
    if directory.is_dir() and file_path.is_file():
            data = read_from_json_file(file_path)
    else:
        directory.mkdir(exist_ok=True)
        data = process_url(url, "pokedex", "pokedex")
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

def convert_to_tuple(value: Any):
    if not isinstance(value, tuple):
        if isinstance(value, str) or isinstance(value, int) or isinstance(value, bool):
            return (value,)
        else: 
            return tuple(value)
    else:
        return value
    
def normalize_name(name: str) -> str:
    '''
    Normalizes a name. 
    Example: Swords Dance -> swords-dance
    
    Args:
        name (str): The name to be normalized.
    Returns:
        normalized_name (str): 
    '''
    return name.strip().replace(' ', '-').lower()
    
