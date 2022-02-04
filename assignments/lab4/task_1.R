### Assignment : task1 ###
library(triangle)
context("task 1")

test_that("Marking of task 1", {
  expect_true(exists("dtriangle"), info = "dtriangle() does not exist.")
  for(i in 1:10){
    a <- rnorm(1)
    b <- a + abs(rnorm(1))
    c <- a + (b-a)*runif(1)
    x <- a + (b-a)*runif(1)
    expect_equal(dtriangle(x,a,b,c), triangle::dtriangle(x,a,b,c),info=paste(" Wrong value in dtrinagle for x,a,b,c = (",
                                                                             round(x,2),",",
                                                                             round(a,2),",",
                                                                             round(b,2),",",
                                                                             round(c,2),",",sep=""))
    expect_equal(dtriangle(x,a,b,c,log = T), log(triangle::dtriangle(x,a,b,c)),info=paste(" Wrong value in dtrinagle(,log=T) for x,a,b,c = (",
                                                                             round(x,2),",",
                                                                             round(a,2),",",
                                                                             round(b,2),",",
                                                                             round(c,2),",",sep=""))
    expect_equal(dtriangle(c,a,b,c), triangle::dtriangle(c,a,b,c),info=paste(" Wrong value in dtrinagle for x,a,b,c = (",
                                                                             round(c,2),",",
                                                                             round(a,2),",",
                                                                             round(b,2),",",
                                                                             round(c,2),",",sep=""))
    
  }
  
})