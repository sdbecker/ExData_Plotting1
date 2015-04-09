elecPow <- read.table("HousePowConsum.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?", header = TRUE)

elecPow$Date <- strptime(paste(elecPow$Date,elecPow$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

elecPowSub <- subset(elecPow, Date >= "2007-02-01 00:00:00" & elecPow$Date <= "2007-02-02 23:59:00", select = -Time)