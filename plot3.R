# plot 3

png("plot3.png")

with(data2, {plot(datetime, Sub_metering_1, type = "l", xlab = "",
                 ylab = "Energy sub metering")
            lines(datetime, Sub_metering_2, col = "red")
            lines(datetime, Sub_metering_3, col = "blue")
            legend("topright", lty = c(1, 1), col = c("black", "red", "blue"), 
                   legend = names(data2[6:8]),
                   cex = 0.75)
}
)

dev.off()