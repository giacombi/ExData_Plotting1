source("datanalysis.R")
df.t.sub$Global_active_power <- as.numeric(df.t.sub$Global_active_power)
png(filename = "plot1.png", width = 480, height = 480, type = "quartz")
hist(df.t.sub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)"
     , ylab = "Frequency", ylim = c(0, 1200), col = "red", font.lab = 2)
dev.off()
    