

data <- read.csv("./subset.csv")

data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2),  mar = c(4, 4, 1, 1), oma = c(0, 0, 0, 0))

with(data, {
  plot(DateTime, Global_active_power, type="l",
       ylab = "Global Active Power",
       xlab = "",
       main = "")
  plot(DateTime, Voltage, type="l",
       ylab = "Voltage",
       xlab = "datetime",
       main = "")
  
  plot(DateTime, Sub_metering_1, type="n",
       ylab = "Energy Sub Metering",
       xlab = "",
       main = "")
  lines(DateTime, Sub_metering_1, type="l", col = "black")
  lines(DateTime, Sub_metering_2, type="l", col = "red")
  lines(DateTime, Sub_metering_3, type="l", col = "blue")
  legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

  plot(DateTime, Global_reactive_power, type="l",
       ylab = "Global Reactive Power",
       xlab = "datetime",
       main = "")
})

dev.copy(png, file = "plot4.png")
dev.off()