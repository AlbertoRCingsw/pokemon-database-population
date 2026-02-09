from data_generation import utils
from pathlib import Path

GENDERS = ["male", "female", "unknown"]
STAT_TYPES = ["ev", "iv"]

def insert(cur, table_name, name):
    cur.execute(f"INSERT INTO pokemon.{table_name} (name) " \
                 "VALUES (%s)", (name,))

def insert_genders_and_stats_types(cur):

    for gender in GENDERS:
        insert(cur, "gender", gender)
    
    for stat in STAT_TYPES:
        insert(cur, "stats_type", stat)
    

    
