% Lab Assignment 4 -- Luis Kligman

% System 1
% Equations: -x + 2y = 3
%            2x - 4y = -6

% Plot to check visually
figure
ezplot(' (x+3)/2 ', [-10, 10])  % from -x + 2y = 3 --> y = (x+3) / 2
hold on
ezplot(' (2*x+6)/4 ', [-10, 10])  % from 2x - 4y = -6 --> y = (2x - 6) /4
title('System 1 Plot')
grid on  
hold off

% Write as matrix equation Ax = b
A = [-1, 2; 2, -4];
b = [3; -6];

% Solve with backslash operator
x = A \ b;

% Augmented matrix and rref
B = [-1, 2, 3; 2, -4, -6];
rref(B)

% Both equations overlap, so the system has infinitely many solutions
% From rref, solution: x = 2y - 3