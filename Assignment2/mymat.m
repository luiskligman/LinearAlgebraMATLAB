function A = mymat(n)
% mymat - Creates an n x n matrix with 11, 22, ..., 11 * (n-1)
% on the subdiagonal

% Inputs:
%   n - size of the matrix (positive integer)
% Outputs:
%   A - n x n matrix with values on the subdiagonal

% Initialize an n x n zero matrix
A = zeros(n);  

% Fill the subdiagonal with 11, 22, ..., 11*(n-1)
for i = 2:n
    A(i, i-1) = 11 * (i - 1);
end

end