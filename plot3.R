data <- read.csv("./subset.csv")

data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

with(data, {
  plot(DateTime, Sub_metering_1, type="n",
       ylab = "Energy Sub Metering",
       xlab = "",
       main = "")
  lines(DateTime, Sub_metering_1, type="l", col = "black")
  lines(DateTime, Sub_metering_2, type="l", col = "red")
  lines(DateTime, Sub_metering_3, type="l", col = "blue")
  legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

dev.copy(png, file = "plot3.png")
dev.off()