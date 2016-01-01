plot4<-function(){
data<-fread("household_power_consumption.txt",na.strings="?")
sub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
par(mfcol=c(2,2))

dev.copy(png, file = "plot4.png", height=480, width=480)
##Plot A
y<-sub$Global_active_power
x<-paste(sub$Date,sub$Time)
time<-strptime(x, "%d/%m/%Y %H:%M:%S")
par(ps=11)
plot(time,y, type="l",ylab="Global Active Power",xlab="")

##Plot B
y1<-sub$Sub_metering_1
y2<-sub$Sub_metering_2
y3<-sub$Sub_metering_3
par(ps=11)
plot(time,y1, type="l",ylab="",xlab="")
par(new=T)
plot(time,y2, type="l",ylab="",xlab="",col="red",axes=F,ylim=c(0,30))
par(new=T)
plot(time,y3, type="l",ylab="Energy sub metering",xlab="",col="blue",axes=F,ylim=c(0,30))
par(new=F)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",lty=1,col=c("black","red","blue"))

##Plot C
y<-as.numeric(sub$Voltage)
par(ps=11)
plot(time,y,xlab="Datetime",ylab="Voltage",type="l")

##Plot D
y<-sub$Global_reactive_power
par(ps=11)
plot(time,y,xlab="Datetime",ylab="Global_reactive_power",type="l")
par(mfcol=c(1,1))
dev.off()
}