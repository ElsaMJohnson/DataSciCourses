plot1<-function(){
#Plot 1 script
data<-fread("household_power_consumption.txt",na.strings="?")
sub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
glacpow<-as.numeric(sub$Global_active_power)
dev.copy(png, file = "plot1.png", height=480, width=480)
opar<-par(ps=11)
hist(glacpow,col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
}