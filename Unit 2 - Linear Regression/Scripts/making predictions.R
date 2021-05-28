wineTest = read.csv("Unit 2 - Linear Regression/Data/wine_test.csv")

predictTest = predict(model4, newdata = wineTest)

# View the new data
str(wineTest)

# View the prediction result
predictTest

#Quantify R Square value for test set
SSE = sum((wineTest$Price - predictTest)^2)
SST = sum((wineTest$Price - mean(wine$Price))^2)

1 - SSE/SST
