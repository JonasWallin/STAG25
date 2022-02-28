### Assignment : task2 ###
library(testthat)
context("task 2")


test_that("Marking of task 2", {
  number.of.samples = 10000
  alpha = 1
  for(j in 1:10){
    alpha <-runif(1)
    EX    = alpha
    VX    = alpha
    quantiles <- qgamma(0.75, alpha)
    
    x <- rep(0, number.of.samples)
    for(i in 1:number.of.samples){
      x[i] <- sample.gamma(alpha)
    }
    expect_equal(EX, mean(x), tolerance=1e-1)
    expect_equal(sqrt(VX), sqrt(var(x)), tolerance=1e-1)
    q_est <- as.vector(quantile(x, prob=0.75))[1]
    expect_equal(q_est, quantiles, tolerance=0.1,
                 info = cat('quantile expected =',round(quantiles,2), ' quantile got = ',q_est))
  }
  
  
})