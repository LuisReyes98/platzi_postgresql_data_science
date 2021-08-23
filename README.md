# Curso de PostgreSQL Aplicado a Ciencia de Datos

## Importación de los datos para el proyecto

Restore mediante la consola

```sh
pg_restore --host "localhost" --port "5432" --username "postgres" --no-password --role "postgres" --dbname "platzimovies" --verbose "/home/Downloads/platzimovies.tar"
```

## Breve historia de las bases de datos

- Bases de datos Relacionales
La mayoria de las bases de datos relacionales son una navaja suiza una unica herramienta que puede solucionar la mayoria de los casos de uso

- Bases de datos NO Relacionales
Son para casos de uso mas especificos

Pueden ser basadas en documentos
Basadas en grafos
Guardadas en disco etc...

## Puntos fuertes de las bases de datos relacionales

A lo largo del tiempo los manejadores de bases de datos relacionales se han mantenido actualizados a lo largo del tiempo

### Puntos fuertes de las RDB

- Multiproposito
- Ampliamente utilizadas
- Informacion consistente
- Flexible
- Retrocompatible
- Completamente programable

### Uso de bases de datos NO relacionales

Unos de los casos de usos de bases de datos NO relacionales es la necesidad de leer y escribir grandes cantidades de datos (millones o hasta miles de millones) por segundo

## Conceptos importantes de las bases de datos relacionales

- Entidades/Tablas
Cualquier entidad o representacion del mundo real

- Atributos
Atributos/Propiedades que pueden poseer las Entidades

- Relaciones
La manera en que se unen una entidad con otra
Teniendo relaciones de uno a uno, uno a muchos, muchos a muchos

### Exclusivas de postgresql

- Store Procedures
Funciones que pueden ejecutar bloques de acciones en codigo sql o incluso otros lenguajes de programacion

- Triggers
Son acciones que ejecutan un procedure cuando se efectua una accion que inserte,actualice o borre datos en una tabla

## Principales sentencias SQL

SELECT

```sql
-- peliculas por clasificacion
SELECT MAX(ultima_actualizacion) AS fecha_ultima_actualizacion,
  clasificacion,
  COUNT(*) AS cantidad_peliculas
FROM peliculas
WHERE duracion_renta > 3
GROUP BY clasificacion, ultima_actualizacion
ORDER BY fecha_ultima_actualizacion;
```

## ¿Qué es la ciencia de datos?

### Funciones de un cientifico de datos

idealmente tienes en una compañía un equipo de datos y el científico de datos, muy comúnmente se ocupa de liderar este equipo.

El científico de datos tiene la facultad de entender bien el negocio y
de traducir cuáles son las necesidades de datos dentro de una organización y traducirlo ha algo que se

pueda accionar por parte de los demás equipos de datos.

esos equipos de datos existen por ejemplo los DBAs, analistas, etc...

**En el mundo real**
Un grupo de científicos de datos, es decir un grupo de diferentes, digamos, ingenieros de DBAs y diferentes disciplinas de datos, que el Data Scientist o científico de datos va a liderar.

Es mu y importante que el científico de datos entienda el negocio, entienda la organizacion

El trabajo principal es que los datos impacten de forma positiva a la organizacion

**One man army** pues ocurre comunmente en compañias que a pesar de lo ideal es tener todo un equipo de dicado a los datos suele pasar que el cientifico de datos es el unico encargado de los datos

Actualmente hay una necesidad muy fuerte de Cientifico de datos, pero tambien ha habido un buzz word, en que se piden cientficos de datos para X problemas pero en el ambito de analisis del problema un cientifico de datos podria no ser la necesidad principal

Aun asi siempre sera necesario en una organizacion alguien que pueda analisar los datos y transformarlos en algo que cuente una historia, que ayude a la toma de decisiones en la organizacion

### Notas alumnos

Un científico de datos entiende el negocio y sus necesidades para traducirlo a los demás equipos de datos. El cientifico de datos es el líder. Su trabajo da impacto a la organización

- DBAs
- Analistas
- Ingenieros

En muchas organizaciones va a haber una única persona que se encargue de todo el proceso de datos

- Contar historias con los datos
- Las habilidades siempre van a ser necesarias en cualquier organización

## Aplicación de la ciencia de datos

Que hara un cientifico de datos en su dia a dia

En una organización la parte a la que más va a ayudar la ciencia de datos es a la toma de decisiones.

La parte mas fundamental donde aplicar los datos es en la toma de decisiones

- **Data Driven.** Consiste en tomar decisiones basadas en los datos. Es labor del Data Scientist brindar estos datos y sus representaciones para que puedan ser interpretados de forma correcta.

- **Información significativa.** Entender que historia se va a contar, abstraer y entender primero de que manera podemos aprovechar los datos para contar una historia que cosa se busca decir y cómo la vamos a presentar

