ControlAndChange <- function(base, language, speak = TRUE){

  control01 <- Rscience.Control.Base(base = base, language = language)
  new_col_name <- control01[[3]]$new_col_name

  text01 <- list()
  text01[["ENG"]] <- c("*** Colnames changes ready! ***")
  text01[["ESP"]] <- c("*** Se realizo el cambio de nombre de columnas! ***")

  # Si hay algun error!
  if(!control01[[5]]) colnames(base) <- new_col_name

  # Speak!
  if(speak) cat(control01[[4]], "\n")

  if(!control01[[5]])  if(speak) cat(text01[[language]], "\n")
  return(base)
}
