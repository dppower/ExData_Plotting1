# Plot 1

# Open a png file, default size is 480 by 480 pixels, not neccessary to specify

png(file = "plot1.png")

with(data2, hist(Global_active_power, col = "red",
                 main = "Global Active Power", 
                 xlab = "Global Active Power (kilowatts)"))

dev.off()