context("Binding factors")

test_that("fbind binds factors", {
  a <- iris$Species[c(1,51,101)]
  b <- PlantGrowth$group[c(1,11,21)]
  res <- fbind(a,b)
  expect_identical(res,
                   factor(c(levels(iris$Species), levels(PlantGrowth$group))))
})


test_that("fbind binds factor (or character)", {
  x <- c('a', 'b')
  x_fact <- factor(x)
  y <- c('c', 'd')
  z <- factor(c('a', 'b', 'c', 'd'))

  expect_identical(fbind(x, y), z)
  expect_identical(fbind(x_fact, y), z)
})




