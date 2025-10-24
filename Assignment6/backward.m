% backward.m
% Luis Kligman
% Solves Ux = y for x using backward substitution
function x = backward(U, y)
    n = length(y);
    x = zeros(n,1);
    for i = n:-1:1
        x(i) = (y(i) - U(i,i+1:n)*x(i+1:n)) / U(i,i);
    end
end
