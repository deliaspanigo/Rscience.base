
DeleteSpecialCharacters <- function(my_string){

  my_string_mod <- my_string

  # Convert all symbols to ASCII
  my_string_mod <- iconv(my_string_mod, from = 'UTF-8', to = 'ASCII//TRANSLIT')

  # All space to point
  my_string_mod <- gsub(" ","." ,my_string_mod ,ignore.case = TRUE)

  # Only Numbers and Letters
  my_string_mod <- gsub("[^0-9A-Za-z._' ]","" ,my_string_mod ,ignore.case = TRUE)


  return(my_string_mod)
}
