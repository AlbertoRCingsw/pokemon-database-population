import mysql.connector

def connect_to_db():

    conn = mysql.connector.connect(
        host="localhost", 
        user="pokemon",    
        password="Pokemon1",
        database="pokemon"   
    )

    return conn

def commit_data(conn):
    conn.commit()


def close_connection_to_db(conn, cur):
    conn.commit()
    cur.close()
    conn.close()
    