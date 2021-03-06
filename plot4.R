allData <- read.table ('household_power_consumption.txt', header = TRUE, sep = ';', as.is = TRUE,
                     na.strings = c('?'), colClasses = c(rep ('character', 2), rep ('numeric', 7)))

twoDays <- allData[ (allData$Date == '1/2/2007' | allData$Date == '2/2/2007'),]

twoDays$DateTime <- ( strptime (paste0 (twoDays$Date, ':', twoDays$Time), format = '%d/%m/%Y:%H:%M:%S'))

png ('plot4.png', width=480, height=480)

par ( mfrow = c (2, 2) )

# Global Active Power graph
plot (twoDays$DateTime,
      twoDays$Global_active_power,
      type='l',
      xlab='',
      ylab='Global Active Power'
)

# Voltage graph
plot (twoDays$DateTime,
      twoDays$Voltage,
      type='l',
      xlab='datetime',
      ylab='Voltage'
)

# Sub Metering graph
plot (twoDays$DateTime, 
      twoDays$Sub_metering_1,
      type='l',
      xlab='',
      ylab='Energy sub metering'
      )
points (twoDays$DateTime, twoDays$Sub_metering_2, type='l', col='red')
points (twoDays$DateTime, twoDays$Sub_metering_3, type='l', col='blue')
lineNames <- c(colnames(twoDays)[7:9])
legend( 'topright', legend = lineNames, col = c('black', 'red', 'blue' ), lwd = 1, bty = 'n' )

# Global Rective Power graph
plot (twoDays$DateTime,
      twoDays$Global_reactive_power,
      type='l',
      xlab='datetime',
      ylab = 'Global_reactive_power'
)

dev.off()

