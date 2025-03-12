CREATE TABLE table (
id_table INT auto_increment PRIMARY KEY ,
locations INT,
hourvalues float,
);


CREATE TABLE clients (
id_clientes INT auto_increment PRIMARY KEY,
names_clientes VARCHAR(255),
emails_clientes VARCHAR(255)
);

CREATE TABLE products (
id INT auto_increment PRIMARY KEY,
names_product VARCHAR(255),
prices_product DECIMAL(10,2)
);

CREATE TABLE orders (
id INT PRIMARY KEY,
tId INT,
cId INT,
dates DATE,
status ENUM('reserved', 'canceled', 'open', 'payment', 'closed'),
FOREIGN KEY (tId) REFERENCES locations(id),
FOREIGN KEY (cId) REFERENCES clients(id)
);

CREATE TABLE productsches (
sId INT,
pId INT,
quantitys INT,
FOREIGN KEY (sId) REFERENCES orders(id),
FOREIGN KEY (pId) REFERENCES products(id),
PRIMARY KEY (sId, pId)
);