- **Representación de los datos.** Es importante presentar de forma visual los datos dependiendo del problema y el publico al que va dirigida esta presentación.

- **Neutralidad de datos.** Hay ocasiones en la que los datos escogidos generan situaciones fuertes de discriminación a la hora de usarlos en modelos de AI, esto es conocido como Machine Bias. Ocurre intencional o accidentalmente por la forma en que el modelo se construye ya sea no teniendo diversidad suficiente como para ser neutral o los datos reflejan discriminacion del mundo real y esta se alimenta al modelo de AI sin ningun filtro.

- **Storytelling con datos.** Es importante ser capaz de comunicar resultadosde la forma apropiada para poder generar un impacto positivo.

## Equipos orientados a datos

- **DBA (Data Base Administrator)** Mantener y administrar el motor de base de datos

- **Data Warehouse (Almacen de datos)** Guardar datos pensando a futuro para poder trabajarse

- **ETL/ Data Pipelines ( Extract Transform Load/ Tuberia de datos)** Llevar datos de un lado a otro

- **BI (Bussiness Intelligence - Inteligencia del negocio)** Precursores del DataScience, empezar a extraer datos y entender los datos y sus repercusiones, encontrar patrones

- **ML (Machine Learning)** Técnica para clasificar información o realizar predicciones con datos historicos

- **Data Science (Ciencia de datos)** Entender a la organización e impactarla de forma positiva

## Data science vs. Machine Learning

### Machine Learning

ML es un conjunto de ciencias, estrategias, disciplinas y algoritmos que nos van ayudar a tomar la capacidad de computo de las maquinas para resolver problemas de clasificación, de forma que se haga de forma automática, otro punto es realizar predicciones con base a patrones para generar tendencias acorde al comportamiento historico para predecir el futuro

Casos de uso:

- Clasificacion
Agrupa los datos en base a sus caracteristicas

Se encarga de encontrar diferentes segmentos dentro de los datos. Suele estar asociado a técnicas de aprendizaje no supervisado. Un ejemplo útil sería clasificar a los clientes de un banco.

- Predicción
En base a datos historico se busca predecir el comportamiento de los datos en el futuro

Toma datos históricos para poder generar tendencias de algún tipo y así comprender comportamientos futuros.

### Data Science

Se enfoca principalmente en conocer a una organización o una empresa con alto nivel de detalle, de tal forma que tomar acciones basándose en las necesidades de estas. un DS posee muchas herramientas tales como la estadística, matemáticas, programación y también un conocimiento básico de Machine Learning para poder resolver los diferentes problemas que se presenten. Es importante que también posea un conocimiento profundo del negocio.

Conoce a la organización y empresa a detalle para poder hacer algo al respecto. Toma todas las variables de la organización y herramientas disponibles para causar el mejor impacto

### Relacion de Machine Learning y Data Science

Si bien el machine Learning encuentra patrones con mayor facilidad que un estadista, Machine Learning no reemplaza ni reemplazara al cientifico de datos.
Machine Learning es una herramienta más que complementa al Data Science y a la organización.

## Diferencias entre otros manejadores y PostgreSQL

Postgresql es un manejador de base de datos open source (codigo abierto)

Postgresql se dedico desde muy temprano al manejo de objetos

**Caracteristicas** de Postgresql

- Código libre y orientado a la comunidad

- Base de datos adaptada y madura, soporta JSON y funciones estadísticas

- PL/pgSQL (Procedural Language/PostgreSQL)

- Manejo de objetos

- Particiones en las tablas mediante estrategias

- Common table expressions tratamiento de tablas virtuales, más eficiente en tiempo de ejecusión

- Window functions trata de encontrar relaciones entre un registro y el resto de registros

## PLPGSQL: Stored procedures

PLPGSQL es un lenguaje ampliado derivado desde el SQL
pudiendo ejecutar codigo SQL estandar y funciones especificas de este lenguaje

Existen

- **Store procedures**
Integran lógica a la sentencias SQL. Se han ido incluyendo en el estándar SQL. No regresan ningún valor.

- **Functions**
Son mas avanzadas estan hechas en el lenguaje de PLPGSQL, Regresan tipos de datos. Tienen más flexibilidad. No son estándar de SQL.

## PLPGSQL: conteo, registro y triggers

count_total_movies function

```sql
CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN COUNT(*) FROM peliculas;
END
$$;

SELECT count_total_movies();
```

duplicar registros

