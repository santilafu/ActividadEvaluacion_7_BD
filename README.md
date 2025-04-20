# Actividad de Evaluación - Unidad 7: Bases de Datos Objeto-Relacionales

## Descripción de la actividad

Esta actividad forma parte de la Unidad 7 del módulo de Bases de Datos. El objetivo ha sido aplicar conceptos de bases de datos objeto-relacionales utilizando Oracle Database, desarrollando una base de datos orientada al almacenamiento de recetas de cocina.

Se ha trabajado con tipos objeto, métodos, colecciones y relaciones entre tablas. Todo el proyecto se ha realizado desde Visual Studio Code con conexión a Oracle y se ha gestionado con Git y GitHub.

---

## Objetivos trabajados

- Definición de tipos objeto y colecciones (`VARRAY`).
- Implementación de métodos dentro de tipos objeto.
- Creación de tablas basadas en tipos objeto.
- Establecimiento de claves primarias y foráneas.
- Inserción de datos utilizando constructores de objetos.
- Consultas sobre estructuras objeto-relacionales.
- Gestión del proyecto con Git y publicación en GitHub.

---

## Archivos del proyecto

- `estructura.sql`: contiene la definición de los tipos objeto (`tReceta`, `tIngrediente`, `tRecetaIngradiente`) y la colección `tPasos`. También incluye la creación de las tablas `Recetas`, `Ingredientes` y `RecetaIngredientes`.
- `datos.sql`: inserta registros en las tres tablas utilizando los constructores de tipo. Se han definido 6 recetas, 20 ingredientes y sus relaciones correspondientes.
- `consultas.sql`: incluye consultas SQL que utilizan métodos definidos en los objetos y acceden a los elementos de la colección `tPasos`.

---

## Estructura de la base de datos

### Tipos objeto definidos

- `tPasos`: tipo colección `VARRAY(10)` de `VARCHAR2(200)` para almacenar los pasos de elaboración de una receta.
- `tReceta`: tipo objeto con atributos `id_receta`, `nombre_receta`, `descripcion`, `pasos`, y un método `RESUMEN()` que devuelve una descripción resumida.
- `tIngrediente`: tipo objeto con `id_ingrediente`, `nombre_ingrediente`, `cantidad`, y `unidad_medida`.
- `tRecetaIngradiente`: tipo objeto que representa el detalle de una receta con un método `INFO()` descriptivo.

### Tablas creadas

- `Recetas`: tabla basada en `tReceta`.
- `Ingredientes`: tabla basada en `tIngrediente`.
- `RecetaIngredientes`: tabla basada en `tRecetaIngradiente`, con claves foráneas referenciando `Recetas` e `Ingredientes`.

---

## Consultas realizadas

- Mostrar el resumen de las recetas utilizando el método `RESUMEN()`.
- Obtener los ingredientes y cantidades por receta utilizando joins entre las tres tablas.
- Visualizar la información de los detalles de las recetas mediante el método `INFO()`.
- Acceder a los pasos de elaboración de cada receta utilizando `TABLE(...)` sobre la colección `tPasos`.

---

## Conexión utilizada

Se ha creado un usuario en Oracle llamado `RECETAS` con contraseña `####`. Este usuario ha sido configurado con los permisos necesarios para crear y gestionar objetos, tablas y datos. La conexión se ha realizado desde Visual Studio Code mediante la extensión oficial de Oracle.

---

## Gestión del proyecto

Todo el desarrollo se ha realizado utilizando Visual Studio Code. Se ha inicializado un repositorio Git para el control de versiones y se ha vinculado con un repositorio remoto en GitHub para su publicación.

---

## Repositorio del proyecto

[https://github.com/santilafu/ActividadEvaluacion_7_BD](https://github.com/santilafu/ActividadEvaluacion_7_BD)

Autor: Santiago Lafuente 🧑🏻‍🍳🍳