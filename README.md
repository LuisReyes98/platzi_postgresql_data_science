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
