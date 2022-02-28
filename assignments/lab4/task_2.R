### Assignment : task1 ###
library(triangle)
context("task 2")


test_that("Marking of task 2", {
  expect_true(exists("ptriangle"), info = "ptriangle() does not exist.")
  for(i in 1:10){
    a <- rnorm(1)
    b <- a + abs(rnorm(1))
    c <- a + (b-a)*runif(1)
    x <- a + (b-a)*runif(1)
    expect_equal(ptriangle(x,a,b,c), triangle::ptriangle(x,a,b,c),info=paste(" Wrong value in ptrinagle for q,a,b,c = (",
                                                                             round(x,2),",",
                                                                             round(a,2),",",
                                                                             round(b,2),",",
                                                                             round(c,2),",",sep=""), tolerance=1e-4)
    expect_equal(ptriangle(x,a,b,c,log.p = T), log(triangle::ptriangle(x,a,b,c)),info=paste(" Wrong value in ptrinagle(,log.p=T) for q,a,b,c = (",
                                                                                          round(x,2),",",
                                                                                          round(a,2),",",
                                                                                          round(b,2),",",
                                                                                          round(c,2),",",sep=""), tolerance=1e-4)
    expect_equal(ptriangle(x,a,b,c,lower.tail = F,log.p = T), log(1-triangle::ptriangle(x,a,b,c)),info=paste(" Wrong value in ptrinagle(,log.p=T, lower.tail=F) for q,a,b,c = (",
                                                                                            round(x,2),",",
                                                                                            round(a,2),",",
                                                                                            round(b,2),",",
                                                                                            round(c,2),",",sep=""), tolerance=1e-4)
    expect_equal(ptriangle(x,a,b,c,lower.tail = F), 1-triangle::ptriangle(x,a,b,c),info=paste(" Wrong value in ptrinagle(,lower.tail=F) for q,a,b,c = (",
                                                                                                             round(x,2),",",
                                                                                                             round(a,2),",",
                                                                                                             round(b,2),",",
                                                                                                             round(c,2),",",sep=""), tolerance=1e-4)
    expect_equal(ptriangle(c,a,b,c), triangle::ptriangle(c,a,b,c),info=paste(" Wrong value in ptrinagle for q,a,b,c = (",
                                                                             round(c,2),",",
                                                                             round(a,2),",",
                                                                             round(b,2),",",
                                                                             round(c,2),",",sep=""), tolerance=1e-4)

  }

})
