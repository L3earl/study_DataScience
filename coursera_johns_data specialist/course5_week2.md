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

[link has 2 way](https://www.coursera.org/learn/reproducible-research/lecture/7TTqT/markdown/) If you feel 1st solution is dirty you can do [this](https://www.coursera.org/learn/reproducible-research/lecture/7TTqT/markdown "this")

#### the weired thing

> 1st. some functions does not work in github document such as new line(doble space), link.<br/> If this happens, put one empty line after new line<br/> 2nd. every list format number is changes ordered list, so it is hard to start more than 1

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

[want more information?](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf "cheat sheet")

#### for reading oter platform like web, github

-   need to convert .Rmd to .md in the Rstudio using knit function
-   need to upload every output such as graph, img
-   If some of R code make error than all R code do not make result

### slide5. literate statistical programming with knitr

1.  what is literate statistical programming?

-   [literate programming](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf "cheat sheet") is a method to make code readable to both human and machine when programming
-   make one code file mixed with documentation and programming language
-   knitr support a variety of documentation languages [2](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf "cheat sheet"): <https://ko.wikipedia.org/wiki/%EB%AC%B8%ED%95%99%EC%A0%81_%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D> "한국어 설명"

1.  how to make work reproducible?

-   do literate programming at the begining of the project
-   keep track data manupulation so you can know how you got there
-   do not save output such as temp data. raw data + preprocessing code is better than clean data set
-   save data in non-proprietary formats

1.  pros

-   explanation and coding in the same time force you more logicaly
-   data is automaticaly updated reflect external changes

1.  cons

-   the more complex analysis the more difficult to edit document
-   slow down analysis process

### slide6. what is knitr?

1.  introduce

-   knitr support general languages such as Latex, markdown, HTML?
-   (ommited)

1.  what is markdown?

-   simple version of markup language
-   every information is \[here\]\[3\] \[3\]:<http://daringfireball.net/projects/markdown/basics> "markdown basic by john gruber"

1.  pros

-   live document[1] is easy to make regular document like report
-   good for short/medium length anaysis
-   good for data preprocessing because all step would be saved?

1.  cons

-   long process
-   complex or time consuming computations
-   when need precise format

### slide7. My first knitr documents

(ommited)

### slide8. processing of knitr documents

1.  diverse method to use r code chunk

-   give name {r nameHere}
-   hide code {r, echo = FALSE}
-   hide console result {r, results = "hide"}
-   inline text computation {r} x &lt;- 3 , use objects in the text like this \`r x?
-   adjust figure hight {r, fig.hight = 4}
-   can make table with xtable package
-   set global option {r} opts\_chunk$set(echo = F, result = "hide")

1.  cashing code chnuk result

-   cashing option(cache = TRUE)
-   store output on the disk, so same process be faster when re-run the code
-   it does not check data or external changes, so you need to re-run the cashing code
-   be careful to use cashe. it is useful but dangerous

[1] calculate data, code when it executed (why this is not work?)
