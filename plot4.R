library(dplyr)
data <- read.csv("D:/R work/Coursera/household_power_consumption.txt",
                 sep=";", stringsAsFactors=FALSE)
data1=data%>% filter(Date>="2007-02-01" & Date<="2007-02-02")
data1$Time=paste(as.Date(data1$Date), data1$Time)
data1$Time=as.POSIXct(data1$Time)

par(mfrow=c(2,2))
plot(data1$Global_active_power~data1$Time,type="l",main="",xlab="",ylab="Global active power(Kilowatts)")


plot(data1$Voltage~data1$Time,type="l",main="",xlab="datetime",ylab="Voltage")

with(data1,{
  plot(data1$Sub_metering_1~data1$Time,type="l",col="black")
  lines(data1$Sub_metering_2~data1$Time,type="l",col="red")
  lines(data1$Sub_metering_3~data1$Time,type="l",col="blue")
  
  
  
})

legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_3","Sub_metering_3"),lwd = 2)


plot(data1$Global_reactive_power~data1$Time,type="l",main="",xlab="",ylab="Global_reactive_power")


dev.copy(png,file="plot4.png",height=480,width=480)


dev.off()

