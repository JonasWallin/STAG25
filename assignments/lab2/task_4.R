context("task 4")

test_that("Marking of task 4", {
  
  deck <- create.deck()
  deck <- deck[order(deck$faces,deck$suits),]
  expect_true(exists("is.three.of.a.kind"), info = "is.three.of.a.kind() does not exist.")
  expect_error(is.three.of.a.kind(deck[1:4,]), info = "is.three.of.a.kind should throw error if five cards not inserted")
  expect_error(is.three.of.a.kind(deck[1:6,]), info = "is.three.of.a.kind should throw error if five cards not inserted")
  expect_equal(is.three.of.a.kind(deck[1:5,]),FALSE, info="the result should not be three of a kind")
  expect_equal(is.three.of.a.kind(deck[c(1:3,1+12,1+2*12),]),TRUE, info="the result should  be three of a kind")
  expect_equal(is.three.of.a.kind(deck[c(1:2,1+12,1+2*12,22),]),FALSE, info="the result should  not three of a kind")
})