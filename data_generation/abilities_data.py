from data_generation import utils
from pathlib import Path


def insert_ability(cur, ability_name, generation_number, ability_description):  
    cur.execute("INSERT INTO pokemon.ability (name, fk_generation, description) " \
                "VALUES (%s, %s, %s)", (ability_name, generation_number, ability_description))
    return cur.lastrowid

def insert_abilities(cur, generation_number, abilities_directory):

    generation_data = utils.get_generation_data(generation_number)
    generation_abilities = generation_data["abilities"]

    first_version_group_name = generation_data["version_groups"][0]["name"]

    for i in range(0, len(generation_abilities)):
        ability_name = generation_abilities[i]["name"]
        ability_json = utils.create_directory_and_return_data(abilities_directory, ability_name)

        ability_description = "There is no English description available."
        ability_flavor_text = ability_json.get("flavor_text_entries")
        if (ability_flavor_text is not None):
            i = 0

            while i < len(ability_flavor_text) and i >= 0:
        
                flavor_text = ability_flavor_text[i]
                language = flavor_text["language"]["name"]
                version_group = flavor_text["version_group"]["name"]
                
                if (language == "en" and version_group == first_version_group_name):
                    ability_description = flavor_text["flavor_text"]
                    i = -1
                else:
                    i += 1

        ability_id = insert_ability(cur, ability_name, generation_number, ability_description)

        print(f"Inserted ability {ability_name}")

        for j in range(0, len(ability_json["pokemon"])):
            pokemon_name = ability_json["pokemon"][j]["pokemon"]["name"]
            cur.execute("SELECT f.pk_form, f.name FROM pokemon.form f WHERE f.name = %s", (pokemon_name,))
            form_id = cur.fetchone()[0]

            is_hidden = ability_json["pokemon"][j]["is_hidden"]
            slot = ability_json["pokemon"][j]["slot"]
            cur.execute("INSERT INTO pokemon.form_has_ability (fk_ability, fk_form, slot, is_hidden) " \
                        "VALUES (%s, %s, %s, %s)", (ability_id, form_id, slot, is_hidden))

        print(f"Finished with ability: {ability_name}")
