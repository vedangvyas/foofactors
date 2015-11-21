context("Counting the number of characters in level names")

test_that("Number of characters for each level",{
  Subjects <- factor(c("Mathematics", "Statistics", "English", "French"))
  tb2 <- f_nchar(Subjects)
  expect_that(tb2$num.char[1], equals(11))
})

test_that("Number of characters for each level",{
  Subjects <- factor(c("Mathematics", "Statistics", "English", "French"))
  tb <- f_nchar(Subjects)
  expect_identical(tb$num.char[2], nchar("Statistics"))
})


test_that("Non factors",{
  Drink<- c(2, 3,4)
  expect_error(f_nchar(Drink))
})



