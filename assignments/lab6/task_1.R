
library(testthat)
context("task 1")

test_that("task 1", {
    expect_true(exists("data"), "Variable data is missing")
    data_test <- read.csv('https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab6/county.csv')

    #' Create the column pop.diff that is the difference between
    #' population 2017 and population 2010. Then divided by the population 2010.
    #data$pop.diff <-
    data_test$pop.diff <- (data_test$pop2017  - data_test$pop2010)/data_test$pop2010
    expect_equal(data, data_test,label="data is nos not correct")
})
