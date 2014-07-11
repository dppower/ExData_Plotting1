# Downloading, loading and cleaning up the data

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(url, "HCP.zip", mode = "wb")

unzip("./HCP.zip")

# Check format of data:
# readLines("./household_power_consumption.txt", n = 20)

data <- read.table("./household_power_consumption.txt", sep = ";", colClasses = c("character"), header = T)

data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007" | (data$Date == "3/2/2007" & data$Time == "00:00:00"),]

row.names(data1) <- NULL

# Create a new column that combines date and time
datetime <- paste(data1$Date, data1$Time)
# Change the format of Date column to a Date class object
datetime <- as.POSIXlt(datetime, "%d/%m/%Y %H:%M:%S", tz = "CET")

# Combine the new datetime with the rest of the columns

data2 <- cbind(datetime, data1[3:9])

# Check if there is any "?" missing values
# table(data2[2:8] == "?")

data2[2:8] <- apply(data2[2:8], 2, as.numeric)