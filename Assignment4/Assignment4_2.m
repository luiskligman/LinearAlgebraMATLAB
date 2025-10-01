% Problem 2 - Assignment 4
% Luis Kligman

% We want to solve for the unknowns in the magic square:
%   [2  x1  6
%    x2  5  x3
%    x4  x5  x6]

% Unknowns: x1, x2, x3, x4, x5, x6, and the magic sum M
% We set up equations for rows, columns, and diagonals.

A = [
  1 0 0 0 0 0 -1 ;   % x1 - M = -8  (row 1)
  0 1 1 0 0 0 -1 ;   % x2 + x3 - M = -5 (row 2)
  0 0 0 1 1 1 -1 ;   % x4 + x5 + x6 - M = 0 (row 3)
  0 1 0 1 0 0 -1 ;   % x2 + x4 - M = -2 (col 1)
  1 0 0 0 1 0 -1 ;   % x1 + x5 - M = -5 (col 2)
  0 0 1 0 0 1 -1 ;   % x3 + x6 - M = -6 (col 3)
  0 0 0 0 0 1 -1 ;   % x6 - M = -7 (diag 1)
  0 0 0 1 0 0 -1     % x4 - M = -11 (diag 2)
];

b = [-8; -5; 0; -2; -5; -6; -7; -11];

% Solve system (least squares because it's overdetermined)
u = A\b;  

% Extract solutions
x1=u(1); x2=u(2); x3=u(3); 
x4=u(4); x5=u(5); x6=u(6); 
M=u(7);

% Display completed magic square
magicSquare = [2 x1 6; x2 5 x3; x4 x5 x6]

% Comment:
% The completed magic square is:
%  2   7   6
%  9   5   1
%  4   3   8
% Each row, column, and diagonal adds up to 15.