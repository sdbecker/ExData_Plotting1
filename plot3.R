######### PLEASE NOTE
#
# The data for this file has been prepared in the file DataPrep.R,
# it is in the repo and needs to be sourced first to generate the data.
#
########


# Plot the line graphs for sub-metering to the screen device

with(elecPowSub, plot(Date, Sub_metering_1, type = 'l',
                      ylab = "Energy sub metering",
                      xlab = ""))
with(elecPowSub, lines(Date, Sub_metering_2, col = "red"))
with(elecPowSub, lines(Date, Sub_metering_3, col = "blue"))

legend("topright",
       lty = c(1, 1, 1),
       col = c("black", "red", "blue"),
       legend = names(elecPowSub[,6:8])
       )

# Save the screen device to the PNG device with 480/480 pixels width and height

if(!is.null(dev.list())){
    dev.copy(png,"ExData_Plotting1/plot3.png", width = 480, height = 480)
    dev.off()
} # if a device is active then save it to file