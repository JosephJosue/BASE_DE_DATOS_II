CREATE OR REPLACE VIEW v_DesempenoColaboradores AS
SELECT
    CONCAT(u.nombre, ' ', u.apellido) AS nombre_completo, u.cargo, u.salario, u.fecha_ingreso,
    COALESCE(SUM(a.puntos_otorgados), 0) AS total_puntos_fidelizacion_acumulados,
    COALESCE(AVG(a.puntos_otorgados), 0) AS promedio_puntos_por_actividad,
    CASE
        WHEN COALESCE(SUM(a.puntos_otorgados), 0) > 500 THEN 'Excelente'
        WHEN COALESCE(SUM(a.puntos_otorgados), 0) BETWEEN 200 AND 500 THEN 'Bueno'
        ELSE 'Regular'
    END AS estado_fidelizacion,
    (SELECT DATEDIFF(CURDATE(), MAX(l.fecha_hora_login))
     FROM taller_03.login l
     WHERE l.id_usuario = u.id_usuario AND l.estado_login = 'exitoso') AS dias_desde_ultimo_login
FROM
    taller_03.usuarios u
LEFT JOIN
    taller_03.participacion_actividades pa ON u.id_usuario = pa.id_usuario
LEFT JOIN
    taller_03.actividades a ON pa.id_actividad = a.id_actividad
GROUP BY
    u.id_usuario;

SELECT * FROM v_DesempenoColaboradores


CREATE OR REPLACE VIEW v_ActividadesPorPerfil AS
SELECT
    p.nombre_perfil, p.descripcion_perfil,
    COUNT(DISTINCT u.id_usuario) AS cantidad_usuarios_con_este_perfil,
    COUNT(pa.id_participacion) AS total_actividades_participadas_por_perfil,
    COALESCE(SUM(a.puntos_otorgados) / COUNT(DISTINCT u.id_usuario), 0) AS promedio_puntos_por_usuario_en_este_perfil,
    (COUNT(pa.id_participacion) / (SELECT COUNT(*) FROM participacion_actividades)) * 100 AS porcentaje_participacion_total
FROM
    taller_03.perfiles p
LEFT JOIN
    taller_03.usuarios u ON p.id_perfil = u.id_perfil
LEFT JOIN
    taller_03.participacion_actividades pa ON u.id_usuario = pa.id_usuario
LEFT JOIN
    taller_03.actividades a ON pa.id_actividad = a.id_actividad
GROUP BY
    p.id_perfil;

SELECT * FROM v_ActividadesPorPerfil

CREATE OR REPLACE VIEW v_HistorialLoginDetallado AS
SELECT
    u.nombre AS nombre_usuario,
    u.apellido AS apellido_usuario,
    u.cargo AS cargo_usuario,
    l.fecha_hora_login,
    l.estado_login,
    TIMESTAMPDIFF(
        MINUTE,
        LAG(l.fecha_hora_login, 1) OVER (PARTITION BY u.id_usuario ORDER BY l.fecha_hora_login),
        l.fecha_hora_login
    ) AS tiempo_desde_anterior_login_minutos
FROM
    taller_03.login l
JOIN
    taller_03.usuarios u ON l.id_usuario = u.id_usuario;

SELECT * FROM v_HistorialLoginDetallado

-- ¿Cuáles son los 5 colaboradores con mejor desempeño en fidelización en el último trimestre y cuál es su cargo?
SELECT
    CONCAT(u.nombre, ' ', u.apellido) AS nombre_completo,
    u.cargo,
    SUM(a.puntos_otorgados) AS puntos_ultimo_trimestre
FROM
    taller_03.usuarios u
JOIN
    taller_03.participacion_actividades pa ON u.id_usuario = pa.id_usuario
JOIN
    taller_03.actividades a ON pa.id_actividad = a.id_actividad
WHERE
    a.fecha_actividad >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY
    u.id_usuario
ORDER BY
    puntos_ultimo_trimestre DESC
LIMIT 5;

-- ¿Qué perfiles tienen la menor participación en actividades de fidelización y requieren un plan de incentivos?
SELECT
    nombre_perfil,
    porcentaje_participacion_total
FROM
    taller_03.v_ActividadesPorPerfil
ORDER BY
    porcentaje_participacion_total ASC;

-- ¿Qué usuarios no han iniciado sesión en los últimos 30 días y cuál fue su último cargo?
SELECT
    nombre_completo,
    cargo
FROM
    taller_03.v_DesempenoColaboradores
WHERE
    dias_desde_ultimo_login > 30 OR dias_desde_ultimo_login IS NULL;

-- Obtener un reporte mensual de la cantidad de logins exitosos vs. fallidos.
SELECT
    YEAR(fecha_hora_login) AS anio,
    MONTHNAME(fecha_hora_login) AS mes,
    SUM(CASE WHEN estado_login = 'exitoso' THEN 1 ELSE 0 END) AS logins_exitosos,
    SUM(CASE WHEN estado_login = 'fallido' THEN 1 ELSE 0 END) AS logins_fallidos
FROM
    v_HistorialLoginDetallado
GROUP BY
    anio, mes
ORDER BY
    anio, mes;



