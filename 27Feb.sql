SELECT * FROM users;
DROP TABLE users;

--  1. SELECCIONAR A LOS USUARIOS CON NOMBRE, APELLIDO Y EDAD QUE TENGAN 20 AÑOS
SELECT nombres, apellidos, edad FROM users
WHERE edad = 20;

--  2. SELECCIONAR A LOS USUARIOS QUE SEAN MUJER ENTRE 20 Y 30 AÑOS
SELECT * FROM users 
WHERE genero = "M" AND edad > 20 AND edad < 30;  

--  3. SELECCIONAR A UN USUARIO QUE TENGA LA EDAD DE 1
SELECT * FROM users
ORDER BY edad ASC 
LIMIT 1;

--  4. MUESTRA CUANTOS REGISTROS HAY EN LA BASE DE DATOS
SELECT id FROM users
ORDER BY id DESC
LIMIT 1;

--  5. SELECCIONA LOS PRIMEROS 5 USUARIOS 
SELECT * FROM users
LIMIT 5;

--  6. SELECCIONA LOS ULTIMOS 10 USUARIOS 
SELECT * FROM users
ORDER BY id DESC
LIMIT 10;

--  7. SELECCIONAR LOS USUARIOS DONDE SU CORREO TERMINE EN .NET
SELECT * FROM users
WHERE correo LIKE "%.net";

--  8. LISTAR USUARIOS QUE NO VIVAN EN COLOMBIA
SELECT * FROM users
WHERE pais != "colombia";

--  9. LISTAR USUARIOS QUE NO VIVAN EN ECUADOR Y PANAMA
SELECT * FROM users
WHERE pais != "panama" AND pais != "ecuador";

--  10. CUANTOS(NUMERO) SON USUARIOS DE COLOMBIA Y LES GUSTA EL ROCK
SELECT * FROM users
WHERE pais = "colombia" AND musica = "rock";

--  11. ACTUALIZAR EL GENERO MUSICAL DE TODOS LOS USUARIOS DE LA BASE DE DATOS DE "METAL" A "CARRANGA"
UPDATE users
SET musica = "carranga"
WHERE musica = "metal";

--  12. LISTADO DE HOMBRES QUE LES GUSTE LA "CARRANGA" SEAN DE COLOMBIA Y TENGAN ENTRE 10 Y 20 AÑOS DE EDAD
SELECT * FROM users
WHERE musica = "carranga" AND pais = "colombia" AND edad > 10 AND edad < 20;

--  13. ACTUALIZAR TODOS LOS USUARIOS QUE TENGAN 99 AÑOS, SU NUEVO GENERO MUSICAL SEA LA "CARRANGA"
UPDATE users
SET musica = "carranga"
WHERE edad = 99;

--  14. LISTAR TODOS LOS USUARIOS QUE SU NOMBRE INICIE CON "A", "a"
SELECT * FROM users
WHERE nombres LIKE "A%" AND nombres LIKE "a%";

--  15. LISTAR TODOS LOS USUARIOS QUE SU APELLIDO FINALICE EN "Z", "z"
SELECT * FROM users
WHERE apellidos LIKE "%Z" AND apellidos LIKE "%z";

--  16. ACTUALIZAR LOS USUARIOS QUE TENGAN 50 AÑOS DE EDAD Y SU NUEVO GENERO MUSICAL SEA NULL
ALTER TABLE users 
MODIFY musica VARCHAR(25) NULL

UPDATE users
SET musica = NULL
WHERE edad = 50;

--  17. LISTAR TODOS LOS USUARIOS QUE SU GENERO MUSICAL  SEA IGUAL A NULL
SELECT * FROM users WHERE edad = 50;

--  18. CUAL ES EL RESULTADO DE LA SUMA DE TODAS LAS EDADES DE LA BASES DE DATOS
SELECT SUM(edad) as edad FROM users;

--  19. CUANTOS USUARIOS TENEMOS REGISTRADOS EN "ECUADOR"
SELECT * FROM users
WHERE pais = "ecuador";

--  20. CUANTOS USUARIOS SON DE COLOMBIA Y LES GUSTA EL VALLENATO
SELECT * FROM users
WHERE pais = "colombia" AND musica = "vallenato";