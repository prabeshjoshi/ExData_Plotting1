
household_power_consumption <- read.csv("~/diet_data/household_power_consumption.txt", sep=";")

hh<-household_power_consumption

h1<-hh[hh$Date == c("1/2/2007"),]
 h2<-hh[hh$Date=="2/2/2007",]
 data<-rbind(h1,h2)

ga<-data$Global_active_power
ggg<-ga[ga!='?']
gap<-as.numeric(ggg)/500

hist(gap,xlab='kilowatts', col=2,main = 'Global Active Power')

dev.copy(png, "plot1.png")
dev.off()
