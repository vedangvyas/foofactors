# README
Jonathan Agyeman  

Practice pacakge for STAT 545


```r
#' Bind two factors together
#'
#' @param a factor
#' @param b factor
#'
#' @return factor
#' @export
#' @examples
#' fbind(iris$Species[c(1,51,101)], PlantGrowth$group[c(1,11,21)])
fbind <- function(a,b){
  factor(c(as.character(a), as.character(b)))
}
```
