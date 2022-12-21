test_that("let2numn() Test: A is for 1", {
  expect_equal(let2num("A"), 1)
})


test_that("let2numn() Test: B is for 2", {
  expect_equal(let2num("B"), 2)
})


test_that("let2numn() Test: A,B is for 1,2", {
  expect_equal(let2num(c("A", "B")), c(1,2))
})


test_that("let2numn() Test: A:Z is for 1:26", {
  expect_equal(let2num(LETTERS), c(1:26))
})

test_that("let2numn() Test: GOKU is 133479", {
  expect_equal(let2num("GOKU"), 133479)
})
