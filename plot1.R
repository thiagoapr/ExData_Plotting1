## Plot1

## Reading the data

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

## Variables

data$Global_active_power <- as.numeric(data$Global_active_power)

## Histogram of Global Active Power

png("plot1.png", width=480, height=480)
hist (data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()