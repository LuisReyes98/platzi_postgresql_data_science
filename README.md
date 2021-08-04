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
