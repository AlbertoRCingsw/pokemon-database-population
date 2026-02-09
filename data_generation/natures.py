from data_generation import utils

def process_and_insert_natures(cur, natures, natures_directory, entity_name):

    for nature_index in natures:
        name = nature_index["name"]
        url = nature_index["url"]
        nature_data = utils.create_entity_directory_and_return_data(natures_directory, entity_name, name, url)
        
        increased_stat = nature_data.get("increased_stat")
        decreased_stat = nature_data.get("decreased_stat")
        
        neutral = False
        if increased_stat is None or decreased_stat is None:
            neutral = True
        else:
            increased_stat = increased_stat["name"]
            decreased_stat = decreased_stat["name"]
        
        nature_tuple = (name, neutral, increased_stat, decreased_stat)

        cur.execute("INSERT INTO pokemon.nature (name, neutral, stat_up, stat_down) " \
                    "VALUES (%s, %s, %s, %s)", nature_tuple)


def insert_natures(cur, natures_directory):
    
    entity_name = "nature"
    natures = utils.get_entity_data(entity_name)

    process_and_insert_natures(cur, natures, natures_directory, entity_name)





    