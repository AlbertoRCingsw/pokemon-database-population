import requests
from bs4 import BeautifulSoup

url = 'https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_base_stats_in_Generation_I'

response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

pokemon_table = soup.find_all('table')[1]

aux_column_titles = pokemon_table.find_all('th')

column_titles = [title.text.strip() for title in aux_column_titles]

print(column_titles)

column_data = pokemon_table.find_all('tr')
print(column_data)
special_stat_list = []

for row in column_data:
    row_data = row.find_all('td')
    individual_row_data = [data.text.strip() for data in row_data]
    if (individual_row_data != [] and individual_row_data is not None):
        special_stat = {}
        special_stat["pokemon"] = individual_row_data[2]
        special_stat["special_stat"] = individual_row_data[7]
        special_stat_list.append(special_stat)

nidoran_counter = 1
for special_stat in special_stat_list:
    pokemon = special_stat["pokemon"]
    special = special_stat["special_stat"]