clear all;
close all;
clc;

A = [1 -5 -4 -9 5;
    -3 0 -4 -1 0;
    -8 -3 -9 -3 -2;
     8 -8 -6  9  5;
     4  7 -4  0 -3];
b = [-9; -4; 7; 6; -2];

x = mySolve(A, b)
