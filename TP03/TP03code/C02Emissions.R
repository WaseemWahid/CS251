# Example data
data <- c(100, 120, 130, 110, 140, 150, 160, 170, 190, 200)

# Calculate standard deviation
sd_value <- sd(data)
cat("Standard Deviation:", sd_value, "\n")

# Create histogram
hist(data, main = "CO2 Emissions", xlab = "Pounds of CO2 Equivalent")



# Example data
time <- c(2000, 2005, 2010, 2015, 2020)
emissions_vehicleA <- c(100, 110, 120, 130, 140)
emissions_vehicleB <- c(120, 125, 130, 135, 140)

# Create line graph
plot(time, emissions_vehicleA, type = "l", col = "blue", xlab = "Year", ylab = "Emissions",
    main = "Emission Trends Over Time")
lines(time, emissions_vehicleB, type = "l", col = "red")
legend("topright", legend = c("Vehicle A", "Vehicle B"), col = c("blue", "red"), lty = 1)


# Example data
years <- c(2010, 2011, 2012, 2013, 2014)
electric <- c(100, 95, 90, 85, 80)
gasoline <- c(200, 180, 160, 140, 120)
diesel <- c(250, 230, 210, 190, 170)

# Histogram
hist(electric, main = "CO2 Emissions - Electric Vehicles", xlab = "Pounds of CO2 Equivalent", col = "lightblue")

# Standard Deviation
sd_electric <- sd(electric)
cat("Standard Deviation - Electric Vehicles:", sd_electric, "\n")

# Line graph
plot(years, electric, type = "b", main = "CO2 Emissions over Time", xlab = "Year", ylab = "Pounds of CO2 Equivalent", col = "blue", ylim = c(0, max(electric, gasoline, diesel)))
lines(years, gasoline, type = "b", col = "red")
lines(years, diesel, type = "b", col = "green")
legend("topright", legend = c("Electric", "Gasoline", "Diesel"), col = c("blue", "red", "green"), lty = 1, cex = 0.8)
