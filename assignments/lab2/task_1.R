### Assignment : task1 ###

context("task 1")

test_that("Marking of task 1", {
  expect_true(exists("name.columns"), info = "name.columns() does not exist.")
  expect_error(name.columns(1), info = "name.columns should throw error")
  A <- matrix(0, nrow=1,ncol=1)
  expect_equal(colnames(name.columns(A)),"1", info = "expect colnames of matrix with 1 column to have colnames '1' ")
  A2 <- matrix(0, nrow=3, ncol=4)
  expect_equal(colnames(name.columns(A2)),as.character(1:4), info = "wrong colnames ")
})