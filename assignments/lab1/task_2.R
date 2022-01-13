### Assignment : task1 ###

context("task 2")

test_that("Marking of task 2", {
  expect_true(exists("arith.2"), info = "arith.2() does not exist.")
  expect_is(arith.2, "numeric", info = "arith.2 is not return a numeric value")
  expect_equal(round(arith.2()), 42, info = "arith.2 contains erroneous values")
})