```sql
-- al haber un insert en un tabla duplica ese registro en otra tabla
CREATE OR REPLACE FUNCTION duplicate_records()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  -- NEW es el registro que se acaba de hacer insert
  INSERT INTO aaab(bbba, ccca)
  VALUES (NEW.bbb, NEW.ccc);
  
  RETURN NEW;
END
$$;

-- creando el trigger
CREATE TRIGGER aaa_changes
  BEFORE INSERT
  ON aaa
  FOR EACH ROW
  EXECUTE PROCEDURE duplicate_records();

-- insertando valores para probar el trigger
INSERT INTO aaa(bbb, ccc)
VALUES ('abcde', 'efghi');
```

## PLPGSQL: Aplicado a data science

Generando un reporte con una funcion

```sql
CREATE OR REPLACE FUNCTION movies_stats()
RETURNS VOID
LANGUAGE plpgsql
AS $$
-- declaracion de variables antes del BEGIN
DECLARE
  total_rated_r REAL := 0.0;
  total_larger_than_100 REAL := 0.0;
  total_published_2006 REAL := 0.0;
  average_duration REAL := 0.0;
  average_rental_price REAL := 0.0;
BEGIN
  total_rated_r := COUNT(*) FROM peliculas WHERE clasificacion = 'R';
  total_larger_than_100 := COUNT(*) FROM peliculas WHERE duracion > 100;
  total_published_2006 := COUNT(*) FROM peliculas WHERE anio_publicacion = 2006;
  average_duration := AVG(duracion) FROM peliculas;
  average_rental_price := AVG(precio_renta) FROM peliculas;
  
  -- TRUNCATE borra lo que habia antes en la tabla 
  TRUNCATE TABLE peliculas_estadisticas;
  
  INSERT INTO peliculas_estadisticas (tipo_estadistica, total)
  VALUES
    ('Peliculas con clasificacion R', total_rated_r),
    ('Peliculas de mas de 100 minutos', total_larger_than_100),
    ('Peliculas publicadas en 2006', total_published_2006),
    ('Promedio de duracion en minutos', average_duration),
    ('Precio promedio de renta', average_rental_price);
END
$$;

-- ejecutar la funcion
SELECT movies_stats();
```

## Integración con otros lenguajes

Como la mayoría de las bases de datos, PostgreSQL cuenta con conectores para diferentes lenguajes de programación, de tal forma que si trabajas con Python, PHP, Java, JavaScript y todos sus frameworks, exista una forma de extraer datos de PostgreSQL y posteriormente utilizar las propiedades de los lenguajes procedurales para transformar y utilizar los datos.

El lenguaje estándar utilizado en bases de datos relacionales es SQL (Structured Query Language), un lenguaje que tiene una estructura sumamente útil para hacer solicitudes de datos, en especial tomando como abstracción un diseño tabular de datos. Sin embargo, carece de estructuras de control y otras abstracciones que hacen poderosos a los lenguajes procedurales de programación.

### PL implementables en PostgresSQL

- PL/pgSQL
PL/pgSQL (Procedural Language/PostgreSQL Structured Query Language) que es un superset de SQL

- C
con libpq https://www.postgresql.org/docs/13/libpq.html

- PL/Tcl
Tcl (Tool Command Language) https://www.postgresql.org/docs/13/pltcl.html

- PL/Perl
Perl es un lenguaje de programación que implementa una estructura de bloques de código y que toma inspiración de programas como C, sh, AWK, entre otros.
https://www.postgresql.org/docs/13/plperl.html

- PL/Python
https://www.postgresql.org/docs/13/plpython.html.

Para instalar el lenguaje Python en PostgreSQL, una vez instaladas las bibliotecas apropiadas para cada Sistema Operativo, es necesario ejecutar el siguiente query:

```sql
CREATE EXTENSION plpythonu
```

Ejemplo PL/Python vs PL/pgSQL

PL/pgSQL

```sql
CREATE FUNCTION pgmax (a integer, b integer)
RETURNS integer
AS $$
BEGIN
   IF a > b THEN
       RETURN a;
   ELSE
       RETURN b;
   END IF;
END
$$ LANGUAGE plpgsql;
```

PL/Python

```sql
CREATE FUNCTION pymax (a integer, b integer)
RETURNS integer
AS $$
   if a > b:
       return a
   return b
$$ LANGUAGE plpythonu;

CREATE EXTENSION plpythonu;
SELECT pgmax(200,9);
```

## Tipos de Datos Personalizados

La definicion de tipos de datos personalizados es una funcion de PostgreSQL que no es estandar en SQL

```sql
-- Creando nuevos tipos de datos
CREATE TYPE humor AS ENUM ('triste', 'normal', 'feliz');
```

```sql
-- Creando nuevos tipos de datos
CREATE TYPE humor AS ENUM ('triste', 'normal', 'feliz');

-- usando este tipo de datos en una tabla
-- DROP TABLE persona_prueba;
CREATE TABLE persona_prueba(
  nombre text,
  humor_actual humor
);

-- da error porque no es un valor valido de humor
INSERT INTO persona_prueba VALUES ('Pablo', 'molesto');

-- insertando
INSERT INTO persona_prueba VALUES ('Pablo', 'feliz');
```

