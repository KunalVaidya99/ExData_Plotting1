powerdata <- read.table("./household_power_consumption.txt",sep=";")
colnames(powerdata) <- powerdata[1,]
powerdata <- powerdata[2:dim(powerdata)[1],]


sub <- powerdata[powerdata$Date=="2/2/2007"|powerdata$Date=="1/2/2007",]
png(file="plot1.png",height=480,width=480)
hist(as.numeric(sub$Global_active_power),main="Global Active Power",col="orangered",xlab="Global Active Power (kilowatts")
dev.off()
