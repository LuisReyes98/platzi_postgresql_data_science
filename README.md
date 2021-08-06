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

- **Data Driven.** Consiste en tomar decisiones basadas en los datos. Es labor del DS brindar estos datos y sus representaciones.
- **Información significativa.** Entender de que manera podemos aprovechar los datos para decir que cosa y cómo la vamos a presentar
Representación de los datos. Es importante presentar de forma visual los datos dependiendo del problema y el publico al que va dirigida esta presentación.
- **Neutralidad de datos.** Hay ocasiones en la que los datos escogidos generan situaciones fuertes de discriminación a la hora de usarlos en modelos de AI, esto es conocido como Machine Bias.
- **Storytelling con datos.** Es importante ser capaz de comunicar resultados para poder generar un impacto dentro de la organización.
