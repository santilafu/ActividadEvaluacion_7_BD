
-- Crear tipo colección de pasos tPasos
CREATE OR REPLACE TYPE tPasos AS VARRAY(10) OF VARCHAR2(200);
/
-- Crear tipo objeto tReceta con metodo
CREATE OR REPLACE TYPE tReceta AS OBJECT (
    id_receta NUMBER,
    nombre_receta VARCHAR2(100),
    descripcion VARCHAR2(200),
    pasos tPasos,
    MEMBER FUNCTION RESUMEN RETURN VARCHAR2
);
/
-- Crear el cuerpo del tipo objeto tReceta
CREATE OR REPLACE TYPE BODY tReceta AS
    MEMBER FUNCTION RESUMEN RETURN VARCHAR2 IS
    BEGIN 
        RETURN 'RECETA: ' || nombre_receta || ' - ' || descripcion;
        END RESUMEN;
    END;
/
-- Creamos tipo tIngrediente
CREATE OR REPLACE TYPE tIngrediente AS OBJECT (
    id_ingrediente NUMBER,
    nombre_ingrediente VARCHAR2(100),
    cantidad NUMBER,
    unidad_medida VARCHAR2(20)
);
/
-- Creamos tipo tRecetaIngrediente con metodo
CREATE OR REPLACE TYPE tRecetaIngradiente AS OBJECT (
    id_Detalle NUMBER,
    id_receta NUMBER,
    id_ingrediente NUMBER,
    cantidad NUMBER,
    MEMBER FUNCTION INFO RETURN VARCHAR2
);
/
-- Creamos el cuerpo del tipo tRecetaIngrediente
CREATE OR REPLACE TYPE BODY tRecetaIngradiente AS
    MEMBER FUNCTION INFO RETURN VARCHAR2 IS
    BEGIN 
        RETURN 'DETALLE: ' || id_Detalle || ' - INGREDIENTE: ' || id_ingrediente || 'EN RECETA: ' || id_receta;
    END INFO;
END;
/
-- Crear tablas basadas em los tipos creados
CREATE TABLE Recetas OF tReceta (
    PRIMARY KEY (id_receta)
);
CREATE TABLE Ingredientes OF tIngrediente (
    PRIMARY KEY (id_ingrediente)
);
CREATE TABLE RecetaIngredientes OF tRecetaIngradiente (
    PRIMARY KEY (id_Detalle),
    FOREIGN KEY (id_receta) REFERENCES Recetas(id_receta),
    FOREIGN KEY (id_ingrediente) REFERENCES Ingredientes(id_ingrediente)
);

