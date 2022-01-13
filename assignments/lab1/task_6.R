context("task 6")

test_that("Marking of task 6", {
  expect_true(exists("is.sixes"), info = "is.sixes() does not exist.")
  expect_equal(is.sixes(c(6,6)), TRUE, info = "is.sixes contains erroneous values")
  expect_equal(is.sixes(c(1,6)), FALSE, info = "is.sixes contains erroneous values")
})