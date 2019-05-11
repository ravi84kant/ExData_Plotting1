# Code for Plot 4
par(mfrow=c(2,2))
plot(house_sel_data$Global_active_power ~ house_sel_data$DateTime, type="l")
plot(house_sel_data$Voltage ~ house_sel_data$DateTime, type="l")

with(house_sel_data, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(house_sel_data$Sub_metering_2 ~ house_sel_data$DateTime, col = 'Red')
lines(house_sel_data$Sub_metering_3 ~ house_sel_data$DateTime, col = 'Blue')

plot(house_sel_data$Global_reactive_power ~ house_sel_data$DateTime, type="l")
