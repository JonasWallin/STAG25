### Assignment : task1 ###

context("task 2")


test_that("Marking of task 2", {
  expect_true(exists("count.until.six"), info = "count.until.six() does not exist.")
  sample.dices <- replicate(10^4,  count.until.six(), simplify=T)
  expect_equal(min(sample.dices),0, info="expect the minimum value of 10^4 runs to be 0")
  expect_gt(max(sample.dices),100, label="expect the maximum value of 10^4 runs to over 100")
  se.dices     <- sqrt(var(sample.dices))/sqrt(length(sample.dices))
  mean.dices    <- mean(sample.dices)
  expect_gt(mean.dices,11.5, label = "the mean value should be greater than 11.5(which mean -20 se)" )
  expect_lt(mean.dices,18, label = "the mean value should be less than 18(which mean +20 se)" )
  #expect average value
  #expect quantile above or below
  #expect 
})