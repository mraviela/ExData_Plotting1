print("Generating Plot 2")
## Create plot
plot(smalldata$DateTime, smalldata$Global_active_power, type="l", ylab="Global Active Power (KiloWatts)", xlab="")
## Save file
print("Saving plot2.png file")
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()