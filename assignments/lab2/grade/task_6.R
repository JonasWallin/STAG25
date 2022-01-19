context("task 6")

test_that("Marking of task 6", {
  dir.path <- "https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab2/"
  expect_true(exists("read.data.1"), info = "read.data.1() does not exist.")
  file.path <- "https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab2/lab2_1.csv"
  data <- read.csv(file.path)
  expect_equal(colnames(read.data.1(dir.path)),
               c("aged","female","cond","aged365"),
               info = "read.data.1 gives wrong colnames does not exist.")
  data <- read.data.1(dir.path)
  expect_equal(is.factor(data$female),
               TRUE,
               info = "female should be factor")
  expect_equal(is.factor(data$cond),
               TRUE,
               info = "cond should be factor")
})