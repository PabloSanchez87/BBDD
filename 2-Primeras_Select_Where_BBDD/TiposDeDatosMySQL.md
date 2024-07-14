# Tipos de datos en MySQL
## Tipos de cadena
| Tipo | Descripción | Tamaño |
|:---:|:---:|:---:|
|CHAR(size)| Cadenas de longitud Fija. El tamaño se especifica en 'size'| 0 a 255 |
|VARCHAR(SIZE)|Cadenas de longitud VARIABLE. El parámetros 'size' en este caso especifica la longitud máxima de caracteres| 0 a 65535|
|BINARY(size)|Al igual que CHAR(), tiene longitud fija, pero almacena cadenas de bytes binarios|0 a 255|
|VARBINARY(size)|Igual que VARCHAR(), tiene longitud variable con el máximo tamaño especificado en 'size'. También almacena cadenas de bytes binarios| 0 a 65535 |
|TINYBLOB|Binary Large Objects|255|
|TINYTEXT|Contiene una cadena con una longitud máxima de 255 caracteres|0 a 255|
|TEXT(size)|Contiene una cadena con una longitud máxima de 65535 caracteres|0 a 65535|
|BLOB(size)|Binary Large Objects|0 a 65535|
|MEDIUMTEXT|Contiene una cadena con una longitud máxima de 16777215|0 a 16777215|
|MEDIUMBLOB|Contiene un Binary Large Object con una longitud máxima de 16777215|0 a 16777215|
|LONGTEXT|Contiene una cadena con una longitud máxima de 4294967295 caranteres|4294967295|
|LONGBLOB|Contiene un Binary Large Object con una longitud máxima de 4294967295|4294967295|
|ENUM(val1, val2,...)|Objeto cadena que solo puede tener valor elegido de una lista de valores posibles||
|SET(val1, val2,..)|Un objeto de cadena que puede tener 0 o más valores, elegidos de una lista de valores posibles||

---

## Tipos numéricos

| Tipo | Descripción |
|:---:|:---:|
|BIT(size)|Valor de bits. El numero de bits se especifica en 'size', que puede contener un valor desde 1 hasta 64|
|TINYINT(size)|Para números enteros muy pequeños. El rango con signo es de -128 a 127. El intervalo sin signo es de 0 a 255|
|BOOL|Cero se considera FALSO, los valores distintos de cero se consideran VERDADEROS|
|BOOLEAN|Igual a BOOl|
|SMALLINT(size)|Para enteros pequeños. El rango con signo es de -32768 a 32767 y sin signo de 0 a 65525|
|MEDIUMINT(size)|Para enteros medianos. El rango con signo va desde -8388608 a 8388607, y sin signo de 0 a 16777215|
|INT(size)|êrmite números desde -2147483648 hasta 2147483647. Si se define como UNSIGNED permite números desde 0 hasta 4294967295.|
|INTEGER(SIZE)|Igual que INT|
|BIGINT|Permite números desde -9223372036854775808 hasta 9223372036854775807. Si se define como
UNSIGNED (sin signo) permite números desde 0 hasta 18446744073709551615|
|FLOAT(size,d)|Un número de coma flotante. El número total de dígitos se especifica en tamaño. El número de dígitos
después del punto decimal se especifica en el parámetro d. Esta sintaxis está en desuso en MySQL 8.0.17 y
se eliminará en futuras versiones de MySQL|
|FLOAT(p)|Un número de coma flotante. MySQL utiliza el valor p para determinar si se debe utilizar FLOAT o DOUBLE
para el tipo de datos resultante. Si p es de 0 a 24, el tipo de datos se convierte en FLOAT(). Si p es de 25 a 53,
el tipo de datos se convierte en DOUBLE()|
|DOUBLE(size, d)|Un número de coma flotante de tamaño normal. El número total de dígitos se especifica en tamaño. El
número de dígitos después del punto decimal se especifica en el parámetro d|
|DECIMAL(size, d)|Un número exacto de punto fijo. El número total de dígitos se especifica en tamaño. El número de dígitos
después del punto decimal se especifica en el parámetro d. El número máximo para el tamaño es 65. El
número máximo para d es 30. El valor predeterminado para el tamaño es 10. El valor predeterminado para d
es 0|
|DEC(size,d)|Igual a DECIMAL(tamaño,d)|

---

## Tipos de Fecha y Hora

| Tipo | Descripción |
|:---:|:---:|
|DATE|Una fecha. Formato: AAAA-MM-DD. El rango admitido es de '1000-01-01' a '9999-12-31'|
|DATETIME(fsp)|Una combinación de fecha y hora. Formato: AAAA-MM-DD hh:mm:ss. El intervalo admitido es de
'1000-01-01 00:00:00' a '9999-12-31 23:59:59'. Agregar DEFAULT y ON UPDATE en la definición de
columna para obtener la inicialización automática y la actualización a la fecha y hora actuales|
|TIMESTAMP(fsp)|Una marca de tiempo. Los valores de TIMESTAMP se almacenan como el número de segundos desde la
época de Unix ('1970-01-01 00:00:00' UTC). Formato: AAAA-MM-DD hh:mm:ss. El rango admitido es de
'1970-01-01 00:00:01' UTC a '2038-01-09 03:14:07' UTC. La inicialización automática y la actualización a la
fecha y hora actuales se pueden especificar mediante la CURRENT_TIMESTAMP DEFAULT
CURRENT_TIMESTAMP y ON UPDATE en la definición de columna|
|TIME(fsp)|Valor de tiempo. Formato: hh:mm:ss. El intervalo admitido es de '-838:59:59' a '838:59:59'|
|YEAR|Un año en formato de cuatro dígitos. Valores permitidos en formato de cuatro dígitos: 1901 a 2155 y 0000.
MySQL 8.0 no soporta año en formato de dos dígitos.|

---

## Tipos Espaciales

| Tipo | Descripción |
|:---:|:---:|
|GEOMETRY<br> POINT <br> LINESTRING <br> POLYGON|Contiene valores de geometría simples|
|MULTIPOINT <br> MULTILINESTRING <br> MULTIPOLYGON <br> GEOMETRYCOLLECTION|Contiene colecciones de valores de geometría|

---

## Tipos JSON
- JavaScript Object Notation
- Son documentos que contienen propiedades y valores.
- MySQL los almacena en un formato optimizado para mejorar las búsquedas.
- Ejemplo:
    ```JSON
    {
        "Tarea": [
        "Analizar requerimientos del proyecto",
        "Reunión con el cliente",
        "Definir alcance del proyecto",
        "Crear documento de especificaciones"
        ],
        "Estado": "En progreso"
    },
    {
        "Tarea": [
        "Desarrollar prototipo",
        "Revisar diseño con el equipo",
        "Obtener feedback del cliente",
        "Ajustar diseño basado en feedback"
        ],
        "Estado": "Pendiente"
    }
    ```

