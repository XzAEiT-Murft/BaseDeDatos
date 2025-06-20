# 📊  Tipos de Datos en MySQL

MySQL ofrece una variedad de tipos de datos para almacenar información de manera eficiente y flexible. Aquí tienes una guía visual de los principales tipos de datos, agrupados por categorías:

---

## 1️⃣ Tipos Numéricos

| Tipo           | Descripción                        | Rango o Precisión                |
|:--------------:|:----------------------------------:|:--------------------------------:|
| `TINYINT`      | Entero muy pequeño (1 byte)        | -128 a 127 / 0 a 255 (UNSIGNED)  |
| `SMALLINT`     | Entero pequeño (2 bytes)           | -32,768 a 32,767 / 0 a 65,535    |
| `MEDIUMINT`    | Entero medio (3 bytes)             | -8,388,608 a 8,388,607 / 0 a 16,777,215 |
| `INT`          | Entero estándar (4 bytes)          | -2,147,483,648 a 2,147,483,647   |
| `BIGINT`       | Entero grande (8 bytes)            | -2^63 a 2^63-1                   |
| `DECIMAL(p,s)` | Número fijo con decimales          | Hasta 65 dígitos                 |
| `FLOAT`        | Punto flotante simple (4 bytes)    | ~-3.4E+38 a 3.4E+38              |
| `DOUBLE`       | Punto flotante doble (8 bytes)     | ~-1.8E+308 a 1.8E+308            |
| `BIT`          | Bits (0 o 1)                       | 1 a 64 bits                      |

---

## 2️⃣ Tipos de Caracteres y Cadenas

| Tipo            | Descripción                          | Longitud máxima         |
|:---------------:|:------------------------------------:|:----------------------:|
| `CHAR(n)`       | Cadena de longitud fija              | Hasta 255 caracteres   |
| `VARCHAR(n)`    | Cadena de longitud variable          | Hasta 65,535 bytes     |
| `TINYTEXT`      | Texto muy corto                      | Hasta 255 bytes        |
| `TEXT`          | Texto                               | Hasta 65,535 bytes     |
| `MEDIUMTEXT`    | Texto medio                         | Hasta 16,777,215 bytes |
| `LONGTEXT`      | Texto largo                         | Hasta 4 GB             |
| `ENUM`          | Lista de valores permitidos          | 65,535 valores         |
| `SET`           | Conjunto de valores permitidos       | 64 valores             |

---

## 3️⃣ Tipos de Fecha y Hora

| Tipo           | Descripción                  | Rango o Precisión                  |
|:--------------:|:---------------------------:|:----------------------------------:|
| `DATE`         | Solo fecha                  | 1000-01-01 a 9999-12-31            |
| `DATETIME`     | Fecha y hora                | 1000-01-01 00:00:00 a 9999-12-31 23:59:59 |
| `TIMESTAMP`    | Fecha y hora (zona UTC)     | 1970-01-01 00:00:01 a 2038-01-19 03:14:07 |
| `TIME`         | Solo hora                   | -838:59:59 a 838:59:59             |
| `YEAR`         | Año                         | 1901 a 2155                        |

---

## 4️⃣ Tipos Binarios

| Tipo             | Descripción                          | Longitud máxima         |
|:----------------:|:------------------------------------:|:----------------------:|
| `BINARY(n)`      | Binario de longitud fija             | Hasta 255 bytes        |
| `VARBINARY(n)`   | Binario de longitud variable         | Hasta 65,535 bytes     |
| `TINYBLOB`       | Binario muy pequeño                  | Hasta 255 bytes        |
| `BLOB`           | Binario                             | Hasta 65,535 bytes     |
| `MEDIUMBLOB`     | Binario medio                       | Hasta 16,777,215 bytes |
| `LONGBLOB`       | Binario grande                      | Hasta 4 GB             |

---

## 5️⃣ Otros Tipos

| Tipo           | Descripción                          |
|:--------------:|:------------------------------------:|
| `BOOL`/`BOOLEAN` | Alias de TINYINT(1)                |
| `JSON`         | Almacena datos en formato JSON       |
| `GEOMETRY`     | Datos espaciales                     |
| `POINT`        | Coordenada espacial                  |
| `LINESTRING`   | Línea espacial                       |
| `POLYGON`      | Polígono espacial                    |

---

> ℹ️ **Nota:** MySQL permite modificar la longitud máxima de algunos tipos de datos según el conjunto de caracteres y la configuración de la base de datos.

---