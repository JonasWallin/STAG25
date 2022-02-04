context("task 3")

test_that("Marking of task 3", {

  
  n <- 10000
  for(i in 1:10){
    a <- rnorm(1)
    b <- a+ 4*rexp(1)
    c <- a + runif(1)*(b-a)
    X <- rtriangle(n, a,b,c)
    EX <- (a+b+c)/3
    expect_equal(mean(X), EX, tolerance = 1e-1*(abs(EX)+5), info=paste("The average value should be approximatly equal to expected value,
                                                             for rtriangle with a,b,c = (",
                                                                                          round(a,2),",",
                                                                                          round(b,2),",",
                                                                                          round(c,2),",",sep=""))
  }
})

