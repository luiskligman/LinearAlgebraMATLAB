% Assignment 4 -- Luis Kligman

% Define b
b = [1; 3; 7];

% Run 100 trials
for i = 1:100
    M = rand(3,3);
    x = M\b;
end

% Explanation:
% A random 3x3 real matrix is invertible with probability 1.
% Therefore, M\b almost always has a product. If M is singular (det = 0)
% MATLAB warns, but this occurs with probability zero in practice