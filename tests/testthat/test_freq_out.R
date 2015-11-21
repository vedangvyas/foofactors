context("Creating a table of counts for factors")

test_that("Factor with a number of levels",{
  teams <- factor(c("ManU", "ManU","Chel", "Ars", "Chel", "Ars", "ManU"))
  tbl <- freq_out(teams)
  expect_that(tbl$n[3], equals(3))
})


test_that("Factor with a number of levels",{
  alph <- factor(c(rep("h",3), rep("g", 6), rep("i", 2)))
  tb1 <- freq_out(alph)
  expect_that(tb1$n[1], equals(6))
})


test_that("Numbers being used",{
  score <- c(1,2,2,3,4)
  expect_error(freq_out(score))
})



