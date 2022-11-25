function inv = modInv(eFun, e)
    inv = 0;
    r1 = eFun;
    r2 = e;
    t1 = 0;
    t2 = 1;

    while r2 > 0
        q = r1 / r2;
        r = r1 - q * r2;
        r1 = r2;
        r2 = r;

        t = t1 - q * t2;
        t1 = t2;
        t2 = t;
    end

    if r1 == 1 
        inv = t1;
    end

    if inv < 0
        inv = inv + a;
    end

    return
end
