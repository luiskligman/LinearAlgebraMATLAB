% Assignment 9 --- Luis Kligman
clear all;
close all;
clc;

% Read the CSV file
data = readtable('Lab 9 - Real Estate Data.csv')
A = [ones(height(data),1), data.Bedrooms, data.Bathrooms, data.Floors, ...
    data.("Waterfront0_No1_Yes"), ...
    data.("Condition1_WornOut5_Excellent"), ...
    data.("Grade1_Poor13_Excellent"), ...
    data.("YearBuilt"), ...
    data.("LivingSpace_sq_ft__"), ...
    data.("LotSize_sq_Ft__")];

b = data.Price;

% Compute least-squares coefficients
x_hat = (A' * A) \ (A' * b);

% Display coefficients
disp('Regression Coefficients:')
disp(x_hat)

% Predict for the given example house
x_vec = [1, 6, 6, 2, 1, 4, 12, 1991, 4320, 24619];
predicted_price = x_vec * x_hat;
fprintf('Predicted Price = $%.2f\n', predicted_price);

% Compute predictions for all and find record closest to actual price
pred_all = A * x_hat;
[~, idx] = min(abs(pred_all - b));

fprintf('\nRecord Closest to Actual Price:\n');
disp(data(idx,:))
fprintf('Predicted = %.2f, Actual = %.2f\n', pred_all(idx), b(idx));


