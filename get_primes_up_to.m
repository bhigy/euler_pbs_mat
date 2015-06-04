function p = get_primes_up_to(max_value)

if max_value < 2
    clear p;
    return;
end

p = 2;
for n = 3:max_value
    prime = 1;
    for i = 1:length(p)
        if mod(n, p(i)) == 0
            prime = 0;
            break
        end
    end
    if prime == 1
        p = [p n];
    end
end