source(file = "datanalysis.R")

#plot4
#set time as in US
Sys.setlocale("LC_TIME", "en_US")

png(filename = "plot4.png", width = 480, height = 480)

#set the paragraph parameters
par(mfrow = c(2,2))

#first plot
plot(df.t.sub$DT,df.t.sub$Global_active_power, type = "s", 
     ylab = "Global Active Power",xlab = "")
#second plot
df.t.sub$Voltage <- as.numeric(df.t.sub$Voltage)
plot(df.t.sub$DT,df.t.sub$Voltage, type = "s", xlab= "datetime", ylab = "Voltage")

#third plot
plot(df.t.sub$DT, df.t.sub$Sub_metering_1, ann = F, type = "s")
lines(df.t.sub$DT, df.t.sub$Sub_metering_2, col = "red")
lines(df.t.sub$DT, df.t.sub$Sub_metering_3, col = "blue")
title(ylab = "Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       cex = 0.8, col = c("black", "red", "blue"), lty = 1, bty = "n")

#fourth plot
df.t.sub$Global_reactive_power <- as.numeric(df.t.sub$Global_reactive_power)
plot(df.t.sub$DT,df.t.sub$Global_reactive_power, type = "s", xlab= "datetime", ylab = "Global_reactive_power")

dev.off()


