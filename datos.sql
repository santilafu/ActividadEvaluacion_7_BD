-- Insertar datos de ejemplo en la base de datos
-- INGREDIENTES (con constructor tIngrediente)
INSERT INTO Ingredientes VALUES (tIngrediente(1, 'Harina', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(2, 'Huevos', 0, 'unidad'));
INSERT INTO Ingredientes VALUES (tIngrediente(3, 'Leche', 0, 'mililitros'));
INSERT INTO Ingredientes VALUES (tIngrediente(4, 'Pollo', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(5, 'Tomate', 0, 'unidad'));
INSERT INTO Ingredientes VALUES (tIngrediente(6, 'Queso', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(7, 'Pan rallado', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(8, 'Aceite de oliva', 0, 'mililitros'));
INSERT INTO Ingredientes VALUES (tIngrediente(9, 'Cebolla', 0, 'unidad'));
INSERT INTO Ingredientes VALUES (tIngrediente(10, 'Pasta', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(11, 'Sal', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(12, 'Pimienta', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(13, 'Ajo', 0, 'dientes'));
INSERT INTO Ingredientes VALUES (tIngrediente(14, 'Perejil', 0, 'ramas'));
INSERT INTO Ingredientes VALUES (tIngrediente(15, 'Pimiento', 0, 'unidad'));
INSERT INTO Ingredientes VALUES (tIngrediente(16, 'Zanahoria', 0, 'unidad'));
INSERT INTO Ingredientes VALUES (tIngrediente(17, 'Espinacas', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(18, 'Champiñones', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(19, 'Guisantes', 0, 'gramos'));
INSERT INTO Ingredientes VALUES (tIngrediente(20, 'Calabacín', 0, 'unidad'));


-- RECETAS (con constructor tReceta)
INSERT INTO Recetas VALUES (
  tReceta(1, 'Tortilla', 'Tortilla clásica de huevo y leche',
    tPasos('Batir los huevos', 'Añadir leche', 'Freír en sartén'))
);

INSERT INTO Recetas VALUES (
  tReceta(2, 'Sopa de tomate', 'Sopa caliente con cebolla y tomate',
    tPasos('Picar cebolla', 'Triturar tomates', 'Cocinar todo 20 min'))
);

INSERT INTO Recetas VALUES (
  tReceta(3, 'Pollo empanado', 'Pechuga de pollo crujiente empanada',
    tPasos('Pasar por huevo', 'Rebozar en pan rallado', 'Freír'))
);

INSERT INTO Recetas VALUES (
  tReceta(4, 'Lasaña', 'Lasaña con carne, pasta y bechamel',
    tPasos('Cocer pasta', 'Preparar relleno', 'Hornear 30 minutos'))
);

INSERT INTO Recetas VALUES (
  tReceta(5, 'Macarrones con queso', 'Macarrones con salsa cremosa de queso',
    tPasos('Cocer pasta', 'Derretir queso', 'Mezclar todo'))
);

INSERT INTO Recetas VALUES (
  tReceta(6, 'Ensalada', 'Ensalada fresca de tomate y cebolla',
    tPasos('Lavar ingredientes', 'Cortar en dados', 'Aliñar'))
);

-- RECETAINGREDIENTES (con tRecetaIngradiente)
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(1, 1, 2, 3));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(2, 1, 3, 100));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(3, 2, 5, 4));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(4, 2, 9, 1));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(5, 2, 3, 200));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(6, 3, 4, 200));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(7, 3, 2, 1));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(8, 3, 7, 50));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(9, 3, 8, 20));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(10, 4, 10, 200));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(11, 4, 6, 150));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(12, 4, 9, 1));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(13, 5, 10, 150));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(14, 5, 6, 200));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(15, 5, 3, 100));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(16, 6, 5, 2));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(17, 6, 9, 1));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(18, 6, 8, 10));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(19, 1, 1, 50));
INSERT INTO RecetaIngredientes VALUES (tRecetaIngradiente(20, 4, 1, 100));

-- Borrar datos de ejemplo
-- Si quieres borrar los datos de ejemplo, puedes usar las siguientes sentencias:
-- DELETE FROM RecetaIngredientes;
-- DELETE FROM Recetas;
-- DELETE FROM Ingredientes;
