import mysql.connector
from mysql.connector import Error
def create_database():
    try:
        connection= mysql.connector.connect(
            Host= "local@host"
            User="bazirake"
            Password="20250228"
        )
        if connection.is_connected():
            cusor=connection.cusor()
            cusor.execute=("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
    except mysql.connector.Error as e :
        print(F"{e}")
    finally:
        if connection.is_connected():
            cusor.close()
            connection.close()
if __name__ == "__main__":
  create_database()

    
