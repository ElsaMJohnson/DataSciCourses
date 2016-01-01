plot3<-function(){
data<-fread("household_power_consumption.txt",na.strings="?")
sub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
y1<-sub$Sub_metering_1
y2<-sub$Sub_metering_2
y3<-sub$Sub_metering_3
x<-paste(sub$Date,sub$Time)
time<-strptime(x, "%d/%m/%Y %H:%M:%S")
dev.copy(png, file = "plot3.png", height=480, width=480)
par(ps=11)
plot(time,y1, type="l",ylab="",xlab="")
par(new=T)
plot(time,y2, type="l",ylab="",xlab="",col="red",axes=F,ylim=c(0,30))
par(new=T)
plot(time,y3, type="l",ylab="Energy sub metering",xlab="",col="blue",axes=F,ylim=c(0,30))
par(new=F)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.off()
}