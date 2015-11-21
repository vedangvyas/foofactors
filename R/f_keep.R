#' Print factor levels as they are
#'
#' @param x factor
#'
#' @return factor with factor levels in order in which levels appear in oject.
#' @export
#'
#' @examples
#'  x <- factor(c("He", "Came", "To", "Sch"))
#'  f_keep(x)
#'
f_keep <- function(x){
  assertthat::assert_that(is.factor(x))
  reorder(x, 1:length(x))
}

