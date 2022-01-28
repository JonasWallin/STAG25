context("task 5")

test_that("Marking of task 5", {
  
  expect_true(exists("sample.n.normal.above.two"), info = "sample.n.normal.above.two() does not exist.")
  x.samples <- sample.n.normal.above.two(10^4)
  expect_gt(min(x.samples), 2, label="the value of x must be greater than 2")
  Z <- 1 - pnorm(2)
  mu = dnorm(2)/Z
  sigma2 = (1 + 2*dnorm(2)/Z - (dnorm(2)/Z)^2)
  expect_equal(round(mean(x.samples),1),round(mu,1), info="average value should be approx 2.3")
  expect_equal(round(var(x.samples),1),round(sigma2,1), info="var should be approx 0.1")
})