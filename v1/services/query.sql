CREATE DATABASE ciisa_backend_v1;
CREATE USER 'ciisa_backend_v1'@'localhost' IDENTIFIED BY 'l4cl4v3-c11s4';
GRANT ALL PRIVILEGES ON ciisa_backend_v1 . * TO 'ciisa_backend_v1'@'localhost';
FLUSH PRIVILEGES;

USE ciisa_backend_v1;

CREATE TABLE services (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE, -- COSTRAINT
    activo BOOLEAN NOT NULL DEFAULT FALSE
)

-- GET / ALL
SELECT id, nombre, activo FROM services;
-- GET / BY ID
SELECT id, nombre, activo FROM services WHERE id = 3;
-- POST
INSERT INTO services (id, nombre) VALUES (1, 'Ejemplo 1'),(2, 'Ejemplo 2'),(3, 'Ejemplo 3');
-- PATCH / ENABLE
UPDATE services SET activo = true WHERE id = 3;
-- PATCH / DISABLE
UPDATE services SET activo = false WHERE id = 3;
-- PUT
UPDATE services SET nombre = 'Example 3' WHERE id = 3;
-- DELETE
DELETE FROM services WHERE id = 3;