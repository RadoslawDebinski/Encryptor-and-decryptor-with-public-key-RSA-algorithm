function [n, e, d] = keysGenerator()
    %digits(100)
    %2 random prime numbers with same length
    while true
        p = randNum(7, "o");
        if primeCheck(p, 1)
            break
        end
    end

    while true
        q = randNum(7, "o");
        if primeCheck(q, 1)
            break
        end
    end

    n = p * q;
    %Euler function for n
    enFun = (p-1)*(q-1);
    %e from 1 to euFun which is relatively prime
    while true
        e = randi([1 enFun]);
        e = cast(e, "int64");
        if coprime(enFun, e) ~= 1
            break
        end
    end

    % d = (e^-1) mod enFun
    % c = powermod(a,b,m) == c = (a^b) mod m
    d = cast(powermod(e, -1, enFun),"int64");
    % d = (e^-1) mod enFun
end














