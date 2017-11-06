# Some variable we need over the course of the 

tmpdir  = '~/workspace/coursera/datasciencecoursera/exploratorydataanalysis/assignment_1'
dataurl = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
zipfile = 'household_power_consumption.zip'

# we will need that for getting only important data
is.installed <- function(mypkg){
  is.element(mypkg, installed.packages()[,1])
} 

# check if package "hydroGOF" is installed
if (!is.installed("sqldf")){
  install.packages("sqldf")
}

library(sqldf)
setwd(dir = tmpdir)

# First of all, we need to check whether input data already exists. If not, we can download it
# This way, we don't waste time for downloads whenever we start the script
if( ! file.exists('household_power_consumption.txt') ){
  download.file(dataurl,zipfile,method = "curl")
  unzip(zipfile, files = c('household_power_consumption.txt'))
}

# we want just data that fit our requirements
# dataset <- read.csv.sql("household_power_consumption.txt", "select * from file where Date = '1/02/2007' or Date = '2/2/2007'", sep=";")
dataset <- read.csv(file = "household_power_consumption.txt", sep=";", na.strings = "?")
dataset <- dataset [ dataset$Date %in% c('1/2/2007', '2/2/2007'), ]
# we want to have plot date from Date and Time
dataset$plotdate <- as.POSIXct(paste(dataset$Date, dataset$Time), format="%d/%m/%Y %H:%M:%S")
# date will be used to put day name on the axis
dataset$newdate <- as.Date(dataset$plotdate, format="%d/%m/%Y %H:%M:%S")
dataset$zeros <- c(0)

