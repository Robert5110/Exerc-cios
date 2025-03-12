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
id_products INT auto_increment PRIMARY KEY,
names_product VARCHAR(255),
prices_product float,
);

--Tabela que relaciona as mesas com os pedidos
CREATE TABLE orders (
id_orders INT PRIMARY KEY,
id_table INT,
id_clientes INT,
dates DATE,
reserva ENUM('reservado', 'cancelado', 'aberto', 'pagamento', 'fechado'),
FOREIGN KEY (id_table) REFERENCES mesa(id_table),
FOREIGN KEY (id_clientes) REFERENCES clients(id_clientes)
);


CREATE TABLE productsches (
id_orders INT,
id_products INT,
quantitys INT,
FOREIGN KEY (id_orders) REFERENCES orders(id_orders),
FOREIGN KEY (id_products) REFERENCES products(id_products),
PRIMARY KEY (id_orders, id_products)
);