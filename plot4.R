
######### PLEASE NOTE
#
# The data for this file has been prepared in the file DataPrep.R,
# it is in the repo and needs to be sourced first to generate the data.
#
########

# Set up the screen device to plot 4 graph on the single device

par(mfrow = c(2,2))

label_Size = 0.6 # adjust the size of the label text

#Plot the four graphs so they will appear in row order

# First plot
plot(elecPowSub$Date,elecPowSub$Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "", cex.lab = label_Size)

#Second plot
with(elecPowSub, plot(Date,Voltage, type = 'l', xlab = 'datetime',
                      cex.lab = label_Size))

#Third plot

with(elecPowSub, plot(Date, Sub_metering_1, type = 'l',
                      ylab = "Energy sub metering",
                      xlab = "", cex.lab = label_Size))
with(elecPowSub, lines(Date, Sub_metering_2, col = "red"))
with(elecPowSub, lines(Date, Sub_metering_3, col = "blue"))

legend("topright",
       lty = c(1, 1, 1),
       col = c("black", "red", "blue"),
       legend = names(elecPowSub[,6:8]),
       cex = 0.5
)

#Fourth plot

with(elecPowSub, plot(Date,Global_reactive_power, type = 'l',
                      xlab = 'datetime', cex.lab = label_Size))

# Save the screen device to the PNG device with 480/480 pixels width and height

if(!is.null(dev.list())){
    dev.copy(png,"ExData_Plotting1/plot4.png", width = 480, height = 480)
    dev.off()
} # if a device is active then save it to file
