### Assignment : task2 ###
library(testthat)
context("task 2")


test_that("Marking of task 2", {
  number.of.samples = 1000
  alpha = 1
  EX    = 1
    
    
    x <- rep(0, number.of.samples)
  for(i in 1:number.of.samples){
    x[i] <- sample.gamma(alpha)
  }
  expect_equal(EX, mean(x), tolerance=1e-1)
  
})