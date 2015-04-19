# This is a script to explore the gapminder dataset in R
# Thomas Scialo tj.scialo@gmail.com
# April 19, 2015

#Install dplyr packages and dependencies
#install.packages("dplyr", dependencies = TRUE)

#Load Dplyr library into working environment
library("dplyr")


# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv",
                     sep = "\t", 
                     header= TRUE)

gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

gap.in %>%
  filter(country == "China") %>%
  select(country, year, pop)

#calculate the mean population per continent per year for all years prior to 1990
#and displays in console with no display limit
gap.in %>%
  filter(year < 1991) %>%
  group_by(continent,year) %>%
  summarize(mean(pop)) %>%
  as.data.frame()

#calculate the mean population per continent per year for all years prior to 1990
#and exports to a file
gap.in %>%
  filter(year < 1991) %>%
  group_by(continent,year) %>%
  summarize(mean(pop)) -> data.out

#samples the exported data
data.out[2:3,]

data(iris)
attach(iris)
iris

#install tidyr package
#install.packages("tidyr", dependencies = TRUE)

#load tidyr package
library("tidyr")

#Turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)

