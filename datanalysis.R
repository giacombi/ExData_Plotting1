#download file
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url = url, destfile = "power.zip", method = "curl")
unzip(zipfile = "power.zip", exdir = "power")
df <- read.table(file = "power/household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)

#transform
library(lubridate)
library(dplyr)
df.t <- tbl_df(df)
#create a new variable with date and time pasted
df.t$DT <- paste(df.t$Date, df.t$Time)
#convert Date from character to date to filter data
df.t$Date <- as.Date(df.t$Date, format = "%d/%m/%Y")
#filter data
df.t.sub <- filter(df.t, Date == "2007-02-01" | Date == "2007-02-02")
#convert date+time to POSIX.ct that is compatible with dplyr
df.t.sub$DT <- as.POSIXct(df.t.sub$DT, format = "%d/%m/%Y %H:%M:%S")

