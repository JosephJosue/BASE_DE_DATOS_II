CREATE DATABASE IF NOT EXISTS taller_03;
USE taller_03;

CREATE TABLE perfiles (
    id_perfil INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_perfil VARCHAR(100),
    descripcion_perfil TEXT,
    fecha_vigencia_perfil DATE,
    encargado_perfil VARCHAR(150)
);

CREATE TABLE usuarios (
    id_usuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    estado ENUM('activo', 'inactivo') DEFAULT 'activo',
    contrasena VARCHAR(255),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE,
    id_perfil INT,
    FOREIGN KEY (id_perfil) REFERENCES perfiles(id_perfil)
);

CREATE TABLE login (
    id_login INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    fecha_hora_login DATETIME,
    estado_login ENUM('exitoso', 'fallido'),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE actividades (
    id_actividad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo_actividad VARCHAR(100),
    descripcion_actividad TEXT,
    puntos_otorgados INT,
    fecha_actividad DATE
);

CREATE TABLE participacion_actividades (
    id_participacion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_actividad INT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_actividad) REFERENCES actividades(id_actividad)
);
