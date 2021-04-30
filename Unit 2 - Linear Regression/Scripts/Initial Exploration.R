# Import Wine Dataset
wine = read.csv("Unit 2 - Linear Regression/Data/wine.csv")

# View the structure of dataset
str(wine)

# Get the Average price
mean(wine$Price)
 
# Equation y = 7.07 

# Ecuacion con pendiente positiva podria predecir un precio alto
# y = 0.5 (AGST) - 1.25

# Medir la Calidad de una regresion Lineal
# Es la suma de los Square Errors = SSE
# Numero de DataPoints en nuestro dataset