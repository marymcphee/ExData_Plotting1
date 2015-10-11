##not repeating steps to load and clean set shown in plot1.R file
png("plot2.png")
plot(smallset$Time, smallset$Global_active_power, lty=1, xlab="", ylim=c(0,6), ylab="Global Active Power(kilowatts)", type="l", cex.lab=0.75, cex.axis=0.75, yaxt="n")
axis(side = 2, at=(c(0,2,4,6)), cex.axis=0.75)
dev.off()
