rm(list=ls()) 

install.packages("Hmisc")

library(Hmisc)


data <- read.csv("~/Downloads/COVID19_line_list_data.csv")

describe(data)

# cleaned the data regarding deaths -> found from describe function
data$death_dummy <- as.integer(data$death != 0)

# calculating death rate
sum(data$death_dummy) / nrow(data) 

# AGE
## Media proposed that the people who dies from COVID were older than the median average age
## Proving Media Claim

dead = subset(data, death_dummy == 1)
alive = subset(data, death_dummy == 0)

mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)

## we find that the difference between dead and alive is around 20 
## is this significant though?

t.test(alive$age, dead$age, alternative = "two.sided", conf.level = 0.99)

## it is from our result, we see that the difference in age 
## between people who are dying is from -25 to -15 years around

## the p value of 2.2e-16 ~ 0 means it is lesser than 0.05 and so we reject null hypothesis
## thus the claim of old people dying more than young people is true and proven

## This is indeed statistically significant


