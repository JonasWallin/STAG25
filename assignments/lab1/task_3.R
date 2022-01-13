context("task 3")

test_that("Marking of task 3", {
  expect_true(exists("arith.3"), info = "arith.3() does not exist.")
  expect_is(arith.3(1), "numeric", info = "arith.3 is not return a numeric value")
  expect_equal(arith.3(1), 1, info = "arith.3 contains erroneous values")
  expect_equal(arith.3(2), 1+1/2, info = "arith.3 contains erroneous values")
})