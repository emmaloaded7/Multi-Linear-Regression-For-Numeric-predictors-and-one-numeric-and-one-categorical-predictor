# Multi Linear Regression For Numeric predictors and one numeric and one categorical predictor

## Overview
The project demostrate Multi linear regression for Two numeric predators
and One numeric and One categorical predictor with Effect modification 
Multi Linear regression using goat husbandry dataset

The analysis investigate if Age and Sex plays a major role in Weight 
Development in animals specifically in Goat

## Objective
# Determine the effect of Age, Height, and Sex on goat Weight.
* Model 1
  Weight ~ Age + Height
* Model 2
  Weight ~ Age + Sex
* Model 3
  Weight ~ Age * Sex

## Research Question
* Is there a relationship between Age and Sex in Goat development?
* Which variables were significant?
* Was the interaction significant?
* What was the R²?

## Dataset
https://github.com/emmaloaded7/Multi-Linear-Regression-For-Numeric-predictors-and-one-numeric-and-one-categorical-predictor/blob/master/goat_dataset.csv

## Variables used in the analysis:
* Weight (kg): Response variable
* Height (cm): Numeric Predictor variable
* Age (Years): Numeric Predictor variable
* Sex: Categorical predictor variable
  0 = Female
  1 = Male

## Statistical Methods
1. Multi Linear Regression (Two numeric predictors)
 Age and Height
mode1 <- lm(Weight ~ Age + Height, data = dataset)
This predicts the effect of Age and Height on Weight

2. Multi Linear Regression (One numeric and one categorical predictor)
Age and Sex
mode2 <- lm(Weight ~ Age + Sex, data = dataset)
This predicts the effect of Age and Sex on weight

3. Multi Linear Regression (Effect Modification)
This shows if the regression line is parallel 
mode3 <- lm(Weight ~ Age * Sex, data = dataset)

## Software
R Programming Language
Base R Statistical Functions

## Skills Demonstrated
Data inspection and preparation
Descriptive statistics
visualization
Multi linear regression analysis
Interpretation of numerica predictors
Interpretation of categorical predictors
Statistical inference

## Learning Outcome
This project illustrate the use of multi linear regression of different type
