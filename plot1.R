print("Generating Plot 1")
## Create plot
hist(smalldata$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (KiloWatts)")
## Save file
print("Saving plot1.png file")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()