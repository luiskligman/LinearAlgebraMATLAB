% main_lab6.m
clear all; close all; clc;

A = [-8  1  5  9;
     -6  9  3 -4;
     -5 -2  9 -9;
      8 -4  3 -3];

b = [-2; -7; 9; -5];

% LU factorization from previous lab
[L,U] = MYLU(A);

% Solve Ly = b  (forward substitution)
y = forward4(L,b);

% Solve Ux = y  (backward substitution)
x = backward4(U,y);

disp('Solution x = ');
disp(x);
