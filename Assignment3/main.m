% main.m - Test script for mybinomial
fprintf('Test 1: n = 10, k = 2\n');
disp(mybinomial(10, 2));

fprintf('\nTest 2: n = 5, k = -3\n');
try 
    disp(mybinomial(5, -3));
catch ME
    disp(['Error: ', ME.message]);
end

fprintf('\nTest 3: n = 9, k = 13\n');
try 
    disp(mybinomial(9, 13));
catch ME
    disp(['Error: ', ME.message]);
end
