powerdata <- read.table("./household_power_consumption.txt",sep=";")
colnames(powerdata) <- powerdata[1,]
powerdata <- powerdata[2:dim(powerdata)[1],]


sub <- powerdata[powerdata$Date=="2/2/2007"|powerdata$Date=="1/2/2007",]

dateplot <- strptime(paste(sub$Date,sub$Time,sep=" "),"%d/%m/%Y %H:%M:%S")


png(file="plot2.png",width=480,height=480)
plot(dateplot,as.numeric(sub$Global_active_power),type="l",ylab="Global Active Power(kilowatts)",xlab="")

dev.off()