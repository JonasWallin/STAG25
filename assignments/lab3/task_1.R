### Assignment : task1 ###

context("task 1")

test_that("Marking of task 1", {
  expect_true(exists("print.x"), info = "print.x() does not exist.")
  x <- c(1,2,3,4,5)
  output.one <- "[1] \"x[1] = 1\"\n[1] \"x[2] = 2\"\n[1] \"x[3] = 3\"\n[1] \"x[4] = 4\"\n[1] \"x[5] = 5\""
  output.two <- "x[1] = 1\nx[2] = 2\nx[3] = 3\nx[4] = 4\nx[5] = 5"
  expect_equal(TRUE, eval_printx$output%in%c(output.one,output.two),info=paste("not equal to either:\n",output.one,"\nor:\n",output.two ,sep=""))

  #"[1] \"x[1] = 1\"\n[1] \"x[2] = 2\"\n[1] \"x[3] = 3\"\n[1] \"x[4] = 4\"\n[1] \"x[5] = 5\""
  x <- c(0.1,0.823,0.85,10)
  eval_printx <- evaluate_promise(print.x(x))
  output.one <- "[1] \"x[1] = 0.1\"\n[1] \"x[2] = 0.82\"\n[1] \"x[3] = 0.85\"\n[1] \"x[4] = 10\""
  output.two <- "x[1] = 0.1\nx[2] = 0.82\nx[3] = 0.85\nx[4] = 10"
  expect_equal(TRUE, eval_printx$output%in%c(output.one,output.two),info=paste("not equal to either:\n",output.one,"\nor:\n",output.two ,sep=""))
})