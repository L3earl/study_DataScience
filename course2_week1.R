install.packages("swirl")
packageVersion('swirl')
library(swirl)

install_from_swirl("R Programming")

swirl()

?lm

#-
x <- factor(c('yes', 'yes', 'no', 'yes', 'no'))
table(x)

y <- unclass(x)
y[[1]]

xx <- list(c('a','b'), c('c','d'))
xx


sessionInfo()


t <- data.frame(a = 1, b = 'a')
dput(t)

str(t[1:1])

t[[c(1,1)]]


array , vector
factor()
data.frame()
NA, NaN, Inf
[[]]
[]
$
  source()
as.complex()
dget()
gzfile()


xx <- list(foo = 1:4)
xx$foo
xx[1]

!is.na()


good <- complete.cases(airquality)
airquality[good, ][1:6,]

