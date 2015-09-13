df <- read.table('./household_power_consumption.txt', sep = ';', header = 1)

only_dates <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]
write.csv(only_dates, file = "subset.csv")
