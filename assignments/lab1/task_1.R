### Assignment : task1 ###

context("task 1")

test_that("Marking of task 1", {
  expect_true(exists("arith.1"), info = "arith.1() does not exist.")
  expect_is(arith.1(), "numeric", info = "arith.1() is not return a numeric value")
  expect_equal(round(arith.1()), 320, info = "arith.1 contains erroneous values")
})