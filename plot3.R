# plot 3 for Project 1 for Exploratory Data Analysis on Coursera
# completed by TD, Jan 19, 2018

#load the data first
e_data <- read.csv2("household_power_consumption.txt",stringsAsFactors=FALSE)

#choose the data for Feb 1 and Feb 2, 2007
data_Feb_1_and_2_2007 <- subset(e_data,Date=="1/2/2007" | Date == "2/2/2007")

#open the device of the requred size first - dev.copy doesn't work here
png("plot3.png", 480, 480)

#just in case the default was changed previously, set to only one plot per image
mfrow=c(1,1)

#create the plot
plot(as.numeric(data_Feb_1_and_2_2007$Sub_metering_1),type = "l",ylab="Energy sub metering",xaxt = "n", xlab ="")
lines(as.numeric(data_Feb_1_and_2_2007$Sub_metering_2),col="red")
lines(as.numeric(data_Feb_1_and_2_2007$Sub_metering_3),col="blue")

#lable the axis
axis(side = 1, at = c(0,length(data_Feb_1_and_2_2007$Sub_metering_1)/2,length(data_Feb_1_and_2_2007$Sub_metering_1) ), labels = c("Thu", "Fri","Sat"))

#create the legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"),lty=1)

dev.off()



