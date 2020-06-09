dataA<- "./household_power_consumption.txt"
Data<- read.table(dataA,sep=";",header = TRUE,stringsAsFactors = FALSE)
subData<- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
DT<- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
one<- as.numeric(subData$Sub_metering_1)
two<- as.numeric(subData$Sub_metering_2)
three<- as.numeric(subData$Sub_metering_3)
png("plot3.png",width = 480,height=480)
plot(DT,one,type = "l",xlab="",ylab = "Energy sub metering")
lines(DT,two,type="l",col="red")
lines(DT,three,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()