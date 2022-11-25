function seed = ranNum(len, parity)

    randomizer = randi([1 9],len,1);
    i = 1;
    while i<=len
        randomizer(i,1) = randomizer(i,1) * (10 ^ (i-1));
        i = i + 1;
    end
    i = 1;
    seed = 0;
    while i<=len
        seed = seed + randomizer(i,1);
        i = i + 1;
    end

    if mod(seed, 2) == 0 && parity == "o"
        seed = seed + 1;
    elseif mod(seed, 2) == 1 && parity == "e"
        seed = seed + 1;
    end

    seed = cast(seed, "int64");
end
