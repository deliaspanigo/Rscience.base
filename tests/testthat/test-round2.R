test_that("round2 test - 0.5 con cero digitos devuelve 1.", {
  expect_equal(round2(0.5, n = 0), 1)
})


test_that("round2 test - 0.5 con un digito devuelve 1.", {
  expect_equal(round2(0.5, n = 1), 0.5)
})


test_that("round2 test - 0.4 con cero digitos devuelve 0.", {
  expect_equal(round2(0.4, n = 0), 0)
})


test_that("round2 test - 0.4 con un digito devuelve 1.", {
  expect_equal(round2(0.4, n = 1), 0.4)
})
