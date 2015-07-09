source("datanalysis.R")
Sys.setlocale("LC_TIME", "en_US")
df.t.sub$Global_active_power <- as.numeric(df.t.sub$Global_active_power)
png(filename = "plot2.png", width = 480, height = 480, type = "quartz")
plot(df.t.sub$DT,df.t.sub$Global_active_power, type = "s", 
     ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()
