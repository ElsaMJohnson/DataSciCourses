plot2<-function(){
data<-fread("household_power_consumption.txt",na.strings="?")
sub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
dev.copy(png, file = "plot2.png", height=480, width=480)
y<-sub$Global_active_power
x<-paste(sub$Date,sub$Time)
time<-strptime(x, "%d/%m/%Y %H:%M:%S")
par(ps=11)
plot(time,y, type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
}
