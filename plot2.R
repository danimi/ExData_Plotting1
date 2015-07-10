ds<-read.table("household_power_consumption.txt", header=TRUE,sep=";")
d<-ds[ds$Date=="1/2/2007"|ds$Date=="2/2/2007",]
xdata<-strptime(paste(d$Date, d$Time, sep="\t"), format="%d/%m/%Y %H:%M:%S") 
ydata<-as.numeric(as.character(d$Global_active_power))
png("plot2.png", width=480, height=480)
plot(xdata, ydata, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()