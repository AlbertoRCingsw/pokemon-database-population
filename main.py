from data_population import gender_stat_type
from data_population import types_data
from data_population import generations_data
from data_population import type_generation_relationship
from data_population import version_groups_data
from data_population import pokemon_data
from data_population import moves_by_pokemon
from data_population import pokemon_special_stat
from data_population import stat_type_changes
from data_population import moves_data
from data_population import items_data
from data_population import abilities_data
from data_population import natures
from data_population import fixes
from data_population import pokemon_instances
from data_population import utils

from pathlib import Path
import time as t
import db
from logger_config import logger

import threading

from dotenv import load_dotenv
import os

load_dotenv(".env")

# Important URLs
SHOWDOWN_MOVES_URL = "https://play.pokemonshowdown.com/data/moves.json"
SHOWDOWN_POKEDEX_URL = "https://play.pokemonshowdown.com/data/pokedex.json"
POKEAPI_BASE_URL = "https://pokeapi.co/api/v2/"

GEN_I_POKEMON_URL = "https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_base_stats_in_Generation_I"
Z_MOVES_URL = "https://bulbapedia.bulbagarden.net/wiki/Z-Move"
ITEMS_URL = "https://pokeapi.co/api/v2/item/"

UPPER_GENERATIONS_LIMIT = 10 # 1 + the number of generations -> used in loops

# When retrieving data from external sources, it is stored in a cache directory
CACHE_DIRECTORY = Path(os.getenv("CACHE_DIR"))
TYPES_DIRECTORY = CACHE_DIRECTORY / "types/"
GENERATIONS_DIRECTORY = CACHE_DIRECTORY / "generations/"
POKEMON_SPECIES_DIRECTORY = CACHE_DIRECTORY / "pokemon-species/"
POKEMON_FORMS_DIRECTORY = CACHE_DIRECTORY / "pokemon/"
MOVES_DIRECTORY = CACHE_DIRECTORY / "moves/"
ITEMS_DIRECTORY = CACHE_DIRECTORY / "items/"
ABILITIES_DIRECTORY = CACHE_DIRECTORY / "abilities/"
NATURES_DIRECTORY = CACHE_DIRECTORY / "natures/"

# Testing files 
EXAMPLE_TEAM = Path("./gen_v_team.txt")
GEN_IX_EXAMPLE_TEAM = Path("./gen_ix_team.txt")

# Example teams
GEN_V_TEAM = utils.read_from_text_file(EXAMPLE_TEAM)
GEN_IX_TEAM = utils.read_from_text_file(GEN_IX_EXAMPLE_TEAM)

def initialize_connection_to_db():
    connection = db.connect_to_db()
    cursor = connection.cursor(buffered=True) # This makes it so all information is consumed after a SELECT query
    return connection, cursor

def task(function, *args):
    connection, cursor = initialize_connection_to_db()
    function(cursor, *args)
    db.close_connection_to_db(connection, cursor)

