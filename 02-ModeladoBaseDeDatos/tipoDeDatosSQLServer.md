# 📦 Tipos de Datos en SQL Server

SQL Server ofrece una amplia gama de tipos de datos para almacenar información de manera eficiente, segura y precisa. Aquí tienes una guía visual de los principales tipos de datos, agrupados por categorías:

---

## 1️⃣ Tipos Numéricos

| Tipo           | Descripción                        | Rango o Precisión                |
|:--------------:|:----------------------------------:|:--------------------------------:|
| `int`          | Entero de 4 bytes                  | -2,147,483,648 a 2,147,483,647   |
| `smallint`     | Entero de 2 bytes                  | -32,768 a 32,767                 |
| `tinyint`      | Entero de 1 byte                   | 0 a 255                          |
| `bigint`       | Entero de 8 bytes                  | -2<sup>63</sup> a 2<sup>63</sup>-1 |
| `decimal(p,s)` | Número fijo con decimales          | Hasta 38 dígitos                 |
| `numeric(p,s)` | Igual que decimal                  | Hasta 38 dígitos                 |
| `float`        | Punto flotante (8 bytes)           | -1.79E+308 a 1.79E+308           |
| `real`         | Punto flotante (4 bytes)           | -3.40E+38 a 3.40E+38             |
| `money`        | Moneda (8 bytes)                   | -922,337,203,685,477.5808 a 922,337,203,685,477.5807 |
| `smallmoney`   | Moneda (4 bytes)                   | -214,748.3648 a 214,748.3647     |

---

## 2️⃣ Tipos de Caracteres y Cadenas

| Tipo            | Descripción                          | Longitud máxima         |
|:---------------:|:------------------------------------:|:----------------------:|
| `char(n)`       | Cadena de longitud fija              | Hasta 8,000 caracteres |
| `varchar(n)`    | Cadena de longitud variable          | Hasta 8,000 caracteres |
| `varchar(max)`  | Cadena variable grande               | Hasta 2 GB             |
| `nchar(n)`      | Cadena Unicode fija                  | Hasta 4,000 caracteres |
| `nvarchar(n)`   | Cadena Unicode variable              | Hasta 4,000 caracteres |
| `nvarchar(max)` | Cadena Unicode variable grande       | Hasta 2 GB             |
| `text`          | Texto variable (obsoleto)            | Hasta 2 GB             |
| `ntext`         | Texto Unicode (obsoleto)             | Hasta 2 GB             |

---

## 3️⃣ Tipos de Fecha y Hora

| Tipo             | Descripción                        | Rango o Precisión                  |
|:----------------:|:----------------------------------:|:----------------------------------:|
| `date`           | Solo fecha                         | 0001-01-01 a 9999-12-31            |
| `datetime`       | Fecha y hora                       | 1753-01-01 a 9999-12-31 (3.33 ms)  |
| `datetime2`      | Fecha y hora precisa               | 0001-01-01 a 9999-12-31 (100 ns)   |
| `smalldatetime`  | Fecha y hora menos precisa         | 1900-01-01 a 2079-06-06 (1 min)    |
| `time`           | Solo hora                          | 00:00:00.0000000 a 23:59:59.9999999|
| `datetimeoffset` | Fecha y hora con zona horaria      | 0001-01-01 a 9999-12-31            |

---

## 4️⃣ Tipos Binarios

| Tipo             | Descripción                          | Longitud máxima         |
|:----------------:|:------------------------------------:|:----------------------:|
| `binary(n)`      | Binario de longitud fija             | Hasta 8,000 bytes      |
| `varbinary(n)`   | Binario de longitud variable         | Hasta 8,000 bytes      |
| `varbinary(max)` | Binario variable grande              | Hasta 2 GB             |
| `image`          | Binario grande (obsoleto)            | Hasta 2 GB             |

---

## 5️⃣ Otros Tipos

| Tipo               | Descripción                          |
|:------------------:|:------------------------------------:|
| `bit`              | Valor booleano (0 o 1)               |
| `uniqueidentifier` | Identificador único (GUID)           |
| `xml`              | Almacena datos XML                   |
| `sql_variant`      | Puede almacenar diferentes tipos     |
| `timestamp`        | Marca de tiempo (obsoleto)           |
| `rowversion`       | Marca de versión de fila             |

---

> ⚠️ **Nota:** Algunos tipos como `text`, `ntext`, `image` y `timestamp` están obsoletos. Se recomienda utilizar sus reemplazos modernos (`varchar(max)`, `nvarchar(max)`, `varbinary(max)`, `rowversion`).

---