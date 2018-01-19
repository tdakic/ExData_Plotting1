# plot 4 for Project 1 for Exploratory Data Analysis on Coursera
# completed by TD, Jan 19, 2018

#load the data first
e_data <- read.csv2("household_power_consumption.txt",stringsAsFactors=FALSE)

#choose the data for Feb 1 and Feb 2, 2007
data_Feb_1_and_2_2007 <- subset(e_data,Date=="1/2/2007" | Date == "2/2/2007")

#open the device of the requred size first - dev.copy doesn't work here
png("plot4.png", 480, 480)

#set to have 4 plots on the same image
par(mfrow=c(2,2))

#plot1
plot(as.numeric(data_Feb_1_and_2_2007$Global_active_power),type = "l",ylab="Global Active Power",xaxt = "n", xlab ="")
axis(side = 1, at = c(0,length(data_Feb_1_and_2_2007$Global_active_power)/2,length(data_Feb_1_and_2_2007$Global_active_power) ), labels = c("Thu", "Fri","Sat"))

#plot2
plot(as.numeric(data_Feb_1_and_2_2007$Voltage),type = "l",ylab="Voltage",xlab="datetime",xaxt = "n")
axis(side = 1, at = c(0,length(data_Feb_1_and_2_2007$Voltage)/2,length(data_Feb_1_and_2_2007$Voltage) ), labels = c("Thu", "Fri","Sat"))

#plot3
plot(as.numeric(data_Feb_1_and_2_2007$Sub_metering_1),type = "l",ylab="Energy sub metering",xaxt = "n", xlab ="")
lines(as.numeric(data_Feb_1_and_2_2007$Sub_metering_2),col="red")
lines(as.numeric(data_Feb_1_and_2_2007$Sub_metering_3),col="blue")

axis(side = 1, at = c(0,length(data_Feb_1_and_2_2007$Sub_metering_1)/2,length(data_Feb_1_and_2_2007$Sub_metering_1) ), labels = c("Thu", "Fri","Sat"))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"),lty=1, cex=0.9, bty='n')

#plot 4
plot(as.numeric(data_Feb_1_and_2_2007$Global_reactive_power),type = "l",ylab="Global_reactive_power",xlab="datetime",xaxt = "n")
axis(side = 1, at = c(0,length(data_Feb_1_and_2_2007$Global_reactive_power)/2,length(data_Feb_1_and_2_2007$Global_reactive_power) ), labels = c("Thu", "Fri","Sat"))


dev.off()

