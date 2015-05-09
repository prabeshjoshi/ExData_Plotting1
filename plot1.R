
household_power_consumption <- read.csv("~/diet_data/household_power_consumption.txt", sep=";")

hh0<-household_power_consumption

h10<-hh[hh$Date == "1/2/2007",]
 h20<-hh[hh$Date=="2/2/2007",]
 data0<-rbind(h1,h2)

ga0<-data$Global_active_power
ggg0<-ga[ga!='?']
gap0<-as.numeric(ggg)

hist(gap0,xlab='kilowatts', col=2,main = 'Global Active Power')

dev.copy(png, "plot1.png")
dev.off()
