library(triangle)
context("task 4")

test_that("Marking of task 4", {
  
  expect_true(exists("prob.in.interval"), info = "prob.in.interval() does not exist.")
  for(i in 1:10){
    a <- rnorm(1)
    b <- a + abs(rnorm(1))
    c <- a + (b-a)*runif(1)
    x <- a + (b-a)*runif(1)
    interval <- a + (b-a)*runif(1)
    interval <- c(interval, interval + (b-interval)*runif(1))
    Truth <- triangle::ptriangle(interval[2],a,b,c) - triangle::ptriangle(interval[1],a,b,c) 
    expect_equal(prob.in.interval(interval[1],interval[2],a,b,c),Truth,info=paste(" Wrong value in prob.in.interval for lower,upper,a,b,c = (",
                                                                             round(interval[1],2),",",
                                                                             round(interval[2],2),",",
                                                                             round(a,2),",",
                                                                             round(b,2),",",
                                                                             round(c,2),",",sep=""))
  }
})