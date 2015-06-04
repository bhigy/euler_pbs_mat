function s = sum_divisible_by(i, max)

s = ceil(max / i);
s = i * s * (s + 1) / 2;