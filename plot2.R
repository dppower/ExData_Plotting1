# Plot2

png(file = "plot2.png")

with(data2, plot(datetime, Global_active_power, type = "l", 
                 xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()