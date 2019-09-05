# General setup
getwd()
setwd("/Users/derek/Desktop/MITx_MicroMasters/Data_Analysis/Week_1")
# install.packages("tidyverse")
library(tidyverse)

# Read the csv file into an R object
# ?as_tibble
# ?read_csv
papers <- as_tibble(read_csv("CitesforSara.csv"))

# Create a new object that is a subset of the papers object
# ?select
papers_select <- select(papers, journal, year, cites, title, au1)

# How many records exist where there are greater than or equal to 100 citations?
# ?filter
filter(papers_select, cites >= 100)

# How many total citations exist for the journal “Econometrica”?
# ?group_by
# ?summarize
# ?sum
grouped <- group_by(papers_select, journal)
ungroup(grouped, cites)
summarize(grouped, sum(cites))

# How many distinct primary authors (au1) exist in this dataset?
# ?tally
# ?unique
grouped2 <- group_by(papers_select, au1)
tally(unique(grouped2))

# Create a new dataset called papers_female which contains only the columns from papers containing the string “female”.
# ?contains
papers_female <- select(papers, contains("female"))
