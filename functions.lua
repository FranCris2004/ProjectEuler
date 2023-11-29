-- functions.lua

-- returns true if the number is prime or false if not it is
local function IsPrime(num)
    if num <= 1 then
        return false
    end

    for i = 2, num - 1 do
        if num % i == 0 then
            return false
        end
    end

    return true
end


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

-- returns the prime factors of a number
function PrimeFactors(num)
    local factors = {}

    if type(num) ~= "number" then
        return nil
    end

    local i = 2
    while num >= i do
        if num % i == 0 then
            table.insert(factors, i)
            num = num / i
        else
            i = i + 1
        end
    end

    return factors
end

function Factors(num)
    local factors = PrimeFactors(num)
    if factors == nil then
        return nil
    end

    table.insert(factors, 1, 1)
    if factors == nil then
        return nil
    end

    return factors
end

local function SumSqrN(num --[[non negative integer]])
    local sumsqr = 0

    if type(num) ~= "number" then
        return nil
    end

    for i = 1, num, 1 do
        sumsqr = sumsqr + i^2
    end

    return sumsqr
end

local function SqrSumN(num --[[non negative integer]])
    local sqrsum = 0

    if type(num) ~= "number" then
        return nil
    end

    for i = 1, num, 1 do
        sqrsum = sqrsum + i
    end

    return sqrsum^2
end

local function SumsqrSqrsumnDiff(num --[[non negative integer]])
    if type(num) ~= "number" then
        return nil
    end
    
    return (SumSqrN(num) - SqrSumN(num))
end
