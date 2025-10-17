% Lab 5 Assignment --- Luis Kligman
% Lower Upper Decomposition without pivoting

clear;
clc;
close all;

% Input Matrix A
A = [1 2 7 1 8 2 8;
     3 7 22 11 26 14 28;
     2 5 16 15 27 12 24;
     8 22 66 77 117 66 107;
     3 15 35 101 93 85 86;
     8 18 65 62 151 64 130;
     6 16 49 62 133 96 173];

% Call LU function
[L, U] = myLU(A);

% Display results
disp('L =');
disp(L);
disp('U =');
disp(U);
disp('A - L*U =');
disp(A - L*U);


function [L, U] = myLU(A)
    % Performs LU decomposition without pivoting
    % Input: A - square matrix
    % Output: L - lower triangular matrix
    %         U - upper triangular matrix

    n = size(A,1);  % number of rows/columns
    L = eye(n);  % initialize L as identity matrix
    U = zeros(n);  % initalize U as zero matrix

    for i = 1:n
        % Compute the i-th row of U
        for j = i:n
            U(i,j) = A(i,j) - L(i,1:i-1) * U(1:i-1,j);
        end
        % Compute the i-th column of L
        for j = i+1:n
            L(j,i) = (A(j,i) - L(j,1:i-1) * U(1:i-1,i)) / U(i,i);
        end
    end
end