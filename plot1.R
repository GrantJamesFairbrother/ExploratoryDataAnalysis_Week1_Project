source("household.R")

png(file = "plot1.png")

household_data$Global_active_power <- as.numeric(household_data$Global_active_power)

with(household_data, hist(Global_active_power, col = "red", 
                          main = "Global Active Power", 
                          xlab = "Global Active Power (kilowatts)"))

dev.off()