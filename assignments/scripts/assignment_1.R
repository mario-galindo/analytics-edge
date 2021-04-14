# An analytical detective

# Read Dataset 
mvt = read.csv("assignments/datasets/mvtWeek1.csv")

#View the structure
str(mvt)

#Summary
summary(mvt)

# Using the "max" function, what is the maximum value of the variable "ID"?
max(mvt$ID)

# What is the minimum value of the variable "Beat"?
min(mvt$Beat)

# How many observations have value TRUE in the Arrest variable 
# (this is the number of crimes for which an arrest was made)?
table(mvt$Arrest)

# How many observations have a LocationDescription value of ALLEY?
table(mvt$LocationDescription)

#In what format are the entries in the variable Date?
mvt$Date[1]

# Now, let's convert these characters into a Date object in R. In your R console, type

DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
summary(DateConvert)

# Extract Month
mvt$Month = months(DateConvert)

# Extract Weekday 
mvt$Weekday = weekdays(DateConvert)

# Replace  old date with new date formatted as date
mvt$Date = DateConvert

# In which month did the fewest motor vehicle thefts occur?
table(mvt$Month)
which.min(table(mvt$Month))

# On which weekday did the most motor vehicle thefts occur?
which.max(table(mvt$Weekday))

# Which month has the largest number of motor vehicle thefts for which an arrest was made?
arrest = subset(mvt, mvt$Arrest == TRUE)
which.max(table(arrest$Month))

# Understand how crime has changed over time in Chicago
hist(mvt$Date, breaks=100)

# Let's see how arrests have changed over time
boxplot(mvt$Date ~ mvt$Arrest)

# For what proportion of motor vehicle thefts in 2001/2007/2012 was an arrest made?
mvt2001 = subset(mvt, mvt$Year == 2001) 
sum(mvt2001$Arrest) / nrow(mvt2001)

mvt2007 = subset(mvt, mvt$Year == 2007) 
sum(mvt2007$Arrest) / nrow(mvt2007)

mvt2012 = subset(mvt, mvt$Year == 2012) 
sum(mvt2012$Arrest) / nrow(mvt2012)

# Which locations are the top five locations for motor vehicle thefts, 
# excluding the "Other" category?
sort(table(mvt$LocationDescription))
head(sort(table(mvt$LocationDescription), decreasing=TRUE), 6)


# Popular locations
Top5 = subset(mvt, mvt$LocationDescription == "STREET" | 
                mvt$LocationDescription == "PARKING LOT/GARAGE(NON.RESID.)" |
                mvt$LocationDescription == "ALLEY" | 
                mvt$LocationDescription == "GAS STATION" |
                mvt$LocationDescription == "DRIVEWAY - RESIDENTIAL" )

# How many observations are in Top5?
nrow(Top5)

Top5$LocationDescription = factor(Top5$LocationDescription)

# One of the locations has a much higher arrest rate than the other locations. Which is it?
table(Top5$Arrest,Top5$LocationDescription)

# On which day of the week do the most motor vehicle thefts at gas stations happen?
GasStation = subset(mvt, mvt$LocationDescription == "GAS STATION")
which.max(table(GasStation$Weekday))

# On which day of the week do the fewest motor vehicle thefts in residential driveways happen?
Driveway = subset(mvt, mvt$LocationDescription == "DRIVEWAY - RESIDENTIAL")
which.min(table(Driveway$Weekday))





