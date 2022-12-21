
test_that("namel() - Test: correct count and names", {
  the_count <- 4
  selected_names <- LETTERS[1:the_count]
  the_list <- namel(selected_names)
  null_count <- sum(unlist(lapply(the_list, is.null)))

  expect_equal(the_count, length(the_list))
  expect_equal(selected_names, names(the_list))
  expect_equal(selected_names, names(the_list))
  expect_equal(the_count, null_count)
})
