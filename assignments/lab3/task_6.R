context("task 6")

test_that("Marking of task 6", {
  
  expect_true(exists("build.M.matrix"), info = "build.M.matrix() does not exist.")
  n <- 1
  m <- 1
  expect_equal(build.M.matrix(n,m), matrix(1,1,1), info='Something wrong in the function')
  
  n <- 2
  m <- 2
  Mref <- matrix(0,2,2)
  Mref[1,1] <- 1
  Mref[2,1] <- 2*1
  Mref[1,2] <- 1*2
  Mref[2,2] <- 2*2
  expect_equal(build.M.matrix(n,m), Mref, info='Something wrong in the function')
  
  
  n <- 10
  m <- 11
  Mref <- matrix(0, nrow=n, ncol=m)
  for(i in 1:n){
    for(j in 1:m)
      Mref[i,j] <- i* j
    
  }
  expect_equal(build.M.matrix(n,m), Mref, info='Something wrong in the function')
})