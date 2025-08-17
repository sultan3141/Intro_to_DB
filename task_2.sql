CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE IF NOT EXISTS Books(
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  price DOUBLE,
  publication_date DATE,
  FOREIGN KEY author_id REFERENCING Authors(author_id)
  );
  
CREATE TABLE IF NOT EXISTS Authors(
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS Customers(
 customer_id INT PRIMARY KEY,
 customer_name VARCHAR(215) NOT NULL,
 email VARCHAR(215),
 address TEXT
);
CREATE TABLE IF NOT EXISTS Orders(
 order_id INT PRIMARY KEY,
 customer_id INT,
 order_date DATE
 FOREIGN KEY customer_id REFERENCING Customers(customer_id),
);
CREATE TABLE IF NOT EXISTS Order_Details(
 orderdetailid INT PRIMARY KEY,
 quantity DOUBLE,
 FOREIGN KEY order_id REFERENCING Orders(order_id),
 FOREIGN KEY book_id REFERENCING Books(book_id)
 
);
