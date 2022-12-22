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

# num2let()
Es muy común utilizar como archivo base de datos a un archivo tipo Excel. En el podemos ver que a cada variable le corresponde una letra.
La primer columna es "A", la segunda columna es "B", y así sucesivamente. ¿La columna 14, a qué letra de columna corresponde?


Esta función permite ingresar un número, y devuelve una letra. E


Image:

![](https://raw.githubusercontent.com/deliaspanigo/Rscience.base/main/readme_files/Ejemplo001.png)
