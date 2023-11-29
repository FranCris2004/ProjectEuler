
-- returns a table with the prime numbers smallers than "max". Use the sieve of Eratosthenes algorithm
local function PrimesMax(max)
    local primes = {}
    local aux = {}

    if type(max) ~= "number" then
        return nil
    end

    if max <= 1 then
        return nil
    end

    if max == 2 then
        return {2}
    end

    for i = 2, max, 1 do
        aux[i] = i
    end

    local j = 0
    for i = 2, math.sqrt(max), 1 do
        if aux[i] ~= 0 then
            j = i * i
            while j <= max do
                aux[j] = 0
                j = j + i
            end
        end
    end

    j = 1
    for i = 2, max, 1 do
        if aux[i] ~= 0 then
            primes[j] = aux[i]
            j = j + 1
        end
    end

    return primes
end

local function Sum(list)
    if type(list) ~= "table" then
        return nil
    end

    if #list == 0 then
        return nil
    end

    if type(list[1]) ~= "number" then
        return nil
    end

    local sum = 0
    for i = 1, #list do
        sum = sum + list[i]
    end

    return sum
end

print(Sum(PrimesMax(2e6)))
