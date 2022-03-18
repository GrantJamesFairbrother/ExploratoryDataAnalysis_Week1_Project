source("household.R")

#png(file = "plot3.png")

household_data$Time <- strptime(household_data$Time, format="%H:%M:%S")
household_data[1:1440,"Time"] <- format(household_data[1:1440,"Time"],"2007-02-01 %H:%M:%S")
household_data[1441:2880,"Time"] <- format(household_data[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

plot(household_data$Time, as.numeric(household_data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
with(household_data, lines(Time, as.numeric(Sub_metering_2), col = "red"))
with(household_data, lines(Time, as.numeric(Sub_metering_3), col = "blue"))

legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#dev.off()