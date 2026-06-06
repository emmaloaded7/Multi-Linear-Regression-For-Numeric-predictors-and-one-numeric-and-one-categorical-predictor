dataset <- read.csv(file.choose())

#Name of variables
names(dataset)

#Dimension
dim(dataset)

#Data Summary
summary(dataset)

#Convert to numeric
dataset$Sex <- as.factor(dataset$Sex)

#Recheck the table summary if sex have been converted
summary(dataset)

#Show only 3 Rows
dataset[1:3,]

#Multiple Linear Regression
#The two predictors are Numeric
#Height and Age

library(scatterplot3d)

scatterplot3d(dataset$Weight, dataset$Age, dataset$Height, main = 
                "Relationship Between Weight, Age and Height", xlab = "Weight", ylab = "Age", zlab = "Height")

#Linear Model
#Predicting age with Age and Height Variables
mode1 <- lm(Weight ~ Age + Height, data = dataset)

#Model Summary
summary(mode1)

#Plot where Age and Sex is Male and Weight and Sex is Male
plot(dataset$Age[dataset$Sex == 1],
     dataset$Weight[dataset$Sex == 1],
     pch = 16,
     col = "blue",
     xlab = "Age (years)",
     ylab = "Weight (kg)",
     main = "Weight by Sex and Age")

#Female as points
points(dataset$Age[dataset$Sex == 0],
       dataset$Weight[dataset$Sex == 0],
       pch = 1,
       col = "magenta")

legend("topleft",
       legend = c("Male", "Female"),
       col = c("blue", "magenta"),
       pch = c(16, 1))

#Multiple Linear Regression
#One of the predictor is Number and the other is cartigorical factor
mode2 <- lm(Weight ~ Age + Sex, data = dataset)
summary(mode2)
#When Age = 0 and Sex = Female (0), the predicted weight is 14.69 kg.
#When Age Increase by 1 unit the goat Weight Increases by 7.39
#Male goats (Sex = 1) are expected to weigh 4.18 kg more than female goats (Sex = 0) of the same age.
#P-value < 0.05 i.e statement is highly significant

abline(a=14.6867, b=7.3935, col = "blue", lty=1, lwd=3)
abline(a=14.6867, b=4.1845, col = "green", lty=1, lwd=3)

#(Effect Modification)
mode3 <- lm(Weight ~ Age * Sex, data = dataset)
summary(mode3)
##P-value > 0.05 i.e statement is not significant for Age:Sex1

# Scatter plot
plot(dataset$Age, dataset$Weight,
     xlab = "Age",
     ylab = "Weight",
     pch = ifelse(dataset$Sex == 1, 16, 1))

# Female regression line (Sex = 0)
female_coef <- coef(mode3)
abline(a = female_coef[1],
       b = female_coef[2],
       col = "blue",
       lwd = 2)

# Male regression line (Sex = 1)
abline(a = female_coef[1] + female_coef[3],
       b = female_coef[2] + female_coef[4],
       col = "red",
       lwd = 2)

legend("topleft",
       legend = c("Female", "Male"),
       col = c("blue", "red"),
       lwd = 2)
