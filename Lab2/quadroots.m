function [r1, r2] = quadroots(a, b, c)
% quadroots: Solves ax^2 + bx + c = 0 for real roots

% Inputs:
%  a, b, c - coefficients of a quadratic equation

% Outputs:
%  r1, r2 - the two roots of the equation

% Compute discriminant
D = b^2 - 4*a*c;

% Use quadratic formula
r1 = (-b + sqrt(D)) / (2*a);
r2 = (-b - sqrt(D)) / (2*a);

end