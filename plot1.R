#plot1
#Author: Haibin Li
#Email:15910681644@126.com
#Date:07-18-2016

getwd()
setwd("J:/Users/lee/Desktop/codeggplotkm/RClass/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",sep=";",header=T)
head(data)

data1 <- subset(data,Date=="1/2/2007")
data2 <- subset(data,Date=="2/2/2007")

#data<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")


total <- rbind(data1,data2)

head(total)

str(total)

Global_active_power <- as.numeric(total$Global_active_power)
Global_active_power <- Global_active_power/1000

str(Global_active_power)
png("plot1.png",width=480,height=480)
hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (killowatts)",xaxt="n")
axis(side=1,at=c(0,1,2,3),labels=c(0,2,4,6))
dev.off()



