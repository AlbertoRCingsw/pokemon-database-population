import requests
from bs4 import BeautifulSoup

def update_special_stat(cur, pokemon, special):
    cur.execute('SELECT pk_form FROM pokemon.form WHERE name = %s', (pokemon,))
    form_id = cur.fetchone()
    cur.execute('UPDATE pokemon.base_stats SET base_special = %s WHERE fk_form = %s', (special, form_id[0]))

def insert_special_stat(cur):

    url = 'https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_base_stats_in_Generation_I'

    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    # Extracts the correct table
    pokemon_table = soup.find_all('table')[1]

    # Extracts the rows data from the table
    column_data = pokemon_table.find_all('tr')
    
    special_stat_list = [] 
    name_column = 2 
    base_special_column = 7
    
    for row in column_data:
        row_data = row.find_all('td') # Data froma specific row
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

        if (pokemon.startswith('Nidoran') and nidoran_counter > 0):
            pokemon1 = 'nidoran-f'
            pokemon2 = 'nidoran-m'
            update_special_stat(cur, pokemon1, special)
            update_special_stat(cur, pokemon2, special)
            nidoran_counter -= 1
        elif (pokemon.endswith('me') and not pokemon.startswith('Vi')):
            pokemon = 'mr-mime'
            update_special_stat(cur, pokemon, special)
        elif (pokemon.startswith('Farf')):
            pokemon = 'farfetchd'
            update_special_stat(cur, pokemon, special)
        elif (not pokemon.startswith('Nidoran')):
            update_special_stat(cur, pokemon.lower(), special)

