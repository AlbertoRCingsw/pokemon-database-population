from data_population import utils
from logger_config import logger
import db

from pathlib import Path
import requests
from bs4 import BeautifulSoup


def update_special_stat(cursor, pokemon, special):
    form_id = db.get_pk_by_name(cursor, "form", pokemon)
    logger.debug(f"Updating Pokémon: {pokemon} - Special stat: {special}")
    try:
        db.simple_update(cursor, "base_stats", ("base_special",), (special,), ("fk_form",), (form_id,))
    except Exception:
        logger.error(f"A Pokémon's special stat could not be added. Pokémon: {pokemon} - Special: {special}", exc_info=True)
        raise
    
def use_PokeAPI(cursor):

    generation_json = utils.create_directory_and_return_data(Path("./cache/generations/"), 1)

    for species in generation_json['pokemon_species']:
        pokemon_json = utils.create_directory_and_return_data(Path("./cache/pokemon/"), species["name"])
        update_special_stat(cursor, pokemon_json["name"], pokemon_json["past_stats"][0]["stats"][0]["base_stat"])

def insert_special_stat(cursor, url):
    logger.info("Entering insert_special_stat")

    try:
        response = requests.get(url, timeout=3)
    except (requests.exceptions.Timeout,
            requests.exceptions.ConnectTimeout,
            requests.exceptions.ConnectionError,
            requests.exceptions.RequestException):
        logger.warning("The request failed, using cached files instead")
        logger.warning(f"Network error", exc_info=True)
        use_PokeAPI(cursor)
        return

    soup = BeautifulSoup(response.text, "html.parser")

    # Extracts the correct table
    pokemon_table = soup.find_all("table")[1]

    # Extracts the rows data from the table
    column_data = pokemon_table.find_all("tr")
    
    special_stat_list = [] 
    name_column = 2 
    base_special_column = 7
    
    for row in column_data:
        row_data = row.find_all("td") # Data from a specific row
        individual_row_data = [data.text.strip() for data in row_data] # Cleans the data in each column

        if (individual_row_data != [] and individual_row_data is not None):
            special_stat = {}
            special_stat["pokemon"] = individual_row_data[name_column]
            special_stat["special_stat"] = individual_row_data[base_special_column]
            special_stat_list.append(special_stat)
            

    nidoran_counter = 1 # The two Nidoran Pokémon data will be managed at once
    for special_stat in special_stat_list:
        pokemon = special_stat["pokemon"]
        special = special_stat["special_stat"]

        # Nidoran Pokémon have a special character in their name
        if (pokemon.startswith("Nidoran") and nidoran_counter > 0):
            pokemon1 = "nidoran-f"
            pokemon2 = "nidoran-m"
            update_special_stat(cursor, pokemon1, special)
            update_special_stat(cursor, pokemon2, special)
            nidoran_counter -= 1

        # Mr. Mime es spelled mr-mime in the database
        elif (pokemon.endswith("me") and not pokemon.startswith("Vi")):
            pokemon = "mr-mime"
            update_special_stat(cursor, pokemon, special)
        
        # Farfetch"d is spelled with no apostrofe in the database
        elif (pokemon.startswith("Farf")):
            pokemon = "farfetchd"
            update_special_stat(cursor, pokemon, special)
        
        # The rest are spelled in lowercase
        elif (not pokemon.startswith("Nidoran")):
            update_special_stat(cursor, pokemon.lower(), special)
    
    logger.info("Entering insert_special_stat")