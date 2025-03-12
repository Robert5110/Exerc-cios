--Adicionar dados na tabelas populations

--Adição de dados na tabela mesa
insert into mesa(locations, hourvalues) values (14, 4.0);
insert into mesa(locations, hourvalues) values (12, 3.0);
insert into mesa(locations, hourvalues) values (10, 5.0);

--Adição de dados na tabela clients
insert into clients(names_clientes, emails_clientes) values ('Laurindo', 'email@email');
insert into clients(names_clientes, emails_clientes) values ('Claudia', 'email2@email');
insert into clients(names_clientes, emails_clientes) values ('Laura', 'email3@email');

--Adição de dados na tabela products
insert into products(names_product, prices_product) values ('Ovo Frito', 4.0);
insert into products(names_product, prices_product) values ('Hamburger', 10.0);
insert into products(names_product, prices_product) values ('Picanha', 200);
insert into products(names_product, prices_product) values ('Café', 45.0);

--Adição de dados na tabela orders
insert into orders(id_orders, id_table, id_clientes, dates, reserva) values (1, 1, 2, '2025-03-29', 'aberto');
insert into orders(id_orders, id_table, id_clientes, dates, reserva) values (2, 3, 1, '2025-03-01', 'aberto');

--Adição de dados na tabela productsches
insert into productsches(id_orders, id_products, quantitys) values (1, 3, 'aberto');
insert into productsches(id_orders, id_products, quantitys) values (1, 2, 'aberto');
