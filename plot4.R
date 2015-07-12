##Plot4
source("dataset.RData")
png("plot4.png", width=480, height=480, units = "px")

par(mfrow=c(2,2),  mar=c(4,4,2,1),oma=c(0,0,2,0))

plot(dataset$datetime, dataset$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

plot(dataset$datetime, dataset$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

plot(dataset$datetime, dataset$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(dataset$datetime, dataset$Sub_metering_2, col="red")
lines(dataset$datetime, dataset$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1),
       box.lwd=0)

plot(dataset$datetime, dataset$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(dataset$datetime, dataset$Global_reactive_power)

dev.off()