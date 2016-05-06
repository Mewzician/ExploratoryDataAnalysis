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
png(file = "plot3.png")


#convert V1 to day of week
#use http://www.statmethods.net/input/dates.html
format(V1, format="%a")
dates <- as.Date(V1, "%m/%d/%Y")
#convert V2 to seconds
format(V2, format="")


#create an empty plot
plot(data$V1:2, data$V7:9, type = "n", ylab = "Energy sub metering")

#fill in plot with a line graph of each of the three sub-meters
with(subset(data$V7), line(V1:2, V7, col = "black")
     subset(data$V8), line(V1:2, V7, col = "red")
     subset(data$V9), line(V1:2, V7, col = "blue")
     )

#add Thu Fri Sat and tick lines on the x axis
axis.Date()

#make a legend
legend("topright", pch = ?line?, col = c("black", "red", "blue"),
       legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3")
       )

dev.off()
