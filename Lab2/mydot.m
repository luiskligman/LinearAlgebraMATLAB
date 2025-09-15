function d = mydot(u, v)
% mydot: Computes the dot product of two vectors u and v

% Inputs:
%  u - first vector
%  v - second vector (same size as u)

% Output:
%  d - scalar result of dot product


% Initialize the dot product result
d = 0;

% Loop through each element and multiply, then accumulate
for i = 1:length(u)
    d = d + u(i) * v(i);
end

end