library(testthat)
context("task 6")

test_that("task 6", {
  
  data <- read.csv('https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab6/county.csv')
  
  
  data$pop.diff <- (data$pop2017  - data$pop2010)/data$pop2010
  formula.obj <- pop.diff ~ poverty + unemployment_rate
  expect_true(exists("RSS"), " RSS is missing")
  
  lm.obj_test <- lm(formula.obj, data = data)
  data.new <- data.frame(poverty = c(10,30), unemployment_rate = c(0.1, 30) )
  y.predict.new_test <- predict(lm.obj_test, newdata = data.new)
  
  y.obs <- data.frame(pop.diff = c(2, -10))
  RSS_test <- sum((y.obs - y.predict.new_test)^2)
  expect_equal(RSS, RSS_test,label=" RSS is nos not correct")
})
