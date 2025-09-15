clc;
close all; 
clear all;

% TESTING FOR SUMDIFFERENCE
% Test with n = 10
[n1, s1, d1] = sum_difference(10);
fprintf('n = 10: Square of sum = %d, Sum of squares = %d, Difference = %d\n', n1, s1, d1);


% TESTING FOR VECTORSUM
% Test 1: Simple integer vector
u = [2 8 3 4 9 10];
s1 = vectorsum(u);
fprintf('Sum of u = %d\n', s1);

% Test 2: Linearly spaced values
x = linspace(0, 1, 300);
s2 = vectorsum(x);
fprintf('Sum of x = %.4f\n', s2)


% TESTING FOR MYDOT
% Test vectors
u = [1 2 3 4];
v = [2 4 6 8];

% Call custom dot function
d1 = mydot(u, v);

% Compare with MATLAB's built-in dot function
d2 = dot(u, v);

fprintf('mydot result = %d\n', d1);
fprintf('builtin dot result = %d\n', d2);


% TESTING FOR QUADROOTS
% Example 1: Two real roots
[r1, r2] = quadroots(1, -3, 2);
fprintf('Roots are: %.2f and %.2f\n', r1, r2);