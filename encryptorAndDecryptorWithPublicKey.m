textBefore = 'Bardzo Bardzo Losowy Tekst';

while true
    while true
    [n,e,d] = keysGenerator();
        if d ~= 0
            break
        end
    end

    strASC = double(textBefore);

    encrypted = table;
    decrypted = table;

    i = 1;
    while i <= length(strASC)
        encrypted(1, i) = {cast(powermod(strASC(1,i), e, n),"int64")};
        i = i + 1;
    end

    j = 1;
    while j <= length(strASC)
        decrypted(1, j) = {cast(powermod(encrypted{1, j}, d, n),"int64")};
        j = j + 1;
    end

    k = 1;
    corrCharCoun = 0;
    textAfter = "";

    while k <= length(strASC)
        sign = char(decrypted{1, k});
        if decrypted{1, k} < 257
            corrCharCoun = corrCharCoun + 1;
        end
        textAfter = textAfter + string(sign);
        k = k + 1;
    end

    if corrCharCoun == length(strASC)
        break
    end
end

textBefore

n
e
d

encrypted
decrypted

textAfter

   






