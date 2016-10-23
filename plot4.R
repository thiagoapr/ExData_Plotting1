## Plot4

## Reading the data

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

## Variables

DateTime <- strptime(paste(data$Date,data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GlobalActivePower <- as.numeric(data$Global_active_power)
GlobalReactivePower <- as.numeric(data$Global_reactive_power)
Voltage <- as.numeric(data$Voltage)
Sub_metering_1 <- as.numeric(data$Sub_metering_1)
Sub_metering_2 <- as.numeric(data$Sub_metering_2)
Sub_metering_3 <- as.numeric(data$Sub_metering_3)

## Plot

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(DateTime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power")

plot(DateTime, Voltage, type="l", xlab="", ylab="Voltage")

plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(DateTime, Sub_metering_2, type="l", col="red")
lines(DateTime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, 
       col=c("black", "red", "blue"), bty= "n")

plot(DateTime, GlobalReactivePower, type="l", xlab="", ylab="Global Reactive Power")

dev.off()






