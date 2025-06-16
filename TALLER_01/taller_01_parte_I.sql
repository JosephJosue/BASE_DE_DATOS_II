CREATE TABLE orders(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255)
);

CREATE TABLE categories(
	id  INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255)
);

CREATE TABLE foods(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	expiration_date DATE,
	calories INT
);

CREATE TABLE furnitures(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	manufacture_date DATE
);

CREATE TABLE products(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	price FLOAT,
	categories_id INT,
	foods_id INT,
	furnitures_id INT,
	FOREIGN KEY (categories_id) REFERENCES categories(id),
	FOREIGN KEY (foods_id) REFERENCES foods(id),
	FOREIGN KEY (furnitures_id) REFERENCES furnitures(id)
);

CREATE TABLE orders_lines(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	quantity FLOAT,
	products_id INT,
	orders_id INT,
	FOREIGN KEY (products_id) REFERENCES products(id),
	FOREIGN KEY (orders_id) REFERENCES orders(id)
);

INSERT INTO taller_01.orders (name) VALUES 
	('Black Friday'),
	('Fin de año'),
	('Carnavales'),
	('Escolar'),
	('Fiestas Patrias');

INSERT INTO taller_01.categories (name) VALUES 
	('Comida'),
	('Electrodomestico'),
	('Hogar'),
	('Ropas'),
	('Muebles');

INSERT INTO taller_01.foods (expiration_date, calories) VALUES
	('2024-12-31', 100),
	 ('2024-10-31', 500),
     ('2025-01-31', 300),
     ('2026-12-31', 900),
     ('2027-12-31', 700);

INSERT INTO taller_01.furnitures (manufacture_date) VALUES
	('2024-12-31'),
	('2025-12-31'),
	('2026-12-31'),
	('2027-12-31'),
	('2028-12-31');

INSERT INTO taller_01.products (name, price, categories_id, foods_id, furnitures_id) VALUES
		('Carrito de HotDog',2000.0,1,1,1),
		('TV',1890.0,2,2,2),
		('Cama Grande',8.0,3,3,4),
		('Adidas X90',135.0,4,4,4),
		('Closet de Ropa ',2893.0,5,5,5);

INSERT INTO taller_01.orders_lines (quantity,products_id,orders_id) VALUES
	 (4987.0,1,3),
	 (2138.0,2,5),
	 (10.0,4,2),
	 (485.0,5,1),
	 (32987.0,4,4);

SELECT p.id AS "ID Producto", p.name AS "NOMBRE", c.id  AS "ID CATEGORIA", c.name AS "CATEGORIA"
FROM products p
INNER JOIN categories c on c.id = p.categories_id;


CREATE OR REPLACE VIEW vReporteProducto AS
SELECT p.id AS "ID Producto", p.name AS "NOMBRE", c.name AS "CATEGORIA"
FROM products p
INNER JOIN categories c on c.id = p.categories_id;

SELECT  * from vReporteProducto;

SELECT * FROM vReporteProducto

