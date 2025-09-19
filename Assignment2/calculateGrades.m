function curved = calculateGrades(grades)

% Curves a vector of grades so that the new mean in 70

% Inputs:
%   Grades - a row or column vector of numeric grades
% Outputs:
%   curved - a vector of curved grades scaled to have mean 70

% Compute the mean using a for loop
total = 0;
n = length(grades);
for i = 1:n
    total = total + grades(i);
end
avg = total / n;

% Curve the grades so the new mean is 70
curved = (70 .* grades) ./ avg;

end