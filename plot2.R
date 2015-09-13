data <- read.csv("./subset.csv")

data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

with(data, {
  plot(DateTime, Global_active_power, type="n",
                ylab = "Global Active Power (kilowatts)",
                xlab = "")
  lines(DateTime, Global_active_power, type="l")
})

dev.copy(png, file = "plot2.png")
dev.off()