# Replicate integer 1, 100 times
rep(1, 100)

# Assign return value of seq() to my_object, can view in the Environment pane (top-right)
my_object <- seq(from = 0, to = 50, by = 2)

# View my_object in the Console pane (bottom-left)
my_object

# Display visualization of my_object in Plots pane (bottom-right)
plot(my_object)

# Get and set the working directory
getwd()
setwd("/Users/derek/Desktop/MITx\ MicroMasters/Data\ Analysis\ for\ Social\ Scientists\ (14.310x)/Week_1")

# Install the readxl package so that its contents can be used elsewhere
install.packages("readxl")
library(readxl)

# Assign return values of calls to various R functions from the readxl package
my_EXCELdata <- read_excel("my_exceldata.xlsx")
my_CSVdata <- read.csv("my_csvdata.csv")

# View documentation for 
?sample
