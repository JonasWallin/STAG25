context("task 4")

test_that("Marking of task 4", {
  expect_true(exists("Mean"), info = "Mean() does not exist.")
  expect_is(Mean(c(1,2,3)), "numeric", info = "Mean is not return a numeric value")
  expect_equal(Mean(1), 1, info = "Mean contains erroneous values")
  expect_equal(Mean(c(2,3)), (2+3)/2, info = "Mean contains erroneous values")
})