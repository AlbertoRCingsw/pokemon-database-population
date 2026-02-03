from pathlib import Path
import time as t
import db
from data_generation import utils
from data_generation import type_data
from data_generation import generations_data
from data_generation import type_generation_relationship
from data_generation import version_groups_data
from data_generation import pokemon_data
from data_generation import moves_by_pokemon
from data_generation import pokemon_special_stat
from data_generation import stat_type_changes
from data_generation import move_data
from data_generation import items_data
from data_generation import abilities_data

# Open connection to the database
conn = db.connect_to_db()
cur = conn.cursor()

showdown_url = 'https://play.pokemonshowdown.com/data/moves.json'

# Creates the scripts directory and the empty scripts
names = ['type', 'generation', 'type_generation_relationship', 'version_group', 'pokemon', 'move', 'learned_moves']
scripts_directory = Path("./scripts")
script_names = utils.create_scripts(scripts_directory, names)

t_0 = t.time() # To check the execution time

# Variables to be used in for loops
upper_types_limit = 19 # 1 + the number of types
upper_generations_limit = 10 # 1 + the number of generations

# Insert the types
type_script = script_names[0]
type_data.insert_types(cur, type_script, upper_types_limit)

# Insert the generations
generations_script = script_names[1]
generations_data.insert_generations(cur, generations_script, upper_generations_limit)

# Get the names of the types per generation
type_generation_relationship_script = script_names[2]
type_generation_relationship.perform_insertion(cur, type_generation_relationship_script, upper_generations_limit)

# Insert the version groups of each generation
version_group_script = script_names[3]
version_groups_data.insert_version_groups(cur, version_group_script, upper_generations_limit)

pokemon_script = script_names[4]
moves_script = script_names[5]
learned_moves_script = script_names[6]

# Inserts the pokemon
for generation_number in range(1, upper_generations_limit):
    pokemon_data.insert_pokemon(cur, pokemon_script, generation_number)

# Inserts the moves
for generation_number in range(1, upper_generations_limit):
    move_data.insert_moves(cur, generation_number, showdown_url)

# Insert the relationship form_learned_moves
# It represents the move learned by the pokemon in each generation
for generation_number in range(1, upper_generations_limit):
    moves_by_pokemon.insert_learned_moves(cur, learned_moves_script, generation_number)

db.commit_data(conn)

pokemon_special_stat.insert_special_stat(cur)

stat_type_changes.stat_changes(cur)

items_data.insert_items(cur)

db.commit_data(conn)

for i in range(1, 10):
    abilities_data.insert_abilities(cur, i)

# Closes connection to the database
db.close_connection_to_db(conn, cur)

# The execution time is calculated and shown here
time = t.time() - t_0
print(time/60)