from data_generation import utils

def get_generation_id(number, cur):
    cur.execute("SELECT pk_generation FROM pokemon.generation WHERE number = %s", (number,))
    generation_id = cur.fetchone()
    return generation_id[0]

def get_type_id(type_name, cur):
    cur.execute("SELECT pk_type FROM pokemon.type WHERE name = %s", (type_name,))
    result = cur.fetchone()
    return result[0]

def insert_relationship(type_id, generation_id, cur):
    cur.execute("INSERT INTO pokemon.type_has_generation (fk_type, fk_generation) VALUES (%s, %s)", (type_id, generation_id))
    query = f"INSERT INTO pokemon.type_has_generation (fk_type, fk_generation)\nVALUES ({type_id}, {generation_id});"
    return query

def manage_relationship(cur, generation, type_id, script):
    generation_id = get_generation_id(generation, cur)
    query = insert_relationship(type_id, generation_id, cur)
    utils.write_query_to_file(script, query)

def perform_insertion(cur, script, upper_generations_limit):
    cur.execute("SELECT name FROM pokemon.type")
    result = cur.fetchall()
    number_of_types = len(result)

    header = "-- TYPE_GENERATION_RELATIONSHIP\n-- TYPE_GENERATION_RELATIONSHIP\n-- TYPE_GENERATION_RELATIONSHIP\n\n"
    utils.write_header(script, header)

    # Inserts the relationships between generations and types
    # Some specific types are featured only in certain generations (??? and shadow)
    # Some specific types were introduced in a specific generation (steel, dark and fairy)
    for i in range(0, number_of_types):
        type_name = result[i][0]
        type_id = get_type_id(type_name, cur)

        if (type_name == 'fairy'):
            for j in range(6, upper_generations_limit):
                manage_relationship(cur, j, type_id, script)
        
        elif (type_name == 'steel' or type_name == 'dark'):
            for j in range(2, upper_generations_limit):
                manage_relationship(cur, j, type_id, script)
        
        elif (type_name == '???'):
            for j in range(2, 5):
                manage_relationship(cur, j, type_id, script)

        elif (type_name == 'shadow'):
            manage_relationship(cur, 3, type_id, script)

        else:
            for j in range(1, upper_generations_limit):
                manage_relationship(cur, j, type_id, script)

    utils.write_ending_blank_lines(script)