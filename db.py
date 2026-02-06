import mysql.connector
import os

def connect_to_db():

    conn = mysql.connector.connect(
        host=os.getenv("DB_HOST"), 
        user=os.getenv("DB_USER"),    
        password=os.getenv("DB_PASSWORD"),
        database=os.getenv("DB_NAME")   
    )

    return conn

def commit_data(conn):
    conn.commit()


def close_connection_to_db(conn, cur):
    conn.commit()
    cur.close()
    conn.close()
    