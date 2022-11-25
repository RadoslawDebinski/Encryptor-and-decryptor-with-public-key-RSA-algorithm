function answer = millRabTest(d, n)
    %a = vpa(rand([2, n-2]));
    %a < n-2
    len = length(n);
    while true
        a = randNum(len, "a");
        a = cast(a, "int64");
        if a < n-2
            break
        end
    end
    
    x = powermod(a, d, n);

    if x==1 || x == n-1
        answer = true;
        return
    end

    while d ~= n-1 
        x = mod(x*x, n);
        d = d*2;
        if x == 1 
            answer = false;
            return
        end
        if x == n-1
            answer = true;
            return
        end
    end
    answer = false;
    return
end