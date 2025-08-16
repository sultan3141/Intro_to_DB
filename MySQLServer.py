import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="sultan",
    password="1234",
    database="testdb"
)

mycursor=mydb.cursor()

mycursor.execute(
  """CREATE TABLE IF NOT EXISTS alx_book_store(
  id INT PRIMARY KEY,
  name VARCHAR(200),
  )
  print("'alx_book_store' created successfully!")
