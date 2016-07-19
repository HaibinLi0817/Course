#plot2
#Author: Haibin Li
#Email:15910681644@126.com
#Date:07-18-2016

setwd("J:/Users/lee/Desktop/codeggplotkm/RClass/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",sep=";",header=T)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

Sys.setlocale("LC_TIME","English")

Day <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
with(data2,plot(Day, Global_active_power, type="l", xlab="",yaxt="n", ylab="Global Active Power (kilowatts)"))
axis(side=2,at=c(0,1000,2000,3000),labels=c(0,2,4,6))
dev.off()
