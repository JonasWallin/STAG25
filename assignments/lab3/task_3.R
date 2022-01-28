context("task 3")

test_that("Marking of task 3", {
  for(i in 1:100){
    x <- rnorm(10)
    expect_equal(cum.sum(x),cumsum(x), info="cum.sum should return the same as cumsum for any x")
  }
 
})