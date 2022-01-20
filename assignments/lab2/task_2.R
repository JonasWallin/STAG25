### Assignment : task1 ###

context("task 2")


test_that("Marking of task 2", {
  expect_true(exists("name.rows"), info = "name.rows() does not exist.")
  expect_error(name.rows(1), info = "name.rows should throw error")
  A <- matrix(0, nrow=1,ncol=1)
  expect_equal(rownames(name.rows(A)),"1", info = "expect rownames of matrix with 1 column tbe '1' ")
  A2 <- matrix(0, nrow=3, ncol=4)
  expect_equal(rownames(name.rows(A2)),as.character(1:3), info = "wrong rownames ")
})