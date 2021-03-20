# Get current working directory
getwd()

# Read a CSV File
WHO = read.csv("data/WHO.csv")

# See the structured of a data frame
str(WHO)

# View a summary of data frame
summary(WHO)

#Create a subset filtering a data frame
WHO_Europe = subset(WHO, Region == "Europe")

#Save a data frame as CSV file
write.csv(WHO_Europe,"data/WHO_Europe.csv")

#View a list of current variables
ls()

#Remove a variable
rm(WHO_Europe)

