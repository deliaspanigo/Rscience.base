# Videos
# https://www.youtube.com/watch?v=KbwYdRbmgbY
# https://www.r-bloggers.com/2019/11/automated-testing-with-testthat-in-practice/


# Instalacion de la libreria desde github
library(devtools)
install_github("deliaspanigo/Rscience.base", force = TRUE)


# Hacer cambios de testing
library(devtools)
library("testthat")

# Esto lo ejecutamos al abrir una funcion en particular
# y querer ejecutar un control especifico para una funcion.
# Esto setea y crea un nuevo archivo de control para esa funcion
# en particular.
use_testthat()

# COV R!!!
library(covr)
covr <- package_coverage(path="./")
covr
report(covr)

# Tabla Batalla Naval
tabla_BN <- naval_battle(base = mtcars, col_number = c(1,3,5,7,9))
tabla_BN

# Detalles para agregar un dataframe a un paquete de R
# https://grasshoppermouse.github.io/posts/2017-10-18-put-your-data-in-an-r-package/