def main() -> None:

    t_0 = t.time() 

    gender_stat_thread = threading.Thread(target=task, 
                                        args=(gender_stat_type.insert_genders_and_stats_types,))
    gender_stat_thread.start()

    types_thread = threading.Thread(target=task, 
                                        args=(types_data.insert_types, TYPES_DIRECTORY))
    types_thread.start()

    generations_thread = threading.Thread(target=task, 
                                        args=(generations_data.insert_generations, GENERATIONS_DIRECTORY))
    generations_thread.start()

    natures_thread = threading.Thread(target=task, 
                                        args=(natures.insert_natures, NATURES_DIRECTORY))
    natures_thread.start()


    generations_thread.join()

    version_groups_thread = threading.Thread(target=task, 
                                        args=(version_groups_data.insert_version_groups, UPPER_GENERATIONS_LIMIT, GENERATIONS_DIRECTORY))
    version_groups_thread.start()

    items_thread = threading.Thread(target=task, 
                                        args=(items_data.insert_items, ITEMS_DIRECTORY, ITEMS_URL))
    items_thread.start()


    types_thread.join()
    type_generation_thread = threading.Thread(target=task,
                                            args=(type_generation_relationship.perform_insertion, UPPER_GENERATIONS_LIMIT))
    type_generation_thread.start()

    version_groups_thread.join()
    abilities_threads = []
    for i in range(1, UPPER_GENERATIONS_LIMIT):
        abilities_thread = threading.Thread(target=task,
                                            args=(abilities_data.insert_abilities, i, ABILITIES_DIRECTORY))
        abilities_threads.append(abilities_thread)
        abilities_thread.start()

    for ability_thread in abilities_threads:
        ability_thread.join()



    pokemon_threads = []
    moves_threads = []
    for i in range(1, UPPER_GENERATIONS_LIMIT):
        pokemon_thread = threading.Thread(target=task,
                                            args=(pokemon_data.insert_pokemon, i, POKEMON_SPECIES_DIRECTORY, 
                                                    POKEMON_FORMS_DIRECTORY, CACHE_DIRECTORY, SHOWDOWN_POKEDEX_URL))
        pokemon_threads.append(pokemon_thread)
        pokemon_thread.start()

        move_thread = threading.Thread(target=task,
                                            args=(moves_data.insert_moves, i, SHOWDOWN_MOVES_URL, 
                                                    Z_MOVES_URL, MOVES_DIRECTORY))
        moves_threads.append(move_thread)
        move_thread.start()

    # This thread inserts all Generation I Pokémon, so it is vital that it ends before updating the special values
    pokemon_threads[0].join()

    # Performs web scraping to obtain the special stat for each Pokémon 
    special_stat_thread = threading.Thread(target=task,
                                            args=(pokemon_special_stat.insert_special_stat, GEN_I_POKEMON_URL)) 
    special_stat_thread.start()

    for i in range(0, UPPER_GENERATIONS_LIMIT - 1):
        if i == 0:
            moves_threads[i].join()
        else:
            pokemon_threads[i].join()
            moves_threads[i].join()

    # Some Pokémon had their stats or typing changed over the years
    stat_and_types_changes_thread = threading.Thread(target=task,
                                            args=(stat_type_changes.stat_changes,))
    stat_and_types_changes_thread.start()


    moves_learned_by_pokemon_threads = []
    for i in range(1, UPPER_GENERATIONS_LIMIT):
        thread = threading.Thread(target=task,
                                            args=(moves_by_pokemon.insert_learned_moves, i, 
                                                            MOVES_DIRECTORY, POKEMON_FORMS_DIRECTORY))
        moves_learned_by_pokemon_threads.append(thread)
        thread.start()

    for thread in moves_learned_by_pokemon_threads:
        thread.join()


    # Some data needed to be added or fixes
    fixes_thread = threading.Thread(target=task,
                                            args=(fixes.fix_data,))
    fixes_thread.start()


    gender_stat_thread.join()
    type_generation_thread.join()
    natures_thread.join()
    items_thread.join()
    special_stat_thread.join()
    stat_and_types_changes_thread.join()
    fixes_thread.join()


    connection, cursor = initialize_connection_to_db()

    # Teams
    team = utils.read_from_text_file(EXAMPLE_TEAM)
    pokemon_instances.insert_pokemon_team(cursor, 5, 'Example', team)

    gen_ix_team = utils.read_from_text_file(GEN_IX_EXAMPLE_TEAM) 
    pokemon_instances.insert_pokemon_team(cursor, 9, "Gen IX example", gen_ix_team)

    db.close_connection_to_db(connection, cursor)

    # Prints the execution time
    time = t.time() - t_0
    minutes = time // 60
    seconds = "{:.2f}".format(time % 60)
    logger.info(f"Execution time: {minutes} minutes {seconds} seconds")

if __name__ == "__main__":
    main()