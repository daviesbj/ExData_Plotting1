allData <- read.table ('household_power_consumption.txt', header = TRUE, sep = ';', as.is = TRUE,
                      na.strings = c('?'), colClasses = c(rep ('character', 2), rep ('numeric', 7)))

twoDays <- allData[ (allData$Date == '1/2/2007' | allData$Date == '2/2/2007'),]

twoDays$DateTime <- ( strptime (paste0 (twoDays$Date, ':', twoDays$Time), format = '%d/%m/%Y:%H:%M:%S'))

png ('plot1.png', width=480, height=480)
hist (twoDays$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
dev.off ()


