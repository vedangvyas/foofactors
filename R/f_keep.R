#' Print factor levels as they are
#'
#' @param x factor
#'
#' @return factor
#' @export
#'
#' @examples
#'  x <- factor(c("He", "Came", "To", "Sch"))
#'  f_keep(x)
#'
f_keep <- function(x){
  reorder(x, 1:length(x))
}

