% Luis Kligman --- Lab 8

function Q = grams(A)
% Perform the Gram-Schmidt process of the columns of an arbitrary
% sqaure matrix A and returns a matrix Q whose columns are the 
% resulting orthonormal vectors.

[m,n] = size(A);  % Get the dimensions
Q = zeros(m, n);  % Create Q matrix of size m by n with all zeros

for i = 1:n
    v = A(:, i);

    for k = 1:i-1
        % subtract projections onto previous q's
        projection = (Q(:,k)' * A(:,i)) / (Q(:,k)' * Q(:,k)) * Q(:,k);
        v = v - projection;
    end
     % assign the orthogonalized column
    Q(:,i) = v;
end

% normalize each column to make Q orthonormal
for i = 1:n
    Q(:,i) = Q(:,i)/norm(Q(:,i));
end


