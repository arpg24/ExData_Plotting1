###Plot3
source("dataset.RData")
png("plot3.png", width=480, height=480, units = "px")
plot(dataset$datetime, dataset$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(dataset$datetime, dataset$Sub_metering_2, col="red")
lines(dataset$datetime, dataset$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1))

dev.off()
