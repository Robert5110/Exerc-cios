--Criação do banco de dados restaurante	
CREATE database restaurante;

--Criação das tabelas
use restaurante;

CREATE TABLE mesa (
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
prices_product float,
);

--Tabela que relaciona as mesas com os pedidos
CREATE TABLE orders (
id_orders INT PRIMARY KEY,
tId INT,
cId INT,
dates DATE,
status ENUM('reservado', 'cancelado', 'aberto', 'pagamento', 'fechado'),
FOREIGN KEY (tId) REFERENCES mesa(id_table),
FOREIGN KEY (cId) REFERENCES clients(id_clients)
);


CREATE TABLE productsches (
sId INT,
pId INT,
quantitys INT,
FOREIGN KEY (sId) REFERENCES orders(id),
FOREIGN KEY (pId) REFERENCES products(id),
PRIMARY KEY (sId, pId)
);