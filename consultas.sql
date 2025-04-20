-- CONSULTA 1: Ver el resumen de todas las recetas
SELECT r.id_receta, r.RESUMEN() AS descripcion_resumida
FROM Recetas r;

-- CONSULTA 2: Mostrar ingredientes por receta
-- (relación entre recetas e ingredientes)
SELECT 
    ri.id_receta,
    r.nombre_receta,
    i.nombre_ingrediente,
    ri.cantidad || ' ' || i.unidad_medida AS cantidad_total
FROM RecetaIngredientes ri
JOIN Recetas r ON ri.id_receta = r.id_receta
JOIN Ingredientes i ON ri.id_ingrediente = i.id_ingrediente
ORDER BY ri.id_receta;


-- CONSULTA 3: Mostrar todos los detalles de receta_ingrediente usando el método INFO
-- (usa el método INFO del tipo tRecetaIngradiente)

SELECT ri.id_Detalle, ri.INFO() AS detalle_descriptivo
FROM RecetaIngredientes ri;

-- Mostrar ID, nombre de receta y cada paso individual por fila
SELECT r.id_receta,
       r.nombre_receta,
       COLUMN_VALUE AS paso
FROM Recetas r,
     TABLE(r.pasos);
