function [squareOfSum, sumOfSquares, difference] = sum_difference(n)
% sum_difference: Computes square of the sum, sum of the squares, and
% their difference for the first n natural numbers.

% Inputs:
%  n - A positive integer 

% Outputs
%  squareOfSum  - (1 + 2 + ... + n)^2
%  sumOfSquares - 1^2 + 2^2 + ... + n^2
%  difference   - squareOfSum - sumOfSquares

% Compute the sum of first n natural numbers
sum_n = sum(1:n);  % Same as (1 + 2 + ... + n)

% Square of the sum
squareOfSum = sum_n^2;

% Sum of the squares of first n numbers
sumOfSquares = sum((1:n).^2);  % Uses element-wise square

% Difference 
difference = squareOfSum - sumOfSquares;

end

