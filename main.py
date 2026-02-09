from pathlib import Path
import time as t
import db
from data_generation import utils
from data_generation import gender_stat_type
from data_generation import types_data
from data_generation import generations_data
from data_generation import type_generation_relationship
from data_generation import version_groups_data
from data_generation import pokemon_data
from data_generation import moves_by_pokemon
from data_generation import pokemon_special_stat
from data_generation import stat_type_changes
from data_generation import moves_data
from data_generation import items_data
from data_generation import abilities_data
from data_generation import natures
from data_generation import fixes

from dotenv import load_dotenv
import os

load_dotenv(".env")

# Important constants
SHOWDOWN_MOVES_URL = "https://play.pokemonshowdown.com/data/moves.json"
SHOWDOWN_POKEDEX_URL = "https://play.pokemonshowdown.com/data/pokedex.json"
POKEAPI_BASE_URL = "https://pokeapi.co/api/v2/"

UPPER_GENERATIONS_LIMIT = 10 # 1 + the number of generations -> used in loops

CACHE_DIRECTORY = Path(os.getenv("CACHE_DIR"))
TYPES_DIRECTORY = CACHE_DIRECTORY / "types/"
GENERATIONS_DIRECTORY = CACHE_DIRECTORY / "generations/"
POKEMON_SPECIES_DIRECTORY = CACHE_DIRECTORY / "pokemon-species/"
POKEMON_FORMS_DIRECTORY = CACHE_DIRECTORY / "pokemon/"
MOVES_DIRECTORY = CACHE_DIRECTORY / "moves/"
ITEMS_DIRECTORY = CACHE_DIRECTORY / "items/"
ABILITIES_DIRECTORY = CACHE_DIRECTORY / "abilities/"
NATURES_DIRECTORY = CACHE_DIRECTORY / "natures/"

# Open connection to the database
conn = db.connect_to_db()
cur = conn.cursor()

t_0 = t.time() # To check the execution time

# Inserts genders and stats types
# There are three possible genders: male, female and unknown
# There are two stats types: ev and iv
gender_stat_type.insert_genders_and_stats_types(cur)

# Insert the types
types_data.insert_types(cur, TYPES_DIRECTORY)

# Insert the generations
generations_data.insert_generations(cur, GENERATIONS_DIRECTORY)

# Get the names of the types per generation
type_generation_relationship.perform_insertion(cur, 
                                               UPPER_GENERATIONS_LIMIT)

# Insert the version groups of each generation
version_groups_data.insert_version_groups(cur,
                                          UPPER_GENERATIONS_LIMIT, GENERATIONS_DIRECTORY)

# Inserts the pokemon
for generation_number in range(1, UPPER_GENERATIONS_LIMIT):
    pokemon_data.insert_pokemon(cur, generation_number,
                                POKEMON_SPECIES_DIRECTORY, POKEMON_FORMS_DIRECTORY, 
                                CACHE_DIRECTORY, SHOWDOWN_POKEDEX_URL)
# Inserts the moves
for generation_number in range(1, UPPER_GENERATIONS_LIMIT):
    moves_data.insert_moves(cur, generation_number, SHOWDOWN_MOVES_URL, 
                           MOVES_DIRECTORY)

# Inserts the relationship form_learned_moves
# It represents the move learned by the pokemon in each generation
for generation_number in range(1, UPPER_GENERATIONS_LIMIT):
    moves_by_pokemon.insert_learned_moves(cur, generation_number, 
                                          MOVES_DIRECTORY, POKEMON_FORMS_DIRECTORY)

db.commit_data(conn)

# Performs web scraping to obtain the special stat for each Pokémon 
# Inserts it in the database
pokemon_special_stat.insert_special_stat(cur)

# Manages typing and stats versioning
# Some Pokémon had their stats or typing changed over the years
stat_type_changes.stat_changes(cur)

# Inserts items
items_data.insert_items(cur, ITEMS_DIRECTORY)

# Inserts abilities and their relationship with Pokémon
for i in range(1, UPPER_GENERATIONS_LIMIT):
    abilities_data.insert_abilities(cur, i, ABILITIES_DIRECTORY)

# Abilities history

# Inserts natures
natures.insert_natures(cur, NATURES_DIRECTORY)

# Teams

# Trainers

fixes.fix_data(cur)

# Closes connection to the database
db.close_connection_to_db(conn, cur)

# The execution time is calculated and shown here
time = t.time() - t_0
print(time/60)