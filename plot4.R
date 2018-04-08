print("Generating Plot 3")

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
## Generating Plot 1
plot(smalldata$DateTime, smalldata$Global_active_power, type = "l", 
     ylab = "Global Active Power", xlab = "")
## Generating Plot 2
plot(smalldata$DateTime,smalldata$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
## Generating Plot 3
plot(smalldata$DateTime, smalldata$Sub_metering_1, type = "l", ylab = "Energy sub metering",
     xlab = "")
lines(smalldata$DateTime, smalldata$Sub_metering_2, col = 'Red')
lines(smalldata$DateTime, smalldata$Sub_metering_3, col = 'Blue')
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## Generating Plot 4
plot(smalldata$DateTime, smalldata$Global_reactive_power, type = "l", 
     ylab = "Global_rective_power", xlab = "datetime")

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