### Otras notas

el keyword **ENUM** hace referencia a Enumerated Types, algo a tener en cuenta que esta funcion es case sensitive por lo que “FELIZ”, “Feliz”, y “feliz” son tres tipos de dato diferente.

https://www.postgresql.org/docs/13/datatype-enum.html

## Agregación de datos

La agregación de datos es hacer queries que agrupen información para asi obtener información mas estructurada

```sql
-- maximo de precio de renta de todas las peliculas
SELECT MAX(precio_renta)
FROM peliculas;

-- maximo de precio de renta por titulo de pelicula
SELECT titulo, MAX(precio_renta)
FROM peliculas
GROUP BY titulo;

-- minimos
SELECT MIN(precio_renta)
FROM peliculas;

SELECT titulo, MIN(precio_renta)
FROM peliculas
GROUP BY titulo;

-- sumatoria
-- El precio de rentar todas las peliculas
SELECT SUM(precio_renta)
FROM peliculas;

-- cantidad de peliculas por clasificacion
SELECT clasificacion, COUNT(*)
FROM peliculas
GROUP BY clasificacion;

-- promedios
SELECT AVG(precio_renta)
FROM peliculas;

-- PRECIO PROMEDIO POR CLASIFICACION
SELECT clasificacion, AVG(precio_renta) AS precio_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY precio_promedio DESC;

-- duracion PROMEDIO POR CLASIFICACION
SELECT clasificacion, AVG(duracion) AS duracion_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY duracion_promedio DESC;

-- duracion_renta_promedio POR CLASIFICACION
SELECT clasificacion, AVG(duracion_renta) AS duracion_renta_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY duracion_renta_promedio DESC;
```

### Otras notas

Hay que tener en cuenta que count(*) cuenta todas la filas y count(campo) no toma encuenta los campos con valores nulos al realizar la cuenta.

## Pensando en la presentación

Al tener una parte de logica muy fuerte se piensa mas en que datos queremos obtener.

Es igual de importante la historia que queremos contar y la forma en que vamos a presentar los datos

La presentación de los datos tiene que ser pensada desde la planeación de que datos se buscaran

**Ejemplos**

Si queremos mostrar los cambios de algo a lo largo del tiempo una grafica de barra o grafica de linea puede ser de utilidad

Tambien considerar que segmentos de la grafica se quiere enfocar, donde los datos muestran buenos resultados para mantenerlos asi o en donde los datos son deficientes para que se mejore esa area

A la hora de hacer los queries tambien pensar en como quieres mostrar esos datos, de que manera , que punto quiere apoyar en una discusion en un argumento y que **historia** quieres contar

Evaluar si en tu fuente de datos existen los datos para construir la historia que quieres contar

**Ejemplo:** Si quieres contar los cambios de algo a traves del tiempo alguno de los campos de tus datos tiene que ser una fecha

**Dashboards** la mayoria de los datos se consumen en este formato, hay distintos tipos de Dashboards para resaltar informacion ya sea del dia o del mes, o ver el total de unos datos en el tiempo, o usando graficas de pie para mostrar la relacion que existe entre los datos

al escoger la forma de mostrarlo pensar en que historia quiero contar, pues ciertos graficos por defecto resaltan cierta informacion o relacion de los datos
**La presentacion es muy importante** ya que presentar un mismo informe de una forma u otra puede cambiar la forma en que los datos se interpretan y la historia que se cuenta, por lo cual es tan importante tambien conocer muy bien el negocio y los datos del mismo, para contar **historias** que ayuden a tomar buenas decisiones.

## Trabajando con objetos

PostgreSQL permite trabajar directamente con objetos tipo JSON esto es una funcionalidad que no brindan todos los manejadores de datos

porque trabajar con objetos JSON es complicado
ya que son una cadena de texto con una estructura especifica, y lo que suele ocurrir es que los manejadores de datos guardan un string que evalúan en cada consulta que se les haga

PostgresSQL posee el tipo de dato **json** y **jsonb** que guarda los datos de forma binaria, estos tipos de datos permiten que internamente postgresql guarde una estructura con la que puede trabajar más cómodamente los tipos de datos json

Tabla con una columna en formato json

