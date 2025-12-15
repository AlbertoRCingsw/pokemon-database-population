import time
from pathlib import Path
from data_generation import utils

def get_type_data(type_id):
    
    type_directory = Path("./types")
    entity_name = str(type_directory)[:-1]

    data = utils.create_directory_and_return_data(type_directory, entity_name, type_id)
    name = data["name"]

    return (name,)


def insert_types(cur, script, upper_types_limit):
    
    header = "-- TYPE\n-- TYPE\n-- TYPE\n\n"
    utils.write_header(script, header)
    
    # Iterating through every type
    for i in range(1, upper_types_limit):  
        try:
            data = get_type_data(i)
            cur.execute("INSERT INTO pokemon.type (name)\nVALUES (%s)", data)
            print(f"✅ Inserting type #{i}: {data[0]}")

            query = f"INSERT INTO pokemon.type (name)\nVALUES ('{data[0]}');"
            utils.write_query_to_file(script, query)

        except Exception as e:
            print(f"❌ Error with type #{i}: {e}")
    
    # Since the database models every generation, it has to include
    # these types: ??? and shadow. They were used in previous generations
    try: 
        mystery = ('???',)
        cur.execute("INSERT INTO pokemon.type (name)\nVALUES (%s)", mystery)
        print(f"✅ Inserting special type")
        
        query = f"INSERT INTO pokemon.type (name)\nVALUES ('{mystery[0]}');"
        utils.write_query_to_file(script, query)


        shadow = ('shadow',)
        cur.execute("INSERT INTO pokemon.type (name)\nVALUES (%s)", shadow)
        print(f"✅ Inserting special type")
        
        query = f"INSERT INTO pokemon.type (name)\nVALUES ('{shadow[0]}');"
        utils.write_query_to_file(script, query)
        
    except Exception as e:
        print(f"❌ Error with one special type: {e}")

    utils.write_ending_blank_lines(script)