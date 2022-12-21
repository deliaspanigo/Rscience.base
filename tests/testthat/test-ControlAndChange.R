test_that("ControlAndChange() Test - ", {

  base <- mtcars
  base_mod <- ControlAndChange(base = base, language = "ESP", speak = FALSE)
  expect_equal(colnames(base), colnames(base_mod))
})



test_that("ControlAndChange() Test - ", {

  base <- mtcars
  colnames(base) <- paste0(colnames(base), "%&/[(][(]&%-.$ $#$%&**++--[)]")
  base_mod <- ControlAndChange(base = base, language = "ESP", speak = FALSE)
  expected_colnames <- c("mpg..",  "cyl..",  "disp..", "hp..",
                         "drat..", "wt..",   "qsec..", "vs..",
                         "am..",   "gear..", "carb..")


  expect_equal(colnames(base_mod), expected_colnames)
})
