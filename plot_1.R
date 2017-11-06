# Some variable we need over the course of the 

tmpdir  = '~/workspace/coursera/datasciencecoursera/exploratorydataanalysis/assignment_1'
setwd(dir = tmpdir)

source("common.R")

png(filename = "plot1.png")
hist(
  dataset$Global_active_power,
  col = "red",
  main="Global Active Power",
  xlab="Global Active Power (kilowatts)")
dev.off()
