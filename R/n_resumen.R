
n_resumen <- function(base, col_number = NULL){

  if(is.null(col_number)) col_number <- 1:ncol(base)

  NB_table <- naval_battle(base = base, col_number = col_number)

  rejunte <- apply(base[col_number], 2, function(x){

    total_cell <- length(x)
    n_na <- sum(is.na(x))
    n_data <- total_cell - n_na
    n_all <- nrow(na.omit(base[col_number]))
    out <- Hmisc::llist(total_cell, n_na, n_data, n_all)

    out <- do.call(cbind.data.frame, out)

    #    out <- unlist(out)
    #    out <- t(out)
    #out <- cbind(total_data, n_na, n_data)


  })

  out <- do.call(rbind.data.frame, rejunte)
  out <- cbind.data.frame(NB_table, out)
  rownames(out) <- c(1:nrow(out))
  return(out)
}
