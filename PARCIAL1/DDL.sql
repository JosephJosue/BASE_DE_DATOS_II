CREATE DATABASE IF NOT EXISTS parcial_01;
USE parcial_01;

CREATE TABLE tipo_usuario(
	id_tipo_usuario INT PRIMARY KEY AUTO_INCREMENT,
	tipo_de_usuario VARCHAR(100)
);

-- CREAMOS LAS TABLAS DE USUARIO

CREATE TABLE usuarios(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR (60) NOT NULL,
	apellido VARCHAR (60) NOT NULL,
	nombre_usuario VARCHAR (60) NOT NULL,
	token INT NOT NULL,
	contrasena VARCHAR (255) NOT NULL,
	ciudad VARCHAR (60) NOT NULL,
	sexo ENUM ('F', 'M') NOT NULL, -- F = FEMENINO, M = MASCULINO
	estado_civil ENUM('soltero' , 'casado') NOT NULL,
	tipo_de_empresa ENUM ('publica', 'privada') NOT NULL,
	direccion VARCHAR (60) NOT NULL,
	id_tipo_usuario INT NOT NULL,
	
	CONSTRAINT fk_usuarios_tipo_usuario
	FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)
);


CREATE TABLE agente_usuario(
	id_agente_usuario INT PRIMARY KEY AUTO_INCREMENT,
	agente VARCHAR (300) NOT NULL,
	sistema_operativo VARCHAR (50) NOT NULL,
	hardware VARCHAR(75) NOT NULL
);

CREATE TABLE autenticacion(
	id_autenticacion INT PRIMARY KEY AUTO_INCREMENT,
	id_usuario int NOT NULL,
	id_agente_usuario INT NOT NULL,
	
	CONSTRAINT fk_autenticacion_usuarios
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
	
	CONSTRAINT fk_autenticacion_agente_usuario
	FOREIGN KEY (id_agente_usuario) REFERENCES agente_usuario(id_agente_usuario)
);

CREATE TABLE pagos(
	id_pagos INT PRIMARY KEY AUTO_INCREMENT,
	numero_de_tarjeta INT NOT NULL,
	titular VARCHAR(40) NOT NULL,
	cvc INT NOT NULL,
	fecha_expiracion DATE NOT NULL
	);

CREATE TABLE pagos_usuarios(
	id_pagos_usuarios INT PRIMARY KEY AUTO_INCREMENT,
	id_pagos INT NOT NULL,
	id_usuario INT NOT NULL,
	
	CONSTRAINT fk_pagos_usuarios_pagos
	FOREIGN KEY (id_pagos) REFERENCES pagos(id_pagos),
	
	CONSTRAINT fk_pagos_usuarios_usuario
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE pruebas(
    id_prueba INT PRIMARY KEY AUTO_INCREMENT,
    referencia VARCHAR(7) NOT NULL,
    nombre VARCHAR(60) NOT NULL,
    descripcion TEXT
);

CREATE TABLE pruebas_usuarios(
	id_pruebas_usuarios INT PRIMARY KEY AUTO_INCREMENT,
	fecha_ingreso DATE NOT NULL,
	estado ENUM ('activo', 'desactivado') NOT NULL,
	id_prueba INT NOT NULL,
	id_usuario INT NOT NULL,
	
	CONSTRAINT fk_pruebas_usuarios_pruebas
	FOREIGN KEY (id_prueba) REFERENCES pruebas(id_prueba),
	
	CONSTRAINT fk_pruebas_unitarias_pruebas
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);
