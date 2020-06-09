dataA<- "./household_power_consumption.txt"
Data<- read.table(dataA,sep=";",header = TRUE,stringsAsFactors = FALSE)
subData<- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
GAP<- as.numeric(subData$Global_active_power)
DT<- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(DT,GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()