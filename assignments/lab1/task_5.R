context("task 5")

test_that("Marking of task 5", {
  expect_true(exists("Var"), info = "Var() does not exist.")
  expect_is(Var(c(1,2,3)), "numeric", info = "Var is not return a numeric value")
  expect_equal(Var(c(1,1)), 0, info = "Var contains erroneous values")
  expect_equal(Var(c(1,1,2)), 1/3, info = "Var contains erroneous values")
})