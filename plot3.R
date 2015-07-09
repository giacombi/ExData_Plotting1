source(file = "datanalysis.R")
plot(df.t.sub$DT, df.t.sub$Sub_metering_1, ann = F, type = "s")
lines(df.t.sub$DT, df.t.sub$Sub_metering_2, col = "red")
lines(df.t.sub$DT, df.t.sub$Sub_metering_3, col = "blue")
title(ylab = "Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       cex = 0.5, col = c("black", "red", "blue"), lty = 1)
dev.copy(png, "plot3.png", width = 480, height = 480, type = "quartz")
dev.off()
