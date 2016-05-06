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
png(file = "plot2.png")

#create an empty plot
plot(data$V3, data$V2, type = "n", ylab = "Global Active Power (kilowatts)")

#fill in plot with a line graph
line(data$V3, data$V2) 
    
#add Thu Fri Sat and tick lines on the x axis
axis.Date()

dev.off()
