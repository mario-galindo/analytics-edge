# Create a histogram
hist(WHO$CellularSubscribers)

# Boxplot Chart
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab = "", ylab = "Life Expectancy", main="Life Expectancy of Countries by Region")

# Summary Tables
table(WHO$Region)

# Compute Custom Statistic 
tapply(WHO$Over60, WHO$Region, mean)

tapply(WHO$LiteracyRate, WHO$Region, min)

# Remove Missing Values
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm=TRUE)

tapply(WHO$ChildMortality, WHO$Region, mean)


