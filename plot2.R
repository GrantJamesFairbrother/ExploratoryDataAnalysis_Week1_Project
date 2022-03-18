source("household.R")

png(file = "plot2.png")

household_data$Time <- strptime(household_data$Time, format="%H:%M:%S")
household_data[1:1440,"Time"] <- format(household_data[1:1440,"Time"],"2007-02-01 %H:%M:%S")
household_data[1441:2880,"Time"] <- format(household_data[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

plot(household_data$Time,as.numeric(household_data$Global_active_power),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

dev.off()