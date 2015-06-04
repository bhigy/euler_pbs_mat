function d = decompose(n, p)

d = zeros(1, length(p));
rest = n;
for i = 1:length(p)
    while mod(rest, p(i)) == 0
        rest = rest / p(i);
        d(i) = d(i) + 1;
    end
    if rest == 1
        return
    end
end