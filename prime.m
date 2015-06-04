function b = prime(i)

b = 1;
for d = 2:(i - 1)
    if mod(i, d) == 0
        b = 0;
    end
end