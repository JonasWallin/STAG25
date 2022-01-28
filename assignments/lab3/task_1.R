### Assignment : task1 ###

context("task 1")

test_that("Marking of task 1", {
  expect_true(exists("print.x"), info = "print.x() does not exist.")
  x <- c(1,2,3,4,5)
  eval_printx <- evaluate_promise(print.x(x))
  expect_equal(eval_printx$output,"x[1] = 1\nx[2] = 2\nx[3] = 3\nx[4] = 4\nx[5] = 5")
  x <- c(0.1,0.823,0.85,10)
  eval_printx <- evaluate_promise(print.x(x))
  expect_equal(eval_printx$output,"x[1] = 0.1\nx[2] = 0.82\nx[3] = 0.85\nx[4] = 10")
})