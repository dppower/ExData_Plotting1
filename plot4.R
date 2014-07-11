# Plot 4
png("plot4.png")

par(mfcol = c(2, 2))

# Repeat plot 2
with(data2, plot(datetime, Global_active_power, type = "l", 
                 xlab = "", ylab = "Global Active Power"))

# Repeat plot 3
with(data2, {plot(datetime, Sub_metering_1, type = "l", xlab = "",
                  ylab = "Energy sub metering")
             lines(datetime, Sub_metering_2, col = "red")
             lines(datetime, Sub_metering_3, col = "blue")
             legend("topright", lty = c(1, 1), col = c("black", "red", "blue"), 
                    legend = names(data2[6:8]), bty = "n")
}
)

# New plots

with(data2, plot(datetime, Voltage, type = "l"))

with(data2, plot(datetime, Global_reactive_power, type = "l"))

dev.off()