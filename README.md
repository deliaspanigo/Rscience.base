# Rscience.base
El paquete 'Rscience.base' contiene un conjunto de funciones que facilitarán:
- Selección de columnas de una base de datos a partir de su letra de columna.
- Control, eliminación y cambio de caracteres especiales en el nombre de las columnas.
- Batalla Naval: posición de letra de columna Excel de cada variable.
- Determinación del "n" de cada variable y del "n" en cojunto de todas las variables seleccionadas, junto al detalle de cantidad de datos vacios.

# Instalación Rscience.base
La librería Rscience.base se instala desde el repositorio de github. Para ello el usuario previamente debe tener instalado en su computadora la librería 'devtools'.
```r
install.packages("devtools", dependences = T)
```
Una vez instalada la librería 'devtools', realizamos la instalación de la librería 'Rscience.base'.
```r
# Instalacion de la libreria desde github
library(devtools)
install_github("deliaspanigo/Rscience.base", force = TRUE)

```
# Activación de la librería
Para utilizar las funciones contenidas en la librería debes activar la librería 'Rscience.base".
```r
library("Rscience.base")
```

# Funciones y Objetos de la librería 'Rscience.base'
Una vez cargada la librería, podemos ver el detalle de las funciones y objetos de la librería Rscience.
```r
library("Rscience.base")
ls("package:Rscience.base")
```

Funciones y ejemplos
![](https://github.com/deliaspanigo/Rscience.base/blob/main/readme_files/img02.png)

Veremos un pequeño resumen de cada funcion y objeto de la librería. No lo haremos en orden alfabético (como está detallado en la salida de R), sino en el orden de utilidad para el usuario.

# num2let()
Es muy común utilizar como archivo base de datos a un archivo tipo Excel. En él podemos ver que a cada variable le corresponde una letra.
La primer columna es "A", la segunda columna es "B", y así sucesivamente. ¿La columna 14, a qué letra de columna corresponde?
```r
num2let(14)
# N
```
Las columnas 1, 2, 25, 26, 30, 73, 81, ¿a qué letra de columna se corresponden?
```r
num2let(c(1, 2, 25, 26, 30, 73, 81))
# "A"  "B"  "Y"  "Z"  "AD" "BU" "CC"
```

Podemos tanto asignar un vector con los números, como guardar las letras de columnas en un nuevo objeto.
```r
numero_columna <- c(1, 2, 25, 26, 30, 73, 81)
letra_columna <- num2let(numero_columna)
letra_columna
# "A"  "B"  "Y"  "Z"  "AD" "BU" "CC"
```

# let2num()
Al ser detallada una letra, devuelve el número de posición que le corresponde. Es una función sumamente útil si el usuario utiliza archivos Excel.
A la columna "A" le corresponde el número 1. A la columna "B" le corresponde el número 2, y así. La función let2num() solo permite ingresar letras mayúsculas.
La columna W, ¿qué número de columna se corresponde?
```r
let2num("W")
# 23
```
Las columnas "A", "B", "W", "Z", "AA", "AJ", "GT", ¿a qué número de columna corresponden?
```r
let2num(c("A", "B", "W", "Z", "AA", "AJ", "GT"))
# 1   2  23  26  27  36 202
```

Podemos tanto asignar un vector con las letras, como guardar los números de columna nuevo objeto.
```r
letra_columna <- c("A", "B", "W", "Z", "AA", "AJ", "GT")
numero_columna <- let2num(letra_columna)
numero_columna
# 1   2  23  26  27  36 202
```

# round2()
Existen varias funciones para redondear valores numéricos con decimales en R. Podemos nombrar round(), floor(), ceiling() y trunc().
Los usuarios suelen dar por senteado que el redondeo en llevado a cabo como ellos piensan. Esto quiere decir que con valores decimales entre 0 y 4 el redondeo es hacia abajo; y con valores decimales entre 5 y 9 redondeamos hacia arriba. Veamos que la suposición del usuario puede ser incorrecta, y que es importante que el usuario se informe sobre la función a través del HELP y dejar de dar por sentado la acción que realiza una función. Un valor de 0.5 al ser redondeado sin dígitos decimales pasaría a ser 1, sin embargo en R pasa a ser 0:
```r
round(0.5, digits = 0)
# 0
```
Esto se debe a que el redondeo por defecto de R no redondea de la manera en que lo hemos hecho en la secundaria. Lo hace de otra forma. Para ver los detalles correspondientes lea en Help de la función round(). Para realizar redondeos como solemos realizarlo debemos utilizar la función round2().
```r
round2(0.5, digits = 0)
# 1
```

# naval_battle()
Dentro de la base de datos cada columna toma una posición en particular. Al utilizar archivos tipo Excel, el usuario utliza la denominación de letra de columna dentro del entorno de Excel. Entonces, una variable está en la columna A, G, H, AB, JC, etc. Dentro del entorno de R la invocación de una variable puede realizarse a través de su número de columna dentro de la base de datos o del nombre de la columna. La función naval_battle() reune a todas las formas de denominar e invocar a una columna en una sola tabla.
Veamos un ejemplo con una base de R llamada mtcars.

```r
# Tabla Batalla Naval
tabla_BN <- naval_battle(base = mtcars, col_number = c(1,3,5,7,9))
tabla_BN
```
Si ejecutamos las sentencias, obtendremos la siguiente tabla:
![](https://github.com/deliaspanigo/Rscience.base/blob/main/readme_files/img03.png)


Image:

![](https://raw.githubusercontent.com/deliaspanigo/Rscience.base/main/readme_files/Ejemplo001.png)
