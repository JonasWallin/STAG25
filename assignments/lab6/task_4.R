library(testthat)
context("task 4")

test_that("task 4", {
  
  data <- read.csv('https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab6/county.csv')
  
  
  data$pop.diff <- (data$pop2017  - data$pop2010)/data$pop2010
  formula.obj <- pop.diff ~ poverty + unemployment_rate
  expect_true(exists("lm.obj"), "lm.obj data is missing")
  
  lm.obj_test <- lm(formula.obj, data = data)
  expect_equal(lm.obj_test, lm.obj,label="lm.obj is nos not correct")
})
