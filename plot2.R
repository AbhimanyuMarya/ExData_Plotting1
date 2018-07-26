library(dplyr)
data <- read.csv("D:/R work/Coursera/household_power_consumption.txt",
                 sep=";", stringsAsFactors=FALSE)


data1=data%>% filter(Date>="2007-02-01" & Date<="2007-02-02")

data1$Time=paste(as.Date(data1$Date), data1$Time)
data1$Time=as.POSIXct(data1$Time)
plot(data1$Global_active_power~data1$Time,type="l",main="",xlab="",ylab="Global active power(Kilowatts)")
dev.copy(png,file="plot2.png",height=480,width=480)
dev.off()
