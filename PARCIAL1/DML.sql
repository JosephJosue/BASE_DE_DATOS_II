-- Usar la base de datos creada
USE parcial_01;

-- =================================================================
-- INSERCIONES PARA LA TABLA 'tipo_usuario'
-- =================================================================
INSERT INTO parcial_01.tipo_usuario (tipo_de_usuario) VALUES 
	('Cliente'), ('Administrador'), ('Vendedor'), ('Ejecutivo'), ('Otro');

-- =================================================================
-- INSERCIONES PARA LA TABLA 'usuarios'
-- =================================================================
INSERT INTO parcial_01.usuarios (nombre, apellido, nombre_usuario, token, contrasena, ciudad, sexo, estado_civil, tipo_de_empresa, direccion, id_tipo_usuario) VALUES
	('Juan', 'Perez', 'juan.perez', 12345, 'clave123', 'Ciudad de Panama', 'M', 'soltero', 'privada', 'Calle 123, Casa 1', 1),
	('Maria', 'Gomez', 'maria.gomez', 54321, 'clave456', 'Colon', 'F', 'casado', 'publica', 'Avenida Central, #45', 2),
	('Carlos', 'Rodriguez', 'carlos.r', 67890, 'clave789', 'David', 'M', 'soltero', 'privada', 'Barriada El Sol, Lote 8', 3),
	('Ana', 'Martinez', 'ana.martinez', 13579, 'clave101', 'Santiago', 'F', 'casado', 'publica', 'Calle Q, Edificio A', 4),
	('Luis', 'Hernandez', 'luis.h', 24680, 'clave202', 'Chitre', 'M', 'soltero', 'privada', 'Urbanizacion Las Palmas', 5),
	('Sofia', 'Lopez', 'sofia.lopez', 98765, 'clave303', 'Ciudad de Panama', 'F', 'soltero', 'privada', 'Calle 50, Apto 3B', 1),
	('Javier', 'Diaz', 'javier.d', 11223, 'clave404', 'David', 'M', 'casado', 'publica', 'Via Boquete, km 5', 2),
	('Laura', 'Sanchez', 'laura.s', 33445, 'clave505', 'Colon', 'F', 'soltero', 'privada', 'Zona Libre, Local 15', 3),
	('Miguel', 'Torres', 'miguel.t', 55667, 'clave606', 'La Chorrera', 'M', 'casado', 'publica', 'Barrio Balboa, Casa 10', 4),
	('Elena', 'Ramirez', 'elena.r', 77889, 'clave707', 'Santiago', 'F', 'soltero', 'privada', 'Avenida Sur, #22', 1),
	('Pedro', 'Flores', 'pedro.f', 99001, 'clave808', 'Chitre', 'M', 'soltero', 'privada', 'Residencial Los Santos', 2),
	('Isabel', 'Acosta', 'isabel.a', 22334, 'clave909', 'David', 'F', 'casado', 'publica', 'Calle F, Casa 11-A', 3),
	('Ricardo', 'Benitez', 'ricardo.b', 44556, 'clave111', 'Ciudad de Panama', 'M', 'soltero', 'privada', 'Costa del Este, PH Vista', 4),
	('Carmen', 'Medina', 'carmen.m', 66778, 'clave222', 'Colon', 'F', 'casado', 'publica', 'Margarita, Calle 1', 5),
	('Fernando', 'Castillo', 'fernando.c', 88990, 'clave333', 'La Chorrera', 'M', 'soltero', 'privada', 'Plaza Italia, Local 3', 1),
	('Gabriela', 'Ortiz', 'gabriela.o', 10111, 'clave444', 'Santiago', 'F', 'soltero', 'publica', 'Calle Decima, #14', 2),
	('Jorge', 'Jimenez', 'jorge.j', 21222, 'clave555', 'David', 'M', 'casado', 'privada', 'Doleguita, Casa 9', 3),
	('Patricia', 'Reyes', 'patricia.r', 32333, 'clave666', 'Ciudad de Panama', 'F', 'soltero', 'privada', 'Via Argentina, El Cangrejo', 4),
	('Raul', 'Nuñez', 'raul.n', 43444, 'clave777', 'Chitre', 'M', 'casado', 'publica', 'Monagrillo, Calle Principal', 1),
	('Monica', 'Vega', 'monica.v', 54555, 'clave888', 'Colon', 'F', 'soltero', 'privada', 'Sabanitas, Barriada Nueva', 2),
	('Andres', 'Morales', 'andres.m', 65666, 'clave999', 'Santiago', 'M', 'soltero', 'privada', 'Canto del Llano, Casa 25', 1),
	('Silvia', 'Rojas', 'silvia.r', 76777, 'clave121', 'David', 'F', 'casado', 'publica', 'San Mateo, Calle A', 2),
	('Oscar', 'Castro', 'oscar.c', 87888, 'clave232', 'Ciudad de Panama', 'M', 'soltero', 'privada', 'Paitilla, PH Miramar', 3),
	('Beatriz', 'Paredes', 'beatriz.p', 98999, 'clave343', 'La Chorrera', 'F', 'casado', 'publica', 'Anclas Mall, Oficina 10', 4),
	('Eduardo', 'Guerrero', 'eduardo.g', 19181, 'clave454', 'Chitre', 'M', 'soltero', 'privada', 'Avenida Perez, #7', 5),
	('Daniela', 'Serrano', 'daniela.s', 28272, 'clave565', 'Colon', 'F', 'soltero', 'privada', 'Calle 16, Edificio Colon', 1),
	('Francisco', 'Vega', 'francisco.v', 37363, 'clave676', 'David', 'M', 'casado', 'publica', 'Terronal, Cerca del Mall', 2),
	('Natalia', 'Mendoza', 'natalia.m', 46454, 'clave787', 'Ciudad de Panama', 'F', 'soltero', 'privada', 'Obarrio, Torre Global', 3),
	('Roberto', 'Cruz', 'roberto.c', 55545, 'clave898', 'Santiago', 'M', 'casado', 'publica', 'Plaza Rosalia, #12', 4),
	('Adriana', 'Leon', 'adriana.l', 64636, 'clave909', 'La Chorrera', 'F', 'soltero', 'privada', 'Costa Verde, Casa 150', 1),
	('Mario', 'Solis', 'mario.s', 73727, 'clave112', 'Chitre', 'M', 'soltero', 'privada', 'Villa de Los Santos, #8', 2),
	('Valeria', 'Rios', 'valeria.r', 82818, 'clave223', 'David', 'F', 'casado', 'publica', 'Boqueron, Centro', 3),
	('Alberto', 'Ibarra', 'alberto.i', 91909, 'clave334', 'Ciudad de Panama', 'M', 'soltero', 'privada', 'San Francisco, Calle 70', 4),
	('Paula', 'Correa', 'paula.c', 10203, 'clave445', 'Colon', 'F', 'casado', 'publica', 'Puerto Escondido, #3', 5),
	('Simon', 'Bolivar', 'simon.b', 20304, 'clave556', 'Santiago', 'M', 'soltero', 'privada', 'Avenida Central, #190', 1),
	('Cristina', 'Lara', 'cristina.l', 30405, 'clave667', 'La Chorrera', 'F', 'soltero', 'publica', 'Guadalupe, Casa 5B', 2),
	('Hector', 'Soto', 'hector.s', 40506, 'clave778', 'David', 'M', 'casado', 'privada', 'Volcan, Calle Principal', 3),
	('Marcela', 'Pineda', 'marcela.p', 50607, 'clave889', 'Ciudad de Panama', 'F', 'soltero', 'privada', 'Via Porras, Apto 7C', 4),
	('Ivan', 'Campos', 'ivan.c', 60708, 'clave990', 'Chitre', 'M', 'casado', 'publica', 'La Arena, Cerca del Parque', 1),
	('Gloria', 'Montenegro', 'gloria.m', 70809, 'clave001', 'Colon', 'F', 'soltero', 'privada', 'France Field, Bodega 21', 2);

