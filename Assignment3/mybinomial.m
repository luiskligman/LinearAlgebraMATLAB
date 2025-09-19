function result = mybinomial(n, k)
% Calculates binomial coefficient (n choose k) without
% built in functions

% Input validation
if n < 0 || k < 0
    error('n and k must be non-negative integers.');
elseif n < k
    error('n must be greater than or equal to k.');
end

% Factorial calculation using loops
nFact = 1;
for i = 2:n
    nFact = nFact * i;
end

kFact = 1;
for i = 2:k
    kFact = kFact * i;
end

nkFact = 1;
for i = 2:(n-k)
    nkFact = nkFact * i;
end

result = nFact / (kFact * nkFact);
end
