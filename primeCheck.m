function answer = primeCheck(n, k)

    if n <= 1 || n == 4
        answer = false;
        return
    end
    if n <= 3
        answer = true;
        return
    end

    d = n-1;
    while mod(d, 2) == 0
        d = d/2;
    end
    
    i = 0;
    while i < k
        if ~millRabTest(d, n)
            answer = false;
            return
        end
        i = i+1;
    end
    answer = true;
end


