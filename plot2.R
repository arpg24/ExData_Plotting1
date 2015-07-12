source("dataset.RData")

png("plot2.png", width=480, height=480, units = "px")
plot(dataset$Global_active_power ~ dataset$datetime, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