```sql
-- DROP TABLE ordenes;
CREATE TABLE ordenes(
  id serial NOT NULL PRIMARY KEY,
  info json NOT NULL
);

INSERT INTO ordenes (info)
VALUES (
  '{"cliente": "David Shanchez", "items": { "producto": "Biberon", "cantidad": "24" }}'
),
(
  '{"cliente": "Jorge Luis", "items": { "producto": "Carro hotweels", "cantidad": "2" }}'
),
(
  '{"cliente": "Sancho Panza", "items": { "producto": "Caja", "cantidad": "13" }}'
);

-- regresa el valor aun en formato json
SELECT
  info -> 'cliente' AS cliente
FROM ordenes;

-- regresa el valor en formato string
SELECT
  info ->> 'cliente' AS cliente
FROM ordenes;

-- usando filtros con un campo json
SELECT
  info ->> 'cliente' AS cliente
FROM ordenes
WHERE info -> 'items' ->> 'producto' = 'Biberon';
```

## Agregando objetos

De las facultades mas importantes de un data sciencetist es resumir los datos

para poder trabajar los valores que hay dentro del json como un numero debe primero hacer un CAST de estos valores

```sql
SELECT
  MIN(
    CAST (
      info -> 'items' ->> 'cantidad'
      AS INTEGER
    )
  ),
  MAX(
    CAST (
      info -> 'items' ->> 'cantidad'
      AS INTEGER
    )
  ),
  SUM(
    CAST (
      info -> 'items' ->> 'cantidad'
      AS INTEGER
    )
  ),
  AVG(
    CAST (
      info -> 'items' ->> 'cantidad'
      AS INTEGER
    )
  )
FROM ordenes;
```

recordar que el manejo de json es una tarea pesada para el motor cada que se deben analizar estos datos, por lo cual si la velocidad de ejecucion de esa columna es muy importante se pueden trabajar como jsonb que es una forma nativa de Postgresql de manejar los json como un objeto binario

## Common table expressions

Esto es el uso de expresiones de las tablas para ahorrar memoria

```sql
WITH RECURSIVE  tabla_recursiva(n) AS (
  VALUES(1)
  UNION ALL
  SELECT n+1 FROM tabla_recursiva WHERE n < 100
) SELECT SUM(n) FROM tabla_recursiva;
```

Básicamente son estructuras de contro en PosgreSQL. En este caso el profesor solo hizo un bucle y retornó un número, pero podría haber ejecutado algo más interesante como una serie de Updates u otra cosa.
.
A veces, cuando estás programando, te puede pasar que tengas que hacer un bucle en Python, PHP, JS o el lenguajes que estés usando (a partir de ahora diré Python para simplificar) y que dentro del bucle tengas que ejecutar una sentencia SQL. Realizar cálculos en Python y volver a insertar datos. En estos casos, en cada vuelta del loop Python tendrá que llamar internamente al conector que le permite leer la base de datos, luego realizará los cálculos y conectará otra vez para con la DB para insertar el valor final.

Bueno, en estos casos puedes hacer uso de las Common Table Expressions para hacer to loop directamente en PostgreSQL, realizar tus calculos y volver a insertar sin tener que llamar al conector en cada itineración. Ahorrarás tiempos, recursos, dinero, la aplicación será más rápida y te darán un ascenso… bueno… puede que lo último no pase solo por eso, pero si lo sabes vender impresiones puede que impresiones a algo y te ayude a conseguirlo en el largo plazo.

