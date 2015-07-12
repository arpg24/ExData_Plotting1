##Download and unzip the file
if(!file.exists("./data")){dir.create("./data")}
file<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(file,destfile="./data/Data.zip",method="auto")

unzip(zipfile="./data/Data.zip",exdir="./data")

rm(file)

##New path
path <- file.path("./data")

##Reading data and modifying attributes
data <- read.table(file.path(path,"household_power_consumption.txt"), sep=";", header=T, na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char="", quote='\"')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

save(data,file="./data/data.RData")

dataset <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
dataset$datetime <- as.POSIXct(paste(as.Date(dataset$Date), dataset$Time))

save(dataset,file="./data/dataset.RData")