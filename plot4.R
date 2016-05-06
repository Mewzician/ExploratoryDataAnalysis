#execute this code in the directory where the txt file resides
#read in the 2-days of data, coerce the data classes
data <- read.table("household_power_consumption.txt",
                   sep = ";",
                   skip = 66637,
                   nrows = 2880,
                   colClasses = c("character", "character", "numeric", "numeric",
                                  "numeric","numeric","numeric","numeric","numeric")
)
#send the plot to a png device
png(file = "plot4.png")

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

#CODE FOR plot2.R 
#CODE FOR Voltage/datetime   xlab = "datetime", ylab = "Voltage"
#CODE FOR plot3.R
#CODE FOR Global_reactive_power  xlab = "datetime", ylab = "Global_reactive_power" 


dev.off()
