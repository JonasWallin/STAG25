library(testthat)
context("task 5")

test_that("task 5", {
  data <- read.csv('https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab6/county.csv')
  
  data$pop.diff <- (data$pop2017  - data$pop2010)/data$pop2010
  formula.obj <- pop.diff ~ poverty + unemployment_rate
  expect_true(exists("y.predict.new"), " y.predict.new is missing")
  
  lm.obj_test <- lm(formula.obj, data = data)
  data.new <- data.frame(poverty = c(10,30), unemployment_rate = c(0.1, 30) )
  #y.predict.new <-
  y.predict.new_test <- predict(lm.obj_test, newdata = data.new)
  expect_equal(y.predict.new_test, y.predict.new,label=" y.predict.new is nos not correct")
})
