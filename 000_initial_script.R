# Videos
# https://www.youtube.com/watch?v=KbwYdRbmgbY
# https://www.r-bloggers.com/2019/11/automated-testing-with-testthat-in-practice/


# Instalacion de la libreria desde github
library(devtools)
install_github("deliaspanigo/Rscience.base")


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


