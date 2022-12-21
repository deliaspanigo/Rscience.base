

test_that("numt2let() - Test: 1 is for A", {
  expect_equal(num2let(1), "A")
})

test_that("numt2let() - Test: 2 is for B", {
  expect_equal(num2let(2), "B")
})

test_that("numt2let() - Test: 1 and2 is for A and B", {
  expect_equal(num2let(c(1,2)), c("A", "B"))
})


test_that("numt2let() - Test: 1:26 is for A:Z (LETTERS)", {
  expect_equal(num2let(c(1:26)), LETTERS)
})


test_that("numt2let() - Test: 133479 is GOKU", {
  expect_equal(num2let(c(133479)), "GOKU")
})
