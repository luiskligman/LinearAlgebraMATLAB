% Test scripts for Assignment 2
close all;
clear;
clc;

% Test calculateGrades
% Test Case 1
score1 = [50, 80, 54, 85, 73, 67];
curved1 = calculateGrades(score1);
disp('Test 1 - calculateGrades([50, 80, 54, 85, 73, 67])');
disp(curved1);
% Test Case 2
score2 = rand(1,100) * 100;
curved2 = calculateGrades(score2);
disp('Test 2 - calculateGrades(rand(1,100) * 100)');
disp(curved2);

% Test mymat
% Test for n = 2
A2 = mymat(2);
disp('Test - mymat(2)');
disp(A2);

% Test for n = 6
A6 = mymat(6);
disp('Test - mymat(6)');
disp(A6);

% Test for n = 10
A10 = mymat(10);
disp('Test - mymat(10)');
disp(A10);



