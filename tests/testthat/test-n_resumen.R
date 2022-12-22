

test_that("n_resumen() Test - Todas las columnas de una base, sin datos vacios.", {

  base <- mtcars
  selected_vars <- c(1:ncol(base))
  the_table <- n_resumen(base, col_number = selected_vars)

  default_colnames <- c("order_number", "col_name",
                        "col_number", "col_letter",
                        "total_cell", "n_na", "n_data",
                        "n_all")
  expect_equal(the_table$order_number, 1:length(selected_vars))
  expect_equal(colnames(the_table), default_colnames)
  expect_equal(the_table$col_number, selected_vars)
  expect_equal(the_table$col_letter, num2let(selected_vars))
  expect_equal(as.vector(the_table$total_cell), rep(32, nrow(the_table)))
  expect_equal(as.vector(the_table$n_na), rep(0, nrow(the_table)))
  expect_equal(as.vector(the_table$n_data), rep(32, nrow(the_table)))
  expect_equal(as.vector(the_table$n_all), rep(32, nrow(the_table)))
})




test_that("n_resumen() Test - Solo algunas columnas, sin datos vacios", {

  base <- mtcars
  base[1,1] <- NA
  base[3,3] <- NA
  selected_vars <- c(1,3,5,7,9,11)
  the_table <- n_resumen(base, col_number = selected_vars)

  default_colnames <- c("order_number", "col_name",
                        "col_number", "col_letter",
                        "total_cell", "n_na", "n_data",
                        "n_all")
  expect_equal(the_table$order_number, 1:length(selected_vars))
  expect_equal(colnames(the_table), default_colnames)
  expect_equal(the_table$col_number, selected_vars)
  expect_equal(the_table$col_letter, num2let(selected_vars))
  expect_equal(as.vector(the_table$total_cell), rep(32, nrow(the_table)))
  expect_equal(as.vector(the_table$n_na), c(1,1,0,0,0,0))
  expect_equal(as.vector(the_table$n_data), c(31, 31, 32, 32, 32, 32))
  expect_equal(as.vector(the_table$n_all), c(30, 30, 30, 30, 30, 30))
})
