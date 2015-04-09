######### PLEASE NOTE
#
# The data for this file has been prepared in the file DataPrep.R,
# it is in the repo and needs to be sourced first to generate the data.
#
########


# Plot the histogram for Global Active Power to the screen device

with(elecPowSub, hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = 'red'))

# Save the screen device to the PNG device with 480/480 pixels width and height

if(!is.null(dev.list())){
    dev.copy(png,"ExData_Plotting1/plot1.png", width = 480, height = 480)
    dev.off()
} # if a device is active then save it to file