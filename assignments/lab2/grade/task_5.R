context("task 5")


test_that("Marking of task 5", {
  file.path <- "https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab2/lab2_1.csv"
  data <- read.csv(file.path)
  expect_true(exists("get.column"), info = "get.column() does not exist.")
  expect_equal( get.column(file.path,"potato"), -1, info = "There is no column named potato function should return -1")
  expect_equal( get.column(file.path,"aged"), data$aged, info = "aged column exists it should be returnerd")
})