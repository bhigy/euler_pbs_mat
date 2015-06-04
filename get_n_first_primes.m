function p = get_n_first_primes(n)

if n < 2
    clear p;
    return;
end

p = [2 3];
next = 5;
length = 2;
step = 0;
while length < n
    is_prime = 1;
    sq = sqrt(next);
    for i = 1:length
        if p(i) > sq
            break;
        end
        if mod(next, p(i)) == 0
            is_prime = 0;
            break
        end
    end
    if is_prime == 1
        p = [p next];
        length = length + 1;
    end
    if step == 0
        next = next + 2;
        step = 1;
    else
        next = next + 4;
        step = 0;
    end
end