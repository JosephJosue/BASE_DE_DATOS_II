CREATE TABLE customers(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	last_name VARCHAR(255)
);

CREATE TABLE developers(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255)
);

CREATE TABLE videogames(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	release_date DATE,
	genre VARCHAR(255),
	rating VARCHAR(255),
	developers_id INT,
	FOREIGN KEY (developers_id) REFERENCES developers(id)
);

CREATE TABLE products(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	platform VARCHAR(255),
	price FLOAT, 
	videogames_id INT,
	FOREIGN KEY(videogames_id) REFERENCES videogames(id)
);

CREATE TABLE purchase(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	purchase_date DATE,
	customers_id INT,
	FOREIGN KEY (customers_id) REFERENCES customers(id)
);

CREATE TABLE purchase_details(
	purchase_id INT NOT NULL,
	products_id INT NOT NULL,
	PRIMARY KEY(purchase_id, products_id),
	FOREIGN KEY(purchase_id) REFERENCES purchase(id),
	FOREIGN KEY(products_id) REFERENCES products(id)
);

-- INSERCIÓN DE REGISTROS
INSERT INTO taller_videojuegos.developers (name) VALUES
	('Nintendo'),
	('Rockstar Games'),
	('CD Projekt Red'),
	('FromSoftware');

INSERT INTO taller_videojuegos.customers (name, last_name) VALUES 
	('Joseph', 'Loo'),
	('Adina', 'Saenz'),
	('Carlos', 'Rodriguez');

INSERT INTO taller_videojuegos.videogames (name, release_date, genre, rating, developers_id) VALUES
	('The Legend of Zelda: Tears of the Kingdom', '2023-05-12', 'Action-Adventure', 'E10+', 1),
	('Red Dead Redemption 2', '2018-10-26', 'Action-Adventure', 'M', 2),
	('Cyberpunk 2077', '2020-12-10', 'Action RPG', 'M', 3),
	('Elden Ring', '2022-02-25', 'Action RPG', 'M', 4),
	('Grand Theft Auto V', '2013-09-17', 'Action-Adventure', 'M', 2);

INSERT INTO taller_videojuegos.products (videogames_id, platform, price) VALUES
	(1, 'Nintendo Switch', 59.99),
	(2, 'Playstation 4', 39.99),
	(2, 'PC', 39.99),
	(3, 'Playstation 5', 29.99),
	(4, 'Playstation 5', 49.99),
	(4, 'PC', 49.99),
	(5, 'Playstation 5', 19.99),
	(5, 'Xbox Series X', 19.99);

INSERT INTO taller_videojuegos.purchase (purchase_date, customers_id) VALUES
	('2025-06-10', 1),
	('2025-06-12', 2),
	('2025-06-14', 1),
	('2025-06-15', 3);

INSERT INTO taller_videojuegos.purchase_details (purchase_id, products_id) VALUES
	(1, 1),
	(1, 7),
	(2, 2), 
	(2, 4), 
	(2, 5), 
	(3, 3), 
	(3, 6),
	(3, 8),
	(4, 1),
	(4, 5);

-- CREAR UNA VISTA
CREATE OR REPLACE VIEW `Vista_Detalle_Compras` AS
SELECT
    `p`.`id` AS `id_compra`,
    `p`.`purchase_date` AS `fecha_compra`,
    `c`.`name` AS `nombre_cliente`,
    `c`.`last_name` AS `apellido_cliente`,
    `vg`.`name` AS `nombre_videojuego`,
    `d`.`name` AS `desarrollador`,
    `vg`.`genre` AS `genero`,
    `pr`.`platform` AS `plataforma`,
    `pr`.`price` AS `precio`
FROM
    `purchase_details` AS `pd`
JOIN
    `purchase` AS `p` ON `pd`.`purchase_id` = `p`.`id`
JOIN
    `customers` AS `c` ON `p`.`customers_id` = `c`.`id`
JOIN
    `products` AS `pr` ON `pd`.`products_id` = `pr`.`id`
JOIN
    `videogames` AS `vg` ON `pr`.`videogames_id` = `vg`.`id`
JOIN
    `developers` AS `d` ON `vg`.`developers_id` = `d`.`id`
ORDER BY
    `p`.`purchase_date` DESC, `p`.`id` ASC;

-- UTILIZANDO LA VISTA CREADA
SELECT * FROM Vista_Detalle_Compras;

SELECT *
FROM Vista_Detalle_Compras
WHERE nombre_cliente = 'Joseph' AND apellido_cliente = 'Loo';

SELECT
    nombre_cliente,
    apellido_cliente,
    SUM(precio) AS total_gastado
FROM
    Vista_Detalle_Compras
GROUP BY
    nombre_cliente, apellido_cliente
ORDER BY
    total_gastado DESC;


