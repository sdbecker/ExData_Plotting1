######### PLEASE NOTE
#
# The data for this file has been prepared in the file DataPrep.R,
# it is in the repo and needs to be sourced first to generate the data.
#
########

# Plot the line graph for Global Active Power to the screen device

plot(elecPowSub$Date,elecPowSub$Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "")

# Save the screen device to the PNG device with 480/480 pixels width and height

if(!is.null(dev.list())){
    dev.copy(png,"ExData_Plotting1/plot2.png", width = 480, height = 480)
    dev.off()
} # if a device is active then save it to file