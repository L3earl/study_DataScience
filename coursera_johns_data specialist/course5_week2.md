Reproducible Research
================

영어로 작성하는 이유는 성민이가 보고, 어색한 문장을 알려주면 영어공부가 될 꺼 같아서임 :)

### slide1. coding standard in R

1.  easy to convert

-   basic text format is easy to use any environment, convert any format and editor
-   ASCII encoding is standard in english culture
-   R studio saves files as text format

1.  easy to read

-   indenting is improtant to make readable code, recommend tab space is 8
-   limit code width as 80 column
-   simple function is better to read and trace bug

### slide2. markdown syntax

title
=====

putting double space at the end of line equal to new line

you can also use br/ tag to make new line<br/> *ltalic*
**Bold**

h1
==

h2
--

### h3

#### h4

##### h5

-   unordered list, list formats dose not need double space

1.  ordered list, actualy it just character
2.  but if you inpur number like this, it convert character to ordered list
3.  as you see in the code, any number autometically changes sequently

[link has 2 way](https://www.coursera.org/learn/reproducible-research/lecture/7TTqT/markdown/) If you feel 1st solution is dirty you can do \[this\]\[1\], \[\]뒤에는 double space를 써도 /n이 되지 않음
\[1\]: <https://www.coursera.org/learn/reproducible-research/lecture/7TTqT/markdown> "this"
2번째 방법은 github 형식에서는 작동하지 않는 듯 하다 [참고](https://guides.github.com/features/mastering-markdown/)

### slide3. R markdown

1.  what is Rmd?

-   markdown can convert several format, HTML is one of them
-   Rmd (R markdown) is enbeding R code and markdown

1.  work process of Rmd

-   knitr package convert R code to basic markdown
-   markdown package convert markdown to HMTL
-   use other packages can make other function like slidfy package?

### slide4. R markdown demonstration

1.  R code

``` r
# you can see the R code that I wrote, and Console outputs
library(datasets)
summary(airquality)
```

    ##      Ozone           Solar.R           Wind             Temp      
    ##  Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00  
    ##  1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00  
    ##  Median : 31.50   Median :205.0   Median : 9.700   Median :79.00  
    ##  Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88  
    ##  3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00  
    ##  Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00  
    ##  NA's   :37       NA's   :7                                       
    ##      Month            Day      
    ##  Min.   :5.000   Min.   : 1.0  
    ##  1st Qu.:6.000   1st Qu.: 8.0  
    ##  Median :7.000   Median :16.0  
    ##  Mean   :6.993   Mean   :15.8  
    ##  3rd Qu.:8.000   3rd Qu.:23.0  
    ##  Max.   :9.000   Max.   :31.0  
    ## 

you can add settings in {r}

![](course5_week2_files/figure-markdown_github/pressure-1.png)

주의할 점 3가지
github document 형식으로 테스트 해 본 결과, Rmd 코드에서 knit을 실행시켜 나온 md 파일을 써야 R code의 결과물이 정확하게 나옴
knit을 실행시켜 나온 다른 파일들을 같이 올려야 console 결과가 작동함
전체 R코드 중에 에러가 나는게 있으면, 모든 R 코드의 결과가 안 나옴
</P>
