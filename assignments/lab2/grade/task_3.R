context("task 3")

test_that("Marking of task 3", {
  expect_true(exists("create.deck"), info = "create.deck() does not exist.")
  expect_is(create.deck(), "data.frame", info = "create.deck is not return a data.frame")
  deck <- create.deck()
  expect_equal(colnames(create.deck()),c("suits","faces"), info = "deck does not cotain suits and faces")
  suits = c("heart","spade","diamond","club")
  faces = c("ace","king","queen","jack","ten","nine","eight",
                "seven","six","five","four","three","two")
  expect_equal(suits%in%deck$suits,rep(TRUE,4), info="deck is missings suits")
  expect_equal(faces%in%deck$faces,rep(TRUE,13), info="deck is missings faces")
  n <- nrow(deck)
})