test_that("DeleteSpecialCharacters() Test - ", {

  special_string <- "ñ"
  expect_equal(DeleteSpecialCharacters(special_string), "n")

})



test_that("DeleteSpecialCharacters() Test - ", {


  special_string <- "ñ ñ /$"
  expect_equal(DeleteSpecialCharacters(special_string), "n.n.")
})
