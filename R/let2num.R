
let2num <- function(x, lets = LETTERS) {
  base <- length(lets)
  s <- strsplit(x, "")
  sapply(s, function(x) sum((match(x, lets)) * base ^ seq(length(x) - 1, 0)))
}

#helper function (convert vector to named list)
namel <- function (names_vector, initial_value = NULL){
  sapply(1:length(names_vector), function(x){
    tmp <- list(initial_value[x])
    names(tmp) <- names_vector[x]
    tmp
  })
}
