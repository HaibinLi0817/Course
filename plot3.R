#plot3
#Author: Haibin Li
#Email:15910681644@126.com
#Date:07-18-2016

setwd("J:/Users/lee/Desktop/codeggplotkm/RClass/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",sep=";",header=T)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

Sys.setlocale("LC_TIME","English")

Day <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

attach(data2)
png("plot3.png", width=480, height=480)
plot(Day, as.numeric(Sub_metering_1), type="l", col = "black", ylab="Energy sub metering", xlab="")
lines(Day, as.numeric(Sub_metering_2), type="l", col = "red")
lines(Day, as.numeric(Sub_metering_3), type="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch = 1, col = c("black","red", "blue"))
dev.off()
