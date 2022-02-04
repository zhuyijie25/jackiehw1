## load the 2006 GSS ##
library(ggplot2)
library(doBy)
library(plyr)
library(gmodels)



gss = read.csv(file.choose())

install.packages("sqldf")
library(sqldf)

## GO VISIT sqlzoo to learn how to do queries: https://sqlzoo.net/wiki/SQL_Tutorial ##

## only use a handful of these variables because other sqldf gets overworked ##

z <- gss[ , c( "age","id", "region", "sibs", "childs", "marital", "wordsum", "educ", "realinc")]


## Questions ... ##


## 1. Find the age of person who has ID 1 in the dataframe (and show their ID too).  Provide the code to generate the results seen below. ##
## I did the first one for you... ##

sqldf("SELECT age, id FROM z 
WHERE id =1")

## Results from this first query:
##  age id
##1  50  1

## 2. Find the age of all the people with IDs between 1 and 50 (and show their IDs too).  Provide the code to generate the results seen below. ##

## Results from this query:
##    age id
## 1   50  1
## 2   27  2
## 3   67  3
## 4   50  4
## [omitted]
## 48  40 48
## 49  20 49
## 50  58 50


## 3. Find out how many respondents were interviewed in each region and call that new variable "size."  Provide the code to generate the results seen below. ##

## Results from this query:
##   region size
## 1      1  163
## 2      2  548
## 3      3  762
## 4      4  276
## 5      5 1011
## 6      6  255
## 7      7  479
## 8      8  364
## 9      9  652

## 4. Find out the average age of respondents  in each region and call that new variable "average_age." Provide the code to generate the results seen below. ##

## Results from this query:
##   region average_age
## 1      1    49.73006
## 2      2    49.45956
## 3      3    46.55191
## 4      4    49.25362
## 5      5    46.74802
## 6      6    46.53937
## 7      7    45.76101
## 8      8    46.53571
## 9      9    46.53953

## 5. Find me the IDs of all the people in the dataset that are older than 80 years old and have exactly 20 years of education.  Provide the code to generate the results seen below. ## 

## Results from this query:
##     id
## 1  205
## 2 2015

## 6. Tell me the total number of people in the dataset (hint: us id).  Provide the code to generate the results seen below. ##

## Results from this query:
##   COUNT(id)
## 1      4510

## 7. Tell me how many average children people have, but only for those who are married (marital = 1).  Provide the code to generate the results seen below. ## 

## Results from this query:
##   marital ave_childs
## 1       1   2.239502
