##not repeating steps to load and clean set shown in plot1.R file
png("plot3.png")
plot(smallset$Time, smallset$Sub_metering_1, type="l", ylab="Energy sub metering", cex.lab=0.75, cex.axis=0.75, xlab="")
lines(smallset$Time, smallset$Sub_metering_2, col="Red")
lines(smallset$Time, smallset$Sub_metering_3, col="Blue")
ally <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", ally, lty=1, cex=0.75, col=c("Black","Red","Blue"))
dev.off()
