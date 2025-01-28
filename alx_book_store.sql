CREATE TABLE books(boo_id  INT AUTO_INCREMENT  PRIMARY KEY,title VARCHAR(130) NOT NULL,author_id INT ,FOREIGN KEY (author_id) REFERENCES Authors(author_id),price DOUBLE NOT NULL,publication_date DATE);
CREATE TABLE Authors(author_id INT AUTO_INCREMENT PRIMARY KEY,author_name VARCHAR(215)NOT NULL);
CREATE TABLE Customers(customer_id INT PRIMARY,customer_name VARCHAR(215) NOT NULL,email VARCHAR(215) NOT NULL ,address TEXT);
CREATE TABLE Orders(order_id INT AUTO_INCREMENT PRIMARY KEY, customer_id INT, FOREIGN KEY(customer_id) REFERENCES customerS(customer_id),order_date DATE);
CREATE TABLE Order_Details(orderdetailid INT AUTO_INCREMENT PRIMARY KEY,order_id  INT,FOREIGN KEY(order_id) REFERENCES Orders(order_id),FOREIGN KEY(book_id ) REFERENCES books(book_id),quantity DOUBLE);
