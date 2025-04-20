-- Creacion de usuraio para la conexion recetas
-- Crear usuario RECETAS
CREATE USER recetas IDENTIFIED BY RECETARIO
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp;

-- Conceder privilegios básicos
GRANT CONNECT, RESOURCE TO recetas;
