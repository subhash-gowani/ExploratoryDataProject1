dataA<- "./household_power_consumption.txt"
Data<- read.table(dataA,sep=";",header = TRUE,stringsAsFactors = FALSE)
subData<- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
GAP<- as.numeric(subData$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(GAP,xlab="Global Active Power (Kilowatts)",main = "Global Active Power", col ="red")
dev.off()