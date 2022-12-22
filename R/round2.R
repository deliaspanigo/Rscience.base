round2 <- function(x, digits) {
  posneg <- sign(x)

  z <- abs(x)*10^digits
  z <- z + 0.5
  z <- trunc(z)
  z <- z/10^digits
  z*posneg
}
