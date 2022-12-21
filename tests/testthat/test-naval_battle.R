test_that("multiplication works", {

  base <- mtcars
  selected_columns <- c(1,3,5,7)

  the_table <- naval_battle(base, selected_columns)

  original_colnames <- c("order_number", "col_name",
                         "col_number",   "col_letter")


  expect_equal(colnames(the_table), original_colnames)
  expect_equal(length(colnames(the_table)), length(original_colnames))
  expect_equal(nrow(the_table), length(selected_columns))
  expect_equal(the_table$order_number, 1:length(selected_columns))
  expect_equal(the_table$col_name, colnames(base)[selected_columns])
  expect_equal(the_table$col_number, selected_columns)
  expect_equal(the_table$col_letter, LETTERS[selected_columns])
})

