data <- read.csv("./subset.csv")

hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", col = "red", main = "Global Active Power")

dev.copy(png, file = "plot1.png")
dev.off()