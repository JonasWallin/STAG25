context("task 7")

test_that("Marking of task 7", {
  expect_true(exists("generate.dice"), info = "generate.dice() does not exist.")
  dice.rolls <- rep(0,100)
  for(i in 1:100){
    dice.rolls[i] <- generate.dice()
  }
  expect_gte(min(dice.rolls), 1)
  expect_lte(max(dice.rolls), 6)
})