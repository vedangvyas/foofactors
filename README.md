---
### foofactors package

The `foofactors` package has 3 functions and this is a demo of how the functions work.


```r
#install_github("jokagyeman/foofacotrs")
library(foofactors)
```
The first function is `fbind` which puts two factors together as one.


```r
#Here is an example,

fbind(iris$Species[c(1,51,101)], PlantGrowth$group[c(1,11,21)])
```

```
## [1] setosa     versicolor virginica  ctrl       trt1       trt2      
## Levels: ctrl setosa trt1 trt2 versicolor virginica
```

The second function is `freq_out`, which gives you a dataframe with factors and their frequency.


```r
# Here is an example

freq_out(iris$Species)
```

```
## Source: local data frame [3 x 2]
## 
##            x     n
##       (fctr) (int)
## 1     setosa    50
## 2 versicolor    50
## 3  virginica    50
```

The third function is `f_keep`, which keeps factor levels as they are in the r object.


```r
sons <- factor(c("John", "Caleb", "Joel"))
f_keep(sons)
```

```
## [1] John  Caleb Joel 
## attr(,"scores")
## Caleb  Joel  John 
##     2     3     1 
## Levels: John Caleb Joel
```
