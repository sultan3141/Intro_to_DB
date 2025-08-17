CREATE TABLE IF NOT EXISTS Books(
  book_id INTEGER PRIMARY KEY,
  title VARCHAR(130),
  author_id FOREIGN KEY REFERENCING Authors TABLE,
  price DOUBLE,
  publication_date DATE
  );
  
CREATE TABLE IF NOT EXISTS Authors(
  author_id PRIMARY KEY,
  author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS Customers(
 customer_id PRIMARY KEY,
 customer_name VARCHAR(215) NOT NULL,
 email VARCHAR(215),
 address TEXT
);
CREATE TABLE IF NOT EXISTS Orders(
 order_id PRIMARY KEY,
 customer_id FOREIGN KEY REFERENCING Customers TABLE,
 order_date DATE
);
CREATE TABLE IF NOT EXISTS Order_Details(
 orderdetailid PRIMARY KEY,
 order_id FOREIGN KEY REFERENCING Orders TABLE,
 book_id FOREIGN KEY REFERENCING Books TABLE,
 quantity DOUBLE
  );
