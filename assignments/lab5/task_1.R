### Assignment : task1 ###
library(testthat)
context("task 1")
test_that("Marking of task 1", {
    f <- function(x){(x-2)^2 + x^4}
    df <- function(x){2*(x-2) + 4*x^3}
    ddf <- function(x){ 2 + 12 * x^2}
    x0     <- 0
    x.sol <- 0.835
    xs <- newton(x0, df, ddf)
    expect_equal(x.sol, xs, tolerance=1e-3)
})