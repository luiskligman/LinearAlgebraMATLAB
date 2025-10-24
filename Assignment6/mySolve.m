% mySolve.m
% Luis Kligman
% Solves Ax = b using LU factorization and substitution

function x = mySolve(A, b)
    [L, U] = MYLU(A);   % uses your MYLU.m from previous lab
    y = forward(L, b);
    x = backward(U, y);
end
