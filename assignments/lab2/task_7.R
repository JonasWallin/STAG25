context("task 7")

test_that("Marking of task 7", {
  dir.path <- "https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab2/"
  expect_true(exists("read.data.2"), info = "read.data.2() does not exist.")
  file.path <- "https://raw.githubusercontent.com/JonasWallin/STAG25/main/assignments/lab2/lab2_2.csv"
  data <- read.csv(file.path)
  expect_equal(colnames(read.data.2(dir.path)),
               c("aged","female","cond","aged365"),
               info = "read.data.2 gives wrong colnames does not exist.")
  data <- read.data.2(dir.path)
  expect_equal(is.factor(data$female),
               TRUE,
               info = "female should be factor")
  expect_equal(is.factor(data$cond),
               TRUE,
               info = "cond should be factor")
  expect_equal(data$aged365[38],21.31644,info ="decimal test",tolerance = 1e-6)
})