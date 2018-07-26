library(dplyr)
data <- read.csv("D:/R work/Coursera/household_power_consumption.txt",sep=";", stringsAsFactors=FALSE)

data$Date=as.Date(data$Date,format = "%d/%m/%Y")

data1=data%>% filter(Date>="2007-02-01" & Date<="2007-02-02")
data1$Global_active_power=as.numeric(data1$Global_active_power)
hist(data1$Global_active_power,col = "red",xlab="Global active power(Kilowatts)",main="Global active power")
dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()
