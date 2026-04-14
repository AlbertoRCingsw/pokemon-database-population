import mysql.connector
import os

from typing import Any
from mysql.connector.cursor import MySQLCursor

from data_population import utils
from logger_config import logger

def connect_to_db():
    try:
        connection = mysql.connector.connect(
            host=os.getenv("DB_HOST"), 
            user=os.getenv("DB_USER"),    
            password=os.getenv("DB_PASSWORD"),
            database=os.getenv("DB_NAME")   
        )
    except Exception:
        logger.info("Something went wrong when connecting to the database", exc_info=True)
        raise

    return connection

def commit_data(connection):
    connection.commit()


def close_connection_to_db(connection, cursor):
    connection.commit()
    cursor.close()
    connection.close()

def simple_select(cursor: MySQLCursor, table_name: str, output_tuple_string: str, where_fields: tuple | str, where_values: tuple | int | str | bool, fetch = "one"):
    '''
    Retrieves a row in the db with he columns specified by output_tuple_string.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        table_name (str): The table where the row will be selected.
        output_tuple_string (str):  The fields in the SELECT part of the query, in the 'col1, col2, col3' format.
        where_fields (tuple): The values corresponding to each attribute's column. It may be None.
        where_values (tuples): The values to which the columns must be equal to. It may be None.
        fetch (str): Default value: one. "all" is the only other valid argument
    Returns:
        return_tuple (tuple): The tuple containing the query's output.
    '''
    query_string = "SELECT "
    query_string += output_tuple_string + " "
    query_string += f"FROM pokemon.{table_name} "
    
    if where_fields and where_values:
        where_fields = utils.convert_to_tuple(where_fields)
        where_values = utils.convert_to_tuple(where_values)
        query_string += "WHERE "
        query_string += " AND ".join([f"{x} = %s" for x in where_fields])

    cursor.execute(query_string, where_values if where_values else None)

    if (fetch.lower() == "one"):
        return cursor.fetchone()
    else:
        return cursor.fetchall()

def simple_insert(cursor: MySQLCursor, table_name: str, attributes_tuple: str, values_tuple: tuple) -> int:
    '''
    Inserts a row into the specified table using a parameterized SQL query.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        table_name (str): The table where the row will be inserted.
        attributes_tuple (str): The table's fields corresponding to the values being inserted. In the form '(col1, col2, col3)'.
        values_tuple (tuple): The values corresponding to each attribute's column.
        values_tuple (tuple): The values to which the columns must be equal to.
    Returns:
        lastrowid (int): The inserted row's id.
    '''
    query_string = f"INSERT INTO pokemon.{table_name} "
    query_string += attributes_tuple 
    query_string += " VALUES (" + ", ".join(['%s'] * len(values_tuple)) + ")"
    
    cursor.execute(query_string, values_tuple)
    return cursor.lastrowid
    
def simple_update(cursor: MySQLCursor, table_name: str, set_fields: tuple, set_values: tuple, where_fields: tuple | str | bool | int, where_values: tuple | str | bool | int):
    '''
    Updates a row in the database using a parameterized SQL query.
    
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        table_name (str): The name of the table where the row to eb updated is.
        set_fields (tuple): The table's fields corresponding to the values being updated. In the form ('col1', 'col2', 'col3').
        set_values (tuple): The corresponding values to be updated for each field in set_fields.
        where_fields (tuple): The columns that must satisfy a restriction. The restriction uses the = operator. 
        where_values (tuple): The values to which the columns must be equal to.
    '''
    query_string = f"UPDATE pokemon.{table_name} "
    query_string += "SET "
    query_string += ", ".join([f"{x} = %s" for x in set_fields])
    query_values = set_values

    if where_fields and where_values:
        where_fields = utils.convert_to_tuple(where_fields)
        where_values = utils.convert_to_tuple(where_values)
        query_string += " WHERE "
        query_string += " AND ".join([f"{x} = %s" for x in where_fields])
        query_values = set_values + where_values
    
    cursor.execute(query_string, query_values)

def simple_delete(cursor: MySQLCursor, table_name: str, where_fields: tuple | bool | str | int, where_values: tuple | bool | str | int):
    
    query_string = "DELETE FROM "
    query_string += table_name

    if where_fields and where_values:
        where_fields = utils.convert_to_tuple(where_fields)
        where_values = utils.convert_to_tuple(where_values)
        query_string += " WHERE "
        query_string += " AND ".join([f"{x} = %s" for x in where_fields])
    
    cursor.execute(query_string, where_values)

def get_pk_by_name(cursor: MySQLCursor, db_entity: str, name: str) -> int:
    '''
    Retrieves the primary key of the necessary row.
    Args:
        cursor (MySQLCursor): The MySQL cursor managing the current connection.
        entity (str): Name of an entity, represented by a table in the database.
        name (str): Identifies a row.

    Returns:
        int: The primary key belonging to the selected row.
    '''
    try:
        result = simple_select(cursor, db_entity, f"pk_{db_entity}", "name", name)
    except Exception:
        logger.error(f"Error in SELECT: Entity - {db_entity} and name = {name}")
        raise
    return result[0] if result else None