function total = vectorsum(v)
% vectorsum: Sums all elements in the input vector v

% Input:
%  v - a vecotr of any length

% Output:
%  total - the sum of all elements in v

% Initialize the total sum
total = 0;

% Loop through each element of the vector and add it to total
for i = 1:length(v)
    total = total + v(i);
end

end