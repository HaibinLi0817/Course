#plot4
#Author: Haibin Li
#Email:15910681644@126.com
#Date:07-18-2016

setwd("J:/Users/lee/Desktop/codeggplotkm/RClass/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",sep=";",header=T)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

Sys.setlocale("LC_TIME","English")

Day <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

attach(data2)
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2),mar = c(4,4,4,4), oma = c(0, 0, 2, 0))
with(data2,plot(Day, Global_active_power, type="l", xlab="",yaxt="n", ylab="Global Active Power (kilowatts)"))
axis(side=2,at=c(0,1000,2000,3000),labels=c(0,2,4,6))

with(data2,plot(Day, Voltage, type="l", xlab="Datetime", ylab="Voltage"))

plot(Day, as.numeric(Sub_metering_1), type="l", col = "black", ylab="Energy sub metering", xlab="")
lines(Day, as.numeric(Sub_metering_2), type="l", col = "red")
lines(Day, as.numeric(Sub_metering_3), type="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch = 1, col = c("black","red", "blue"))

with(data2,plot(Day, Global_active_power, type="l", xlab="Datetime", ylab="Global_active_power",ylim=c(0,5000),yaxt="n"))
axis(side=2,at=c(0,1000,2000,3000,4000,5000),labels=c(0.0,0.1,0.2,0.3,0.4,0.5))


dev.off()
