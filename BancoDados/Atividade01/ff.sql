-- Criação do banco de dados restaurante
CREATE DATABASE restaurante;

-- Criação das tabelas
USE restaurante;

CREATE TABLE mesa (
    id_table INT AUTO_INCREMENT PRIMARY KEY,
    capacidade INT,
    valor_hora FLOAT
);

CREATE TABLE clients (
    id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nomes_clientes VARCHAR(255),
    emails_clientes VARCHAR(255)
);

CREATE TABLE products (
    id_products INT AUTO_INCREMENT PRIMARY KEY,
    nomes_product VARCHAR(255),
    precos_product FLOAT
);

-- Tabela que relaciona as mesas com os pedidos
CREATE TABLE orders (
    id_orders INT AUTO_INCREMENT PRIMARY KEY,
    id_table INT,
    id_clientes INT,
    datas DATE,
    reserva ENUM('reservado', 'cancelado', 'aberto', 'pagamento', 'fechado'),
    FOREIGN KEY (id_table) REFERENCES mesa(id_table),
    FOREIGN KEY (id_clientes) REFERENCES clients(id_clientes)
);

CREATE TABLE product_orders (
    id_orders INT,
    id_products INT,
    quantidade INT,
    FOREIGN KEY (id_orders) REFERENCES orders(id_orders),
    FOREIGN KEY (id_products) REFERENCES products(id_products),
    PRIMARY KEY (id_orders, id_products)
);