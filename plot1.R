# plot 1 for Project 1 for Exploratory Data Analysis on Coursera
# completed by TD, Jan 19, 2018

#load the data first
e_data <- read.csv2("household_power_consumption.txt",stringsAsFactors=FALSE)

#choose the data for Feb 1 and Feb 2, 2007
data_Feb_1_and_2_2007 <- subset(e_data,Date=="1/2/2007" | Date == "2/2/2007")

#just in case the default was changed previously, set to only one plot per image
mfrow=c(1,1)

#create the histogram of data
hist(as.numeric(data_Feb_1_and_2_2007$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",font.lab=2)

#copy the data to the file plot1.png
dev.copy(png,"plot1.png",width = 480, height = 480)
dev.off()


