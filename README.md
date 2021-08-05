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

- Triggers
