# Choose the working directory which contains file household_power_consumption.txt

data <- "household_power_consumption.txt"

table <- read.table(data, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

#head(table)

table1 <- table[table$Date %in% c("1/2/2007","2/2/2007"), ]

#head(table1)

datetime <- strptime(paste(table1$Date, table1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(table1$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off() 