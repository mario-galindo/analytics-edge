cor(wine$WinterRain, wine$Price)

#Highly Correlated
cor(wine$Age, wine$FrancePop)

# See the entire correlation of a dataset
cor(wine)

# remove multicollinearity
model5 = lm(Price ~ AGST + HarvestRain + WinterRain , data = wine)
summary(model5)
