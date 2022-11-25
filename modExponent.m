function [res] = modExponent(x, y, p)
    res = 1;
    x = mod(x, p);

    while y > 0
        if y & 1
            res = mod((res*x), p);
        end

        y = y / 2;
        x = mod(x * x, p);
    end
end