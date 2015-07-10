ds<-read.table("household_power_consumption.txt", header=TRUE,sep=";")
ds$Date<-as.Date(ds$Date,"%d/%m/%Y")
d<-ds[ds$Date==as.Date("1/2/2007","%d/%m/%Y")|ds$Date==as.Date("2/2/2007","%d/%m/%Y"),]
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(d$Global_active_power)), col="red",labels = FALSE,main="",xlab="Global active power (killowats)")
dev.off()