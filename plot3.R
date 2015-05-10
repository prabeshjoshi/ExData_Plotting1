household_power_consumption <- read.csv("~/household_power_consumption.txt", stringsAsFactors=FALSE, sep=";")
hpc<-household_power_consumption
h1<-hpc[hpc$Date=="1/2/2007",]
h2<-hpc[hpc$Date=="2/2/2007",]
sdata<-rbind(h1,h2)


time <- strptime(paste(sdata$Date, sdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

gap <- as.numeric(sdata$Global_active_power)
subMetering1 <- as.numeric(sdata$Sub_metering_1)
subMetering2 <- as.numeric(sdata$Sub_metering_2)
subMetering3 <- as.numeric(sdata$Sub_metering_3)


png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