-- =================================================================
-- INSERCIONES PARA LA TABLA 'agente_usuario'
-- =================================================================
INSERT INTO parcial_01.agente_usuario (agente, sistema_operativo, hardware) VALUES
	('Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Windows 10', 'Intel Core i7'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', 'macOS Big Sur', 'Apple M1'),
	('Mozilla/5.0 (X11; Linux x86_64)', 'Ubuntu 20.04', 'AMD Ryzen 5'),
	('Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X)', 'iOS 14.6', 'A14 Bionic'),
	('Mozilla/5.0 (Android 11; Mobile; rv:89.0) Gecko/89.0 Firefox/89.0', 'Android 11', 'Snapdragon 888'),
	('Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows 10', 'Intel Core i5'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6)', 'macOS Mojave', 'Intel Core i9'),
	('Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:88.0) Gecko/20100101 Firefox/88.0', 'Fedora 34', 'AMD Ryzen 7'),
	('Mozilla/5.0 (iPad; CPU OS 14_6 like Mac OS X)', 'iPadOS 14.6', 'A12Z Bionic'),
	('Mozilla/5.0 (Linux; Android 10; SM-G975F) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 10', 'Exynos 9820'),
	('Mozilla/5.0 (Windows NT 6.1; Win64; x64)', 'Windows 7', 'Intel Core 2 Duo'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6)', 'macOS High Sierra', 'Intel Core i7'),
	('Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:89.0) Gecko/20100101 Firefox/89.0', 'Ubuntu 20.04 (32-bit)', 'Intel Atom'),
	('Mozilla/5.0 (iPhone; CPU iPhone OS 13_5 like Mac OS X)', 'iOS 13.5', 'A13 Bionic'),
	('Mozilla/5.0 (Linux; Android 9; Pixel 3) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 9', 'Snapdragon 845'),
	('Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'Windows 10', 'AMD Ryzen 9'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 11_4)', 'macOS Big Sur 11.4', 'Apple M1'),
	('Mozilla/5.0 (X11; Debian; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0', 'Debian 10', 'Intel Xeon'),
	('Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X)', 'iOS 15.0', 'A15 Bionic'),
	('Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 12', 'Google Tensor'),
	('Mozilla/5.0 (Windows NT 6.3; Win64; x64)', 'Windows 8.1', 'Intel Core i3'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6)', 'macOS Sierra', 'Intel Core i5'),
	('Mozilla/5.0 (X11; Arch Linux; Linux x86_64; rv:90.0) Gecko/20100101 Firefox/90.0', 'Arch Linux', 'AMD Threadripper'),
	('Mozilla/5.0 (iPad; CPU OS 15_0 like Mac OS X)', 'iPadOS 15.0', 'A14 Bionic'),
	('Mozilla/5.0 (Linux; Android 11; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 11', 'Exynos 9611'),
	('Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0', 'Windows XP', 'Intel Pentium 4'),
	('Mozilla/5.0 (Macintosh; PowerPC Mac OS X 10_5_8)', 'macOS Leopard', 'PowerPC G5'),
	('Mozilla/5.0 (X11; OpenBSD amd64; rv:88.0) Gecko/20100101 Firefox/88.0', 'OpenBSD', 'AMD EPYC'),
	('Mozilla/5.0 (iPhone; CPU iPhone OS 12_4 like Mac OS X)', 'iOS 12.4', 'A12 Bionic'),
	('Mozilla/5.0 (Linux; Android 8.0.0; SM-G960F) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 8.0', 'Exynos 9810'),
	('Mozilla/5.0 (Windows NT 10.0; ARM; Lumia 950) AppleWebKit/537.36 (KHTML, like Gecko)', 'Windows 10 Mobile', 'Snapdragon 808'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', 'OS X El Capitan', 'Intel Core M'),
	('Mozilla/5.t0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'CentOS 8', 'Intel Celeron'),
	('Mozilla/5.0 (iPad; CPU OS 13_7 like Mac OS X)', 'iPadOS 13.7', 'A12 Bionic'),
	('Mozilla/5.0 (Linux; Android 7.0; Moto G (5)) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 7.0', 'Snapdragon 430'),
	('Mozilla/5.0 (Windows NT 6.0; rv:48.0) Gecko/20100101 Firefox/48.0', 'Windows Vista', 'AMD Athlon 64'),
	('Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0', 'OS X Yosemite', 'Intel Core 2 Duo'),
	('Mozilla/5.0 (X11; FreeBSD; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0', 'FreeBSD', 'Intel Atom'),
	('Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X)', 'iOS 11.0', 'A11 Bionic'),
	('Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X) AppleWebKit/537.36 (KHTML, like Gecko)', 'Android 6.0.1', 'Snapdragon 808');


-- =================================================================
-- INSERCIONES PARA LA TABLA 'autenticacion'
-- =================================================================
INSERT INTO parcial_01.autenticacion (id_usuario, id_agente_usuario) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
(1, 5), (2, 6), (3, 7), (4, 8), (5, 1), (6, 2), (7, 3), (8, 4), (9, 15), (10, 16),
(11, 17), (12, 18), (13, 19), (14, 20), (15, 9), (16, 10), (17, 11), (18, 12), (19, 13), (20, 14),
(21, 25), (22, 26), (23, 27), (24, 28), (25, 21), (26, 22), (27, 23), (28, 24), (29, 35), (30, 36),
(31, 37), (32, 38), (33, 39), (34, 40), (35, 29), (36, 30), (37, 31), (38, 32), (39, 33), (40, 34),
(1, 2), (3, 4), (5, 6), (7, 8), (9, 10), (11, 12), (13, 14), (15, 16), (17, 18), (19, 20),
(21, 22), (23, 24), (25, 26), (27, 28), (29, 30), (31, 32), (33, 34), (35, 36), (37, 38), (39, 40);

-- =================================================================
-- INSERCIONES PARA LA TABLA 'pruebas'
-- =================================================================
INSERT INTO parcial_01.pruebas (referencia, nombre, descripcion) VALUES
	('REC001', 'Reconocimiento', 'Fase inicial para recopilar información sobre el objetivo.'),
	('VULN002', 'Análisis de Vulnerabilidades', 'Identificar debilidades y fallos de seguridad en el sistema.'),
	('EXP003', 'Explotación', 'Intentar explotar las vulnerabilidades encontradas para ganar acceso.'),
	('POST004', 'Post-Explotación', 'Mantener acceso y escalar privilegios una vez dentro del sistema.');

-- =================================================================
-- INSERCIONES PARA LA TABLA 'pruebas_usuarios'
-- =================================================================
INSERT INTO parcial_01.pruebas_usuarios (fecha_ingreso, estado, id_prueba, id_usuario) VALUES
	('2023-01-15', 'activo', 1, 1), ('2023-01-16', 'activo', 2, 2), ('2023-01-17', 'activo', 3, 3), ('2023-01-18', 'desactivado', 4, 4),
	('2023-02-10', 'activo', 1, 5), ('2023-02-11', 'activo', 2, 6), ('2023-02-12', 'desactivado', 3, 7), ('2023-02-13', 'activo', 4, 8),
	('2023-03-05', 'activo', 1, 9), ('2023-03-06', 'desactivado', 2, 10), ('2023-03-07', 'activo', 3, 11), ('2023-03-08', 'activo', 4, 12),
	('2023-04-20', 'desactivado', 1, 13), ('2023-04-21', 'activo', 2, 14), ('2023-04-22', 'activo', 3, 15), ('2023-04-23', 'activo', 4, 16),
	('2023-05-15', 'activo', 1, 17), ('2023-05-16', 'activo', 2, 18), ('2023-05-17', 'desactivado', 3, 19), ('2023-05-18', 'activo', 4, 20),
	('2023-06-11', 'activo', 1, 21), ('2023-06-12', 'desactivado', 2, 22), ('2023-06-13', 'activo', 3, 23), ('2023-06-14', 'activo', 4, 24),
	('2023-07-01', 'desactivado', 1, 25), ('2023-07-02', 'activo', 2, 26), ('2023-07-03', 'activo', 3, 27), ('2023-07-04', 'activo', 4, 28),
	('2023-08-09', 'activo', 1, 29), ('2023-08-10', 'desactivado', 2, 30), ('2023-08-11', 'activo', 3, 31), ('2023-08-12', 'activo', 4, 32),
	('2023-09-19', 'activo', 1, 33), ('2023-09-20', 'activo', 2, 34), ('2023-09-21', 'desactivado', 3, 35), ('2023-09-22', 'activo', 4, 36),
	('2023-10-25', 'desactivado', 1, 37), ('2023-10-26', 'activo', 2, 38), ('2023-10-27', 'activo', 3, 39), ('2023-10-28', 'activo', 4, 40);

-- =================================================================
-- INSERCIONES PARA LA TABLA 'pagos'
-- =================================================================
INSERT INTO parcial_01.pagos (numero_de_tarjeta, titular, cvc, fecha_expiracion) VALUES
	(456789012, 'Juan Perez', 123, '2025-12-31'), (567890123, 'Maria Gomez', 456, '2026-11-30'),
	(678901234, 'Carlos Rodriguez', 789, '2024-10-29'), (789012345, 'Ana Martinez', 101, '2025-09-28'),
	(890123456, 'Luis Hernandez', 202, '2026-08-27'), (901234567, 'Sofia Lopez', 303, '2024-07-26'),
	(123456789, 'Javier Diaz', 404, '2025-06-25'), (234567890, 'Laura Sanchez', 505, '2026-05-24'),
	(345678901, 'Miguel Torres', 606, '2024-04-23'), (456789013, 'Elena Ramirez', 707, '2025-03-22'),
	(567890124, 'Pedro Flores', 808, '2026-02-21'), (678901235, 'Isabel Acosta', 909, '2024-01-20'),
	(789012346, 'Ricardo Benitez', 111, '2025-12-19'), (890123457, 'Carmen Medina', 222, '2026-11-18'),
	(901234568, 'Fernando Castillo', 333, '2024-10-17'), (123456780, 'Gabriela Ortiz', 444, '2025-09-16'),
	(234567891, 'Jorge Jimenez', 555, '2026-08-15'), (345678902, 'Patricia Reyes', 666, '2024-07-14'),
	(456789014, 'Raul Nuñez', 777, '2025-06-13'), (567890125, 'Monica Vega', 888, '2026-05-12'),
	(111122223, 'Andres Morales', 121, '2025-01-01'), (222233334, 'Silvia Rojas', 232, '2026-02-02'),
	(333344445, 'Oscar Castro', 343, '2024-03-03'), (444455556, 'Beatriz Paredes', 454, '2025-04-04'),
	(555566667, 'Eduardo Guerrero', 565, '2026-05-05'), (666677778, 'Daniela Serrano', 676, '2024-06-06'),
	(777788889, 'Francisco Vega', 787, '2025-07-07'), (888899990, 'Natalia Mendoza', 898, '2026-08-08'),
	(999900001, 'Roberto Cruz', 909, '2024-09-09'), (100011112, 'Adriana Leon', 112, '2025-10-10'),
	(121213134, 'Mario Solis', 223, '2026-11-11'), (141415156, 'Valeria Rios', 334, '2024-12-12'),
	(161617178, 'Alberto Ibarra', 445, '2025-01-13'), (181819190, 'Paula Correa', 556, '2026-02-14'),
	(202021212, 'Simon Bolivar', 667, '2024-03-15'), (222223234, 'Cristina Lara', 778, '2025-04-16'),
	(242425256, 'Hector Soto', 889, '2026-05-17'), (262627278, 'Marcela Pineda', 990, '2024-06-18'),
	(282829290, 'Ivan Campos', 100, '2025-07-19'), (303031312, 'Gloria Montenegro', 110, '2026-08-20'),
	(323234345, 'Juan Perez', 123, '2024-09-21'), (343436367, 'Maria Gomez', 456, '2025-10-22'),
	(363638389, 'Carlos Rodriguez', 789, '2026-11-23'), (383840401, 'Ana Martinez', 101, '2024-12-24'),
	(404042423, 'Luis Hernandez', 202, '2025-01-25'), (424244445, 'Sofia Lopez', 303, '2026-02-26'),
	(444446467, 'Javier Diaz', 404, '2024-03-27'), (464648489, 'Laura Sanchez', 505, '2025-04-28'),
	(484850501, 'Miguel Torres', 606, '2026-05-29'), (505052523, 'Elena Ramirez', 707, '2024-06-30'),
	(525254545, 'Pedro Flores', 808, '2025-07-01'), (545456567, 'Isabel Acosta', 909, '2026-08-02'),
	(565658589, 'Ricardo Benitez', 111, '2024-09-03'), (585860601, 'Carmen Medina', 222, '2025-10-04'),
	(606062623, 'Fernando Castillo', 333, '2026-11-05'), (626264645, 'Gabriela Ortiz', 444, '2024-12-06'),
	(646466667, 'Jorge Jimenez', 555, '2025-01-07'), (666668689, 'Patricia Reyes', 666, '2026-02-08'),
	(686870701, 'Raul Nuñez', 777, '2024-03-09'), (707072723, 'Monica Vega', 888, '2025-04-10'),
	(727274745, 'Andres Morales', 121, '2026-05-11'), (747476767, 'Silvia Rojas', 232, '2024-06-12'),
	(767678789, 'Oscar Castro', 343, '2025-07-13'), (787880801, 'Beatriz Paredes', 454, '2026-08-14'),
	(808082823, 'Eduardo Guerrero', 565, '2024-09-15'), (818183834, 'Daniela Serrano', 676, '2025-10-16'),
	(838385856, 'Francisco Vega', 787, '2026-11-17'), (858587878, 'Natalia Mendoza', 898, '2024-12-18'),
	(878789890, 'Roberto Cruz', 909, '2025-01-19'), (898991912, 'Adriana Leon', 112, '2026-02-20'),
	(919193934, 'Mario Solis', 223, '2024-03-21'), (939395956, 'Valeria Rios', 334, '2025-04-22'),
	(959597978, 'Alberto Ibarra', 445, '2026-05-23'), (979799990, 'Paula Correa', 556, '2024-06-24'),
	(999897976, 'Simon Bolivar', 667, '2025-07-25'), (989896965, 'Cristina Lara', 778, '2026-08-26');

-- =================================================================
-- INSERCIONES PARA LA TABLA 'pagos_usuarios'
-- =================================================================
INSERT INTO parcial_01.pagos_usuarios (id_pagos, id_usuario) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
(41, 1), (42, 2), (43, 3), (44, 5), (45, 7), (46, 9), (47, 11), (48, 13), (49, 15), (50, 17);

