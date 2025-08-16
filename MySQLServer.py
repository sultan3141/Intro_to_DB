import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="sultan",
        password="1234"
    )
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print("Error:", err)
finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
