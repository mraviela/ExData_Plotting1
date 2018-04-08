print("Generating Plot 3")
## Generating Plot 
with(smalldata, {
  plot(DateTime, Sub_metering_1,  type = "l", 
       ylab = "Energy sub metering", xlab = "")
  lines(DateTime, Sub_metering_2,  col = 'Red')
  lines(DateTime, Sub_metering_3,  col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Saving to file
print("Saving plot3.png file")
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()