# Import Wine Dataset
wine = read.csv("Unit 2 - Linear Regression/Data/wine.csv")

str(wine)

summary(wine)

# Creating a Linear Regression Model
model1 = lm(Price ~ AGST, data = wine)

# Check the model
summary(model1)

#Check Residuals
model1$residuals

# SUM of Square Errors
SSE = sum(model1$residuals^2)
SSE

# Creating another model with another independent variable
model2 = lm(Price ~ AGST + HarvestRain, data = wine)

summary(model2)
SSE_Model2 = sum(model2$residuals^2)
SSE_Model2

# Creating a Model3 with all independent variables
model3 = lm(Price ~ AGST + HarvestRain + WinterRain + FrancePop , data = wine)
summary(model3)

SSE_Model3 = sum(model3$residuals^2)
SSE_Model3




