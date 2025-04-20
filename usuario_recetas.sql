-- ✅ Crear el usuario desde cero
CREATE USER recetas IDENTIFIED BY 1234
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp;

-- 🔓 Desbloquearlo por si acaso (aunque no hace falta justo después de crearlo)
ALTER USER recetas ACCOUNT UNLOCK;

-- ✅ Otorgar privilegios para que pueda conectarse y trabajar
GRANT CREATE SESSION TO recetas;
GRANT CONNECT, RESOURCE TO recetas;
