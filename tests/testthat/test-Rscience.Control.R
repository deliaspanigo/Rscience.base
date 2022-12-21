test_that("Rscience.Control.Base() - Test 01: Con mtcars original", {

  base <- mtcars
  language <- "ESP"

  control_general <- Rscience.Control.Base(base = base, language = language)
  expect_equal(5, length(control_general))
  expect_equal(control_general[[5]], T)
})



test_that("Rscience.Control.Base() - Test 02: Con mtcars modificado", {

  base <- mtcars
  colnames(base) <- paste0(colnames(base), "%&/[(][(]&%-.$ $#$%&**++--[)]")
  language <- "ESP"

  control_general <- Rscience.Control.Base(base = base, language = language)
  expect_equal(length(control_general), 5)
  expect_equal(control_general[[5]], F)

})
