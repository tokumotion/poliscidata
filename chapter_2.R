# install poliscidata
install.packages('poliscidata')
pacman::p_load(poliscidata, tidyverse, weights)
# use welcome() to see the package contents
welcome()

# Exploratory Descriptive Analysis ####
# 2 things we want to understand about variables in scipol data: central 
# tendency (mode, median, for categorical, such as male or female respondents, 
# or ordinal variables, such as likert scale, and mean for numeric variables, 
# such as income, age, # of children) and dispersion (a variable has no 
# dispersion if all its observations fall into the same value, the more values a 
# variables takes, the more dispersion. Max dispersion is when the all the 
# values the observation fall evenly in the possible values a variable can take,
# for example, if i have 10 obs of the variable sex and have 5 women and 5 men, 
# i have max dispersion, if i have 9 obs of the variable color, and there are 
# only 3 colors available, i have max dispersion if i have 3 obs for each color)

# library poliscidata functions ####
# we will use the gss database
data("gss")

# to explore variables, we will use the freq() function for freq distributions, 
# bar charts for nominal, ordinal or interval variables. 
# describe() will give us descriptive analysis of interval variables
# wdt.hist() from the weights package will create histograms for descriptive 
# statistics of interval variables (interval variables are likert)
# sortC() will give case specific info about specific variables

# nominal (categorical) variables are considered unordered factors
# we want to see the freq distribution of the zodiac variable
# since we are working with a sample in gss, we required a weight variable
freq(gss$zodiac, gss$wtss)
welcome()
