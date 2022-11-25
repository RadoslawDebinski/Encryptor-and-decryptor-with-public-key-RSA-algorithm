function gcd = coprime(n1, n2)

    if (n1 > n2)
        r1 = n1;
        r2 = n2;
    else
        r1 = n2;
        r2 = n1;
    end

    while r2 > 0
        q = r1 / r2;
        r = r1 - q * r2;
        r1 = r2;
        r2 = r;
    end

    gcd = r1;
end

