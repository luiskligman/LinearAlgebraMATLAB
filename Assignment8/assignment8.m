% Assignment 8 --- Luis KLigman

function [isDiag, P, D, v] = assignment8(A)
% CHECKDIAGONALIZABLE  Test real diagonalizability and build orthonormal eigenbasis.
% Returns:
%   isDiag : logical, true if diagonalizable over R by the assignment's test
%   P      : orthonormal eigenvectors (columns), ordered by ascending eigenvalue
%   D      : diagonal matrix of eigenvalues (matching columns of P)
%   v      : sorted eigenvalues (with repeats)

% Step 1–2: eigenvalues
p = poly(A);
v = sort(round(roots(p)));

% Step 3–6: build P by blocks of eigenspaces in ascending eigenvalue order
vals = unique(v);
P = [];

for i = 1:numel(vals)
    lambda = vals(i);

    % Step 3: eigenspace basis via null(A - lambda*I)
    B = A - lambda * eye(size(A));
    E = null(B);                       % columns span E_lambda

    % Step 4: multiplicity check
    algMult = sum(v == lambda);
    geoMult = size(E, 2);
    if geoMult ~= algMult
        isDiag = false;
        P = [];
        D = [];
        error('Matrix is not diagonalizable: lambda = %g (geo=%d, alg=%d).', ...
              lambda, geoMult, algMult);
    end

    % Step 5: orthonormalize this eigenspace using grams.m
    Q_lambda = grams(E);

    % Step 6: append to P
    P = [P, Q_lambda];
end

% Step 7: diagonal matrix D with eigenvalues (respecting multiplicity)
D = diag(v);

% Step 8: verification
isOrthonormal = norm(P' * P - eye(size(P, 2))) < 1e-10;
isDiagonalization = norm(A - P * D * P') < 1e-8;

isDiag = isOrthonormal && isDiagonalization;
end