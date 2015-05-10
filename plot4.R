household_power_consumption <- read.csv("~/household_power_consumption.txt", stringsAsFactors=FALSE, sep=";")
hpc<-household_power_consumption
h1<-hpc[hpc$Date=="1/2/2007",]
h2<-hpc[hpc$Date=="2/2/2007",]
sdata<-rbind(h1,h2)




gap <- as.numeric(sdata$Global_active_power)
subMetering1 <- as.numeric(sdata$Sub_metering_1)
subMetering2 <- as.numeric(sdata$Sub_metering_2)
subMetering3 <- as.numeric(sdata$Sub_metering_3)


datetime <- strptime(paste(sdata$Date, sdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sdata$Global_active_power)
grp <- as.numeric(sdata$Global_reactive_power)
voltage <- as.numeric(sdata$Voltage)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, grp, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()