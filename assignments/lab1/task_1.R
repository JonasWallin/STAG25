### Assignment : task1 ###

context("task 1")

test_that("Marking of task 1", {
  expect_true(exists("artih.1"), info = "artih.1() does not exist.")
  expect_is(artih.1, "numeric", info = "artih.1 is not return a numeric value")
  expect_equal(round(artih.1()), 66, info = "artih.1 contains erroneous values")
})