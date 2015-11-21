context("Printing levels as they appear")

test_that("Levels are in order ",{
  teams <- factor(c("ManU", "Chel", "Ars"))
  expect_identical(levels(f_keep(teams)), c("ManU", "Chel", "Ars"))
})


test_that("Levels are in order ",{
x <- factor(c("He", "Came", "To", "Sch"))
expect_identical(levels(f_keep(x)), c("He", "Came", "To", "Sch"))
})

test_that("Does it work for character object ",{
  x <- list("He", "Came", "To", "Sch")
  expect_error(f_keep(x))
})
