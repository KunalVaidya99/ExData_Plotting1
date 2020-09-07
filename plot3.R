powerdata <- read.table("./household_power_consumption.txt",sep=";")
colnames(powerdata) <- powerdata[1,]
powerdata <- powerdata[2:dim(powerdata)[1],]


sub <- powerdata[powerdata$Date=="2/2/2007"|powerdata$Date=="1/2/2007",]

dateplot <- strptime(paste(sub$Date,sub$Time,sep=" "),"%d/%m/%Y %H:%M:%S")

png(file="plot3.png")
plot(dateplot,sub$Sub_metering_1,type="n",ylab="Energy Sub metering",xlab="")
points(dateplot,sub$Sub_metering_1,col="gray",type="l")
points(dateplot,sub$Sub_metering_2,col='red',type='l')
points(dateplot,sub$Sub_metering_3,col='blue',type='l')
v <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",v,col=c("gray","red","blue"),lty=c(1,1,1))
dev.off()