household_power_consumption <- read.csv("~/household_power_consumption.txt", stringsAsFactors=FALSE, sep=";")
hpc<-household_power_consumption
h1<-hpc[hpc$Date=="1/2/2007",]
h2<-hpc[hpc$Date=="2/2/2007",]
sdata<-rbind(h1,h2)


time <- strptime(paste(sdata$Date, sdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

gap <- as.numeric(sdata$Global_active_power)
png("plot2.png")
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
