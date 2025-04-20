
--  1. Resetear la contraseña del usuario
ALTER USER recetas IDENTIFIED BY 1234;

--  2. Desbloquear la cuenta (por si está bloqueada)
ALTER USER recetas ACCOUNT UNLOCK;

--  3. Conceder privilegios básicos
GRANT CREATE SESSION TO recetas;

--  4. Conceder privilegios para trabajar con objetos y tablas
GRANT CONNECT, RESOURCE TO recetas;

--  (Opcional) Verificar usuarios existentes
SELECT username FROM all_users;

--  (Opcional) Eliminar usuario si necesitas empezar desde cero;
--  DROP USER recetas CASCADE;