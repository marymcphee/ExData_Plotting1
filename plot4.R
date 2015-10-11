##not repeating steps to load and clean set shown in plot1.R file
png("plot4.png")
par(mfcol=c(2,2))
plot(smallset$Time, smallset$Global_active_power, lty=1, xlab="", ylim=c(0,6), ylab="Global Active Power", type="l", cex.lab=0.75, cex.axis=0.75, yaxt="n")
axis(side = 2, at=(c(0,2,4,6)), cex.axis=0.75)
plot(smallset$Time, smallset$Sub_metering_1, type="l", ylab="Energy sub metering", cex.lab=0.75, cex.axis=0.75, xlab="")
lines(smallset$Time, smallset$Sub_metering_2, col="Red")
lines(smallset$Time, smallset$Sub_metering_3, col="Blue")
ally <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", ally, lty=1, cex=0.75, col=c("Black","Red","Blue"), bty="n")
plot(smallset$Time, smallset$Voltage, xlab="datetime", type="l", ylab="Voltage", cex.axis=0.75, cex.lab=0.75)
plot(smallset$Time, smallset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", cex.axis=0.75, cex.lab=0.75)
dev.off()

