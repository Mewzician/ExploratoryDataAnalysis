#execute this code in the directory where the txt file resides
#read in the 2-days of data
data <- read.table("household_power_consumption.txt",
                   sep = ";",
                   skip = 66637,
                   nrows = 2880,
                   colClasses = c("character", "character", "numeric", "numeric",
                                  "numeric","numeric","numeric","numeric","numeric")
)
#send the plot to a png device
png(file = "plot1.png")
hist(data$V3, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()
