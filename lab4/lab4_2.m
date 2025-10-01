% Lab Assignment 4 -- Luis Kligman

% System 2
% Equations: x - 7y = -11
%            5x + 2y = -18

% Plot to check visually
figure
ezplot(' (x+11)/7 ', [-10, 10])  % from x - 7y = -11 --> y = (x+11) / 7
hold on
ezplot(' (-5*x-18)/2 ', [-10, 10])  % from 5x + 2y = -18 --> y = (-5x - 18) / 2
title('System 2 Plot')
grid on  
hold off

% Write as matrix equation Ax = b
A = [1, -7; 5, 2];
b = [-11; -18];

% Solve with backslash operator
x = A \ b;

% Augmented matrix and rref
B = [1, -7, -11; 5, 2, -18];
rref(B)

% The system has one unique solution
% From rref, solution: -4, 1