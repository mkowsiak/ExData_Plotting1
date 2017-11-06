# Some variable we need over the course of the 

tmpdir  = '~/workspace/coursera/datasciencecoursera/exploratorydataanalysis/assignment_1'
setwd(dir = tmpdir)

source("common.R")

# Plot No 3
png(filename = "plot3.png")
plot(dataset$plotdate,dataset$Sub_metering_1, type="l", xaxt="no", xlab="", ylab="Energy sub metering")
lines(dataset$plotdate,dataset$Sub_metering_2, col='red')
lines(dataset$plotdate,dataset$Sub_metering_3, col='blue')
par(new=TRUE)
plot(dataset$zeros~dataset$newdate, yaxt='n',type="l", xlab="", col="white", ylab="")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=c("solid","solid","solid"))
dev.off()

