function d = mydot(u, v)
% mydot: Computes the dot product of two vectors u and v
% Adds error checking for valid vector inputs and matching dimensions

% Check if both inputs are vectors
if ~(isvector(u) && isvector(v))
    error('Both inputs must be vectors');

% Check if dimensions match exactly
elseif ~isequal(size(u), size(v))
    error('Vectors must be the same size and shape.');

else
    % Ensure dot product directly
    d = sum(u.* v);
end
end
