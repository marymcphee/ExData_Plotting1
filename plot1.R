thething <- read.table("household_power_consumption.txt", na.strings="?", header = TRUE, sep = ";")

thething$Date <- as.Date(thething$Date, format = "%d/%m/%Y")
thething$timetemp <- paste(thething$Date, thething$Time)  
thething$Time <- strptime(thething$timetemp, format = "%Y-%m-%d %H:%M:%S")
dates<- c("2007-02-01", "2007-02-02")
smallset <-subset(thething, thething$Date==dates)
png("plot1.png")
hist(smallset$Global_active_power, col="Red", freq=TRUE, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", yaxt="n", xaxt="n")
axis(side = 2, at=(c(0,200,400,600,800,1000,1200)))
axis(side = 1, at=(c(0,2,4,6)))
dev.off()


