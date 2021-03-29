# View a dataset variable 
WHO$Under15

# View the mean of a dataset
mean(WHO$Under15)

# View the standard deviation
sd(WHO$Under15)

# Summary of a dataset variable
summary(WHO$Under15)

# Return the index of a object in dataset
which.min(WHO$Under15)
which.max(WHO$Under15)

# View a specific row
WHO$Country[86]
WHO$Country[124]

# Create a scatter plot
plot(WHO$GNI,WHO$FertilityRate)

# Filter a dataset
Outliers = subset(WHO, GNI > 10000 & FertilityRate > 2.5)

# View the number of rows in a dataset
nrow(Outliers)

# Make a vector from a dataset variables
Outliers[c("Country","GNI","FertilityRate")]

