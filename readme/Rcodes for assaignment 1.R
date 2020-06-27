# load data
# plot1.R
housepowerdata <-read.table("household power consumption project 1.txt", header=TRUE, sep=";", na.strings = "?")
str(housepowerdata)
house_a_data <-rbind(housepowerdata[housepowerdata$Date=="1/2/2007",],housepowerdata[housepowerdata$Date=="2/2/2007",])

house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
str(house_a_data)

hist(as.numeric(house_a_data$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")

#plot2.R

housepowerdata <-read.table("household power consumption project 1.txt", header=TRUE, sep=";", na.strings = "?")
str(housepowerdata)
house_a_data <-rbind(housepowerdata[housepowerdata$Date=="1/2/2007",],housepowerdata[housepowerdata$Date=="2/2/2007",])

house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
str(house_a_data)
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")

#plot3.R

housepowerdata <-read.table("household power consumption project 1.txt", header=TRUE, sep=";", na.strings = "?")
str(housepowerdata)
house_a_data <-rbind(housepowerdata[housepowerdata$Date=="1/2/2007",],housepowerdata[housepowerdata$Date=="2/2/2007",])

house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
str(house_a_data)
with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})

lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot4.R

housepowerdata <-read.table("household power consumption project 1.txt", header=TRUE, sep=";", na.strings = "?")
str(housepowerdata)
house_a_data <-rbind(housepowerdata[housepowerdata$Date=="1/2/2007",],housepowerdata[housepowerdata$Date=="2/2/2007",])

house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
str(house_a_data)
par(mfrow=c(2,2))
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l")
plot(house_a_data$Voltage ~ house_a_data$DateTime, type="l")

with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')

plot(house_a_data$Global_reactive_power ~ house_a_data$DateTime, type="l")
