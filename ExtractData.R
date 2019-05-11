# Extract file data and selecting the data only for 1/2/2007 and 2/2/2007 for plotting

housedata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
house_sel_data <- rbind(housedata[housedata$Date == "1/2/2007"], housedata[housedata$Date == "2/2/2007"])

# Transform date toDate format and create new variable with Date and Time period

house_sel_data$Date <- as.Date((house_sel_data$Date), "%d/%m/%y")
house_sel_data <- cbind(house_sel_data, "DateTime" = as.POSIXct(paste(house_sel_data$Date, house_sel_data$Time)))