Para saber más: [Leer la documentación oficial](https://www.postgresql.org/docs/13/queries-with.html)

### Notas rusbelBermudez Common Table Expressions

rusbel
rusbelBermudez

Common Table Expressions (de ahora en adelante CTE’s) se utilizan con la sentencia **WITH** y proveen una forma de desestructurar largos queries que a su vez pueden contener sub-queries o anidaciones, WITH permite crear una tabla temporal en memoria la cual le podemos aplicar a los amigos **SELECT, INSERT, UPDATE**, o DELETE y que a su vez podemos encadenar con otras sentencias tablas virtuales deltro del mismo **WITH**. **La ventaja fundamental** de estas CTE’s es que tienen mucho mejor performance que hacer un query dentro de otro query, ademas permite mejorar la legibilidad de tu codigo con el trade-off de que tendras muchas más lineas de codigo (o un exceso de verbosity, zen de python es mejor ser explicito), la otra funcion de la sentencia **WITH** es con la sentencia **RECURSIVE**, lo que nos permite generar una tabla con valores iterativos con la que podemos hacer operaciones de actualizacion o tareas de mantenimiento de datos o reindexar datos en tablas.

En este tutorial me enfoco en el primer caso obtenemos las peliculas de genero Horror, mas rentadas con un precio de renta mayor a $1 y con mas de 100 minutos de duracion te dejo 3 ejemplos para realizar esta consulta donde debemos hacer join a diferentes tablas.
**Ejemplo 1: Uso extensivo de JOINS**

```sql
-- Uso extensivo de JOINS
SELECT 
  peliculas.titulo,
  peliculas.clasificacion,
  categorias.nombre AS genero,
  count(*) AS rentas_acumuladas,
  precio_renta * count(rentas.fecha_renta) AS monto_rentas_acumulado
FROM rentas
-- RELACIONA RENTAS CON INVENTARIOS
JOIN inventarios
    ON rentas.inventario_id = inventarios.inventario_id
-- relacion peliculas con inventarios
JOIN peliculas
    on inventarios.pelicula_id = peliculas.pelicula_id
-- relacion peliculas con peliculas_categorias
JOIN peliculas_categorias
  ON peliculas.pelicula_id = peliculas_categorias.pelicula_id
-- relacion peliculas_categorias con categorias
JOIN categorias
  ON peliculas_categorias.categoria_id = categorias.categoria_id
-- condicional construido gracias a los join
WHERE
  peliculas.precio_renta < 1 and
  categorias.nombre = 'Horror'

GROUP BY   peliculas.pelicula_id, genero
ORDER BY rentas_acumuladas DESC;

-- Execution Time: 1.482 ms
```

**Ejemplo 2: Utilizando Sub-queries (un SELECT dentro de otro SELECT)**
Para este ejemplo en particular es un tanto redundante, y si a mi parecer es mejor dejarlo como el codigo de arriba, su objetivo es que entiendas las diferencias.

```sql
SELECT 
  peliculas.titulo,
  peliculas.clasificacion,
  categorias.nombre AS genero,
  count(*) AS rentas_acumuladas,
  precio_renta * count(rentas.fecha_renta) AS monto_rentas_acumulado 
FROM rentas
-- join entre rentas e inventario
JOIN inventarios
    ON rentas.inventario_id = inventarios.inventario_id

JOIN peliculas
    on inventarios.pelicula_id = peliculas.pelicula_id

JOIN peliculas_categorias
  ON peliculas.pelicula_id = peliculas_categorias.pelicula_id

JOIN categorias
  ON peliculas_categorias.categoria_id = categorias.categoria_id
-- el condicional se construye con un subquery el cual es menos performante
WHERE
  peliculas.precio_renta < 1 and
  categorias.nombre IN (
    SELECT nombre
    FROM categorias
    WHERE nombre = 'Horror'
  )

GROUP BY   peliculas.pelicula_id, genero
ORDER BY rentas_acumuladas DESC;

-- Execution Time: 1.401 ms
```

**Ejemplo 3: Utilizando Common Table Expressions (CTE’s)**
Este ejemplo es bastante mas verbose, te lo explico, WITH como te decia permite crear tablas temporales en memoria dentro del bloque de parentesis, en este caso creo la tabla peliculas_rentadas la cual hace join de inventarios y rentas ya que esta ultima no tiene el campo pelicula_id, la segunda tabla es peliculas_categoria_horror, ahora puedes llamar estas tablas de forma individual de la siguiente manera

```sql
-- tabla temporal 1
WITH peliculas_rentadas AS (
  SELECT pelicula_id, COUNT(fecha_renta) AS rentas_acumuladas
  FROM inventarios
  JOIN  rentas
    ON inventarios.inventario_id = rentas.inventario_id
  GROUP BY inventarios.pelicula_id
  ORDER BY rentas_acumuladas DESC
), 

-- tabla temporal 2
peliculas_categoria_horror AS (
  SELECT pelicula_id, nombre
  FROM peliculas_categorias
  JOIN categorias 
    ON peliculas_categorias.categoria_id = categorias.categoria_id
  WHERE 
    categorias.nombre = 'Horror'
)

SELECT * FROM peliculas_rentadas;
-- SELECT * FROM peliculas_categoria_horror;

-- O sustituyendo por peliculas_categoria_horror 
```

Ahora viene la magia, re-utilizando el codigo anterior podemos utilizar el campo **pelicula_id** para hacer join directamente al campo de peliculas y aplicar las restricciones con la sentencia **WHERE**

```sql
-- tabla temporal 1
WITH peliculas_rentadas AS (
  SELECT pelicula_id, COUNT(fecha_renta) AS rentas_acumuladas
  FROM inventarios
  JOIN  rentas
    ON inventarios.inventario_id = rentas.inventario_id
  GROUP BY inventarios.pelicula_id
  ORDER BY rentas_acumuladas DESC
), 

-- tabla temporal 2
peliculas_categoria_horror AS (
  SELECT pelicula_id, nombre
  FROM peliculas_categorias
  JOIN categorias 
    ON peliculas_categorias.categoria_id = categorias.categoria_id
  WHERE 
    categorias.nombre = 'Horror'
)

SELECT 
  peliculas.titulo,
  peliculas.clasificacion,
  peliculas_categoria_horror.nombre AS genero,
  peliculas_rentadas.rentas_acumuladas AS rentas_acumuladas,
  precio_renta * (peliculas_rentadas.rentas_acumuladas) AS monto_rentas_acumulado 
  
FROM peliculas
  JOIN peliculas_categoria_horror
    ON peliculas.pelicula_id = peliculas_categoria_horror.pelicula_id
  JOIN peliculas_rentadas
    ON peliculas.pelicula_id = peliculas_rentadas.pelicula_id

WHERE 
  peliculas.duracion > 100 and peliculas.precio_renta < 1 ;

-- Execution Time: 8.288 ms
```

Como tu puedes observar, son tres ejemplos que realizan la misma función, sin embargo cuando tu tabla crece a medida que tu aplicación gana popularidad el performance de las consultas se vuelve vital, por lo que te invito a probar con codigo de tu invencion y revisar el tiempo que tarda cada consulta en realizarse.

Finalmente te invito a utiliar los CTE’s que pueden llegar a reducir el tiempo del query, aumentar su legibilidad y al mismo tiempo su mantenimiento en caso de que necesites modificar o crear nuevos features.

[Link al tutorial original](https://platzi.com/tutoriales/1780-postgresql-datos/7204-common-table-expressions/)

## Window functions

Son funciones internas de postgresql que permiten consultar acerca de informacion de las tablas y la relacion que existe entre sus registros

- Las window function se ocupan para entender la relación que guarda un registro en particular con respecto al resto del dataset, ya sea una tabla, una partición o un query.

- Generalmente se encargan de hacer rankings

[Documentacion oficial](https://www.postgresql.org/docs/13/functions-window.html)

## Particiones

Postgresql a diferencia de otros manejadores de bases de datos permite manejar particiones de una manera muy explicita. ya que todos los manejadores las usan de forma interna y postgresql adema de hacer estos nos permite a nosotros definir explícitamente como serán las particiones.

Las particiones consisten en separar datos de forma física manteniendo la integridad lógica.

las tablas particionadas no pueden usar primary keys o claves únicas ya que el campo por el cual se realiza la partición cumple estas funciones.

Las particiones se suelen crear en base a la fecha

No todas las tablas requieren o se les recomienda usar particiones

Registros de usuarios o artículos de información no se recomiendan las particiones ya que se pierde la capacidad de identificarlos con un id único

Entre caso un registro de millones de datos de las ventas de una compañía si puede usar particiones ya que las consultas se hacen en base a la fecha de las ventas además de al tener tantos registros las particiones mejoran la velocidad de ejecución de las queries en la tabla.

### Otras notas

Particionado - Dividir una tabla en segmentos lógicos. Es una practica común de los manejadores, pero no todos ofrecen la opción para los usuarios de administrar estas particiones. Resulta útil para optimizar las consultas de datos.
Observaciones:

No todas las tablas deben de ser particionadas, vale la pena hacerlo unicamente cuando hay muchos registros.
Permite optimizar algunas consultas al no tener que buscar dentro de toda una tabla sino unicamente en un segmento especifico.
El particionado altera la consistencia de la tablas
No existen los indices (llaves primarias) en las particiones, o mejor dicho, estos indices cambian basándose en la partición. e.g Si particionas una tabla por fechas, al buscar un dato especifico el primer criterio de búsqueda será la fecha

## Presentación del proyecto

Crear un Dashboard

las aplicaciones más directas de la ciencia de datos son los Dashboards

los Dashboards son tableros que nos permiten de forma muy directa y visual identificar de un vistazo información vital para el negocio

los Dashboards dependen del tipo de publico
ya que depende de la posición en la organización un tipo de información sera más valiosa que otra.

Nos enfocaremos en dejar la información a modo que cualquier herramienta de presentación de datos pueda utilizar la información fácilmente

[Herramienta para hacer gráficos basados en los resultados de los queries hechos en SQL.](https://mode.com/)

## Top 10

Obteniendo el top 10 de las peliculas

```SQL
SELECT
  peliculas.pelicula_id AS id,
  peliculas.titulo,
  COUNT(*) AS numero_rentas,
  -- para agregar un indice de la posición de la fila en el ranking
  ROW_NUMBER () OVER (
    -- no se puede usar numero_rentas porque no existe hasta que la query se ejecuta
    ORDER BY COUNT(*) DESC
  ) AS lugar
FROM rentas
  INNER JOIN inventarios ON rentas.inventario_id = inventarios.inventario_id
  INNER JOIN peliculas ON inventarios.pelicula_id = peliculas.pelicula_id
GROUP BY peliculas.pelicula_id
ORDER BY numero_rentas DESC
LIMIT 10;
```

## Actualizando precios

Una tarea comun en la ciencia de datos es transformar datos o guardar datos de una forma ligeramente diferente en otro lugar

Pidiendo la data en formato para cambio de moneda

```SQL
SELECT peliculas.pelicula_id,
  tipos_cambio.tipo_cambio_id,
  tipos_cambio.cambio_usd * peliculas.precio_renta AS precio_mxn
FROM peliculas,
  tipos_cambio
WHERE tipos_cambio.codigo = 'MXN';
```

Guardando la data con un trigger

```SQL
CREATE FUNCTION public.precio_peliculas_tipo_cambio()
    RETURNS trigger
    LANGUAGE 'plpgsql'
     NOT LEAKPROOF
AS $BODY$
BEGIN
  INSERT INTO precio_peliculas_tipo_cambio(
    pelicula_id,
    tipo_cambio_id,
    precio_tipo_cambio,
    ultima_actualizacion
  )
  SELECT NEW.pelicula_id,
    tipos_cambio.tipo_cambio_id,
    tipos_cambio.cambio_usd * NEW.precio_renta AS precio_tipo_cambio,
    CURRENT_TIMESTAMP
  FROM tipos_cambio
  WHERE tipos_cambio.codigo = 'MXN';
  RETURN NEW;
END
$BODY$;

ALTER FUNCTION public.precio_peliculas_tipo_cambio()
    OWNER TO luis;
```

Guardando el trigger

```sql
CREATE TRIGGER trigger_update_tipos_cambio
  AFTER INSERT OR UPDATE
  ON public.peliculas
  FOR EACH ROW
  EXECUTE PROCEDURE public.precio_peliculas_tipo_cambio();
```

De esta forma se guarda el precio de una peliculas en los tipos de cambio disponible al guardar o editar un pelicula

## Usando rank y percent rank

para obtener el rankin percentil

```sql
PERCENT_RANK
```

Obtener el rankin denso de los registros

```sql
DENSE_RANK
```

Obteniendo el top mediante el uso del ranking

```sql
SELECT
  peliculas.pelicula_id AS id,
  peliculas.titulo,
  COUNT(*) AS numero_rentas,
  -- Ranking percentil
  -- PERCENT_RANK () OVER (
  DENSE_RANK () OVER (
    -- cambiar el orden entre ASC y DESC cambia completamente como se define el percentil
  -- siendo el procentaje inclusivo del mayor al menor o a la inversa
    --ORDER BY COUNT(*) ASC
    ORDER BY COUNT(*) DESC
  ) AS lugar
FROM rentas
  INNER JOIN inventarios ON rentas.inventario_id = inventarios.inventario_id
  INNER JOIN peliculas ON inventarios.pelicula_id = peliculas.pelicula_id
GROUP BY peliculas.pelicula_id
ORDER BY numero_rentas DESC;
```

## Ordenando datos geográficos

Los datos geográficos se pueden encontrar en forma de coordenadas (latitud y longitud), direcciones, codigo de pais, paises , ciudades etc...

agrupando los datos en cantidad de rentas por ciudad

```sql
SELECT
  ciudades.ciudad_id,
  ciudades.ciudad,
  COUNT(*) AS rentas_por_ciudad
FROM
  ciudades
  INNER JOIN direcciones ON ciudades.ciudad_id = direcciones.ciudad_id
  INNER JOIN tiendas ON tiendas.direccion_id = direcciones.direccion_id
  INNER JOIN inventarios ON inventarios.tienda_id = tiendas.tienda_id
  INNER JOIN rentas ON inventarios.inventario_id = rentas.inventario_id
GROUP BY ciudades.ciudad_id;
```

## Datos en el tiempo

Agrupar los datos en base a una medida de tiempo es muy util a la hora de construir graficos de linea o barra en los cuales se puede ver facilmente como ha sido el comportamiento de los datos a lo largo del tiempo

Cantidad de rentas de una pelicula por año y por mes

```sql
SELECT
  date_part('year', rentas.fecha_renta) AS year,
  date_part('month', rentas.fecha_renta) AS month,
  peliculas.titulo,
  COUNT(*) AS numero_rentas
FROM
  rentas
  INNER JOIN inventarios ON rentas.inventario_id = inventarios.inventario_id
  INNER JOIN peliculas ON peliculas.pelicula_id = inventarios.pelicula_id
GROUP BY year, month, peliculas.pelicula_id;
```

Numero de rentas por mes y por año

```sql
-- numero de rentas por mes y por año
SELECT
  date_part('year', rentas.fecha_renta) AS year,
  date_part('month', rentas.fecha_renta) AS month,
  COUNT(*) AS numero_rentas
FROM
  rentas
GROUP BY year, month
ORDER BY year, month;
```

## Visualizando datos con Tableau

Tableau es una herramienta de visualizacion de datos muy poderosa que nos permite directamente conectarnos a una base de datos y contruir Data Viz en base a ellos.

## ¿Qué sigue?

Recordar que en la ciencia de datos Postgresql es una herramienta mas que nos ayuda en nuestras labores como Data Scientist
