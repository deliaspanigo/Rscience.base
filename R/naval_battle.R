naval_battle <- function(base, col_number = NULL){

  if(is.null(col_number)) col_number <- c(1:ncol(base))
  col_name <- colnames(base)[col_number]
  col_letter <- num2let(col_number)

  order_number <- c(1:length(col_number))

  out <- cbind.data.frame(order_number, col_name, col_number, col_letter)

  return(out)

}
