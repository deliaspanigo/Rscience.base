NewColNames <- function(col_names){

  detail <- strsplit(col_names, "")

  for(k1 in 1:length(detail)){

    detail[[k1]] <- DeleteSpecialCharacters(my_string = detail[[k1]])
    if(length(detail[[k1]]) == 1) if(detail[[k1]] == "") detail[[k1]] <- paste0("X", k1)
    detail[[k1]] <- paste0(detail[[k1]], collapse = "")
  }

  new_col_name <- unlist(detail)

  return(new_col_name)
}
