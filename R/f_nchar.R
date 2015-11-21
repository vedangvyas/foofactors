#' Number of Characters in the level name
#'
#' @param x factor
#'
#' @return data frame with levels and number of characters
#' @export
#'
#' @examples Subjects <- factor(c("Mathematics", "Statistics", "English", "French"))
#'          f_nchar(Subjects)
#'
#'
f_nchar <- function(x){
  assertthat::assert_that(is.factor(x))
  fct <- reorder(x, 1:length(x))
  num.char <- nchar(levels(fct))
  dat <- data.frame(fct,num.char)
  dat
}


