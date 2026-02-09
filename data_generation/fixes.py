def fix_data(cur):

    # Blizzard's power in gen 1
    cur.execute("UPDATE pokemon.move_version " \
                "SET power = %s " \
                "WHERE name = %s AND fk_generation = %s", (120, "blizzard", 1))
    
    # Recover had 10 PP in Gen 4
    recover_update_tuple = (9, "recover", 4)
    cur.execute("UPDATE pokemon.move_version " \
                "SET fk_generation = %s " \
                "WHERE name = %s AND fk_generation = %s", recover_update_tuple)
    

    recover_insert_tuple = ("recover", 1, 0, 0, 10, 4, "recover")
    cur.execute("INSERT INTO pokemon.move_version " \
                "(fk_move, name, fk_type, power, accuracy, power_points, fk_generation) " \
                "SELECT m.pk_move, %s, %s, %s, %s, %s, %s " \
                "FROM pokemon.move AS m " \
                "WHERE m.name = %s", recover_insert_tuple)
    
    # Toxic's number of turns
    toxic_tuple = (1, 1, "toxic")
    cur.execute("UPDATE pokemon.move m " \
                "SET m.min_turns = %s, m.max_turns = %s " \
                "WHERE m.name = %s LIMIT 1", toxic_tuple)
