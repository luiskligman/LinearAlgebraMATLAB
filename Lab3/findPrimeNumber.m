count = 0;  % Prime counter
candidate = 2;  % Number to test
n = 10001;  % Which prime we want

while count < n
    if isprime(candidate)
        count = count + 1;
    end
    candidate = candidate + 1;
end

% Subtract 1 because we increment after checking
prime_10001 = candidate - 1;

fprintf("The 10001st prime number is %d\n", prime_10001);
