# Some variable we need over the course of the 

tmpdir  = '~/workspace/coursera/datasciencecoursera/exploratorydataanalysis/assignment_1'
setwd(dir = tmpdir)

source("common.R")

# Plot No 2
# for next plot we need to join date and time
png(filename = "plot2.png")
# this is little bit ugly, but this way I can print day names on the plot while chart is still
# based on power(day_and_hour) argument
plot(dataset$Global_active_power~dataset$plotdate, type="l", xaxt="no", xlab="day", ylab="Global Active Power (kilowatts)")
par(new=TRUE)
plot(dataset$zeros~dataset$newdate,  yaxt='n',type="l", xlab="", col="white", ylab="")
dev.off()

