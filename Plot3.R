# Code for Plot 
with(house_sel_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})

lines(house_sel_data$Sub_metering_2 ~ house_sel_data$DateTime, col = 'Red')
lines(house_sel_data$Sub_metering_3 ~ house_sel_data$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))