### Assignment structure ###

context("Mandatory tests")

test_that("Mandatory tests", {
  expect_true(exists("my_name"), "Variable my_name is missing")
  expect_gt(nchar(my_name), 1)
  expect_true(exists("my_mail"), "Variable my_mail is missing")
  expect_gt(nchar(my_mail), 1)
})