source("household.R")

png(file = "plot4.png")

par(mfrow = c(2,2))

household_data$Time <- strptime(household_data$Time, format="%H:%M:%S")
household_data[1:1440,"Time"] <- format(household_data[1:1440,"Time"],"2007-02-01 %H:%M:%S")
household_data[1441:2880,"Time"] <- format(household_data[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

plot(household_data$Time,as.numeric(household_data$Global_active_power),type="l",xlab="",ylab="Global Active Power") 

with(household_data, plot(Time, Voltage, type = "l", xlab = "datetime"))

plot(household_data$Time, as.numeric(household_data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
with(household_data, lines(Time, as.numeric(Sub_metering_2), col = "red"))
with(household_data, lines(Time, as.numeric(Sub_metering_3), col = "blue"))

legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(household_data, plot(Time, Global_reactive_power, type = "l", xlab = "datetime"))


dev.off()