USE parcial_01;

CREATE VIEW v_usuarioDelSistema AS
SELECT nombre_usuario, CONCAT(nombre, " ", apellido) AS nombre_completo, sexo, direccion
FROM parcial_01.usuarios;

SELECT * FROM v_usuarioDelSistema

CREATE VIEW v_tiposDeUsuario AS
SELECT nombre_usuario, apellido, tipo_de_empresa
FROM parcial_01.usuarios
ORDER BY tipo_de_empresa ASC

SELECT * FROM v_tiposDeUsuario

CREATE VIEW v_mediosPago AS
SELECT
    p.id_pagos,
    p.numero_de_tarjeta,
    p.titular,
    p.fecha_expiracion,
    u.nombre,
    u.apellido,
    u.estado_civil,
    u.direccion
FROM parcial_01.pagos p
JOIN parcial_01.pagos_usuarios pu ON p.id_pagos = pu.id_pagos
JOIN parcial_01.usuarios u ON pu.id_usuario = u.id_usuario;

SELECT * FROM v_mediosPago


-- =================================================================
-- VISTA 2: Autenticación de Usuarios
-- =================================================================
CREATE VIEW vista_autenticacion_completa AS
SELECT
    a.id_autenticacion,
    u.nombre,
    u.apellido,
    u.ciudad,
    u.tipo_de_empresa,
    au.agente,
    au.sistema_operativo,
    au.hardware
FROM parcial_01.autenticacion a
JOIN parcial_01.usuarios u ON a.id_usuario = u.id_usuario
JOIN parcial_01.agente_usuario au ON a.id_agente_usuario = au.id_agente_usuario;

SELECT * FROM vista_autenticacion_completa

-- =================================================================
-- VISTA 3: Reporte de Pruebas Activas
-- =================================================================
CREATE VIEW vista_reporte_pruebas_activas AS
SELECT
    pu.id_pruebas_usuarios,
    pr.nombre AS nombre_prueba,
    pr.descripcion AS descripcion_prueba,
    pu.fecha_ingreso,
    pu.estado,
    u.nombre,
    u.apellido,
    u.nombre_usuario
FROM parcial_01.pruebas_usuarios pu
JOIN parcial_01.pruebas pr ON pu.id_prueba = pr.id_prueba
JOIN parcial_01.usuarios u ON pu.id_usuario = u.id_usuario
WHERE pu.estado = 'activo';

SELECT * FROM vista_reporte_pruebas_activas




