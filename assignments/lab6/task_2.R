library(testthat)
context("task 2")

test_that("task 2", {
    expect_true(exists("formula.obj"), "formula.obj data is missing")
    formula.obj_test <- pop.diff ~ poverty + unemployment_rate
    #formula.obj_test2 <- pop.diff ~ unemployment_rate + poverty
    expect_equal(formula.obj, formula.obj_test, label="formula is nos not correct")
})
