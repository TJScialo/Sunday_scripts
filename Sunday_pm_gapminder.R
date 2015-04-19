# This is a script to explore the gapminder dataset in R
# Thomas Scialo tj.scialo@gmail.com
# April 19, 2015

#Install dplyr packages and dependencies
install.packages("dplyr", dependencies = TRUE)

#Load Dplyr library into working environment
library("dplyr")


# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv",
                     sep = "\t", 
                     header= TRUE)
