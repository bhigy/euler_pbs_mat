function f = largest_prime_factor(i)

rest = i;
if mod(rest, 2) == 0
    f = 2;
    rest = rest / 2;
    while mod(rest, 2) == 0
        rest = rest / 2;
    end
end
d = 3;
max = sqrt(rest);
while rest > 1 && d <= max
    if mod(rest, d) == 0;
        f = d;
        rest = rest / d;
        while mod(rest, d) == 0
            rest = rest / d;
        end
        max = sqrt(rest);
    end
    d = d + 2;
end
if rest ~= 1
    f = rest;
end