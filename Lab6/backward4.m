% backward4.m
% Solves a 4x4 upper triangular system A*x = b using backward substitution
function x = backward4(A,b)
    n = length(b);
    x = zeros(n,1);
    x(n) = b(n)/A(n,n);
    for i = n-1:-1:1
        x(i) = (b(i) - A(i,i+1:n)*x(i+1:n)) / A(i,i);
    end
end
