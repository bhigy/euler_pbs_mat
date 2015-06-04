function b = is_palindromic(x)

str = num2str(x);
i = 1;
l = length(str);
i_max = l / 2;
for i = 1:i_max
    if str(i) ~= str(l - i + 1)
        b = 0;
        return;
    end
end
b = 1;