
#helper function (convert vector to named list)
namel <- function (names_vector, initial_value = NULL){
  sapply(1:length(names_vector), function(x){
    tmp <- list(initial_value[x])
    names(tmp) <- names_vector[x]
    tmp
  })
}
