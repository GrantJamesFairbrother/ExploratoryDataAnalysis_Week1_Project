library(dplyr)


household_data <- read.table("household_power_consumption.txt", sep = ";", skip = 1, col.names = 
                             c("Date","Time", "Global_active_power", "Global_reactive_power", "Voltage",
                               "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

household_data$Date <- strptime(household_data$Date, c("%d/%m/%Y")) %>%
  as.Date(c("%d/%m/%Y"))

household_data <- filter(household_data, Date == "2007-02-01" | Date == "2007-02-02")

  

