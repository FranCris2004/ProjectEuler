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

local function NextPrime(prime)
    if type(prime) ~= "number" then
        return nil
    end

    if not IsPrime(prime) then
        return nil
    end

    local next_prime = prime + 1
    while true do
        if IsPrime(next_prime) then
            return next_prime
        end
        next_prime = next_prime + 1
    end
end

local function PrimeN(num)
    local prime = 2

    if type(num) ~= "number" then
        return nil
    end

    if num < 1 then
        return nil
    end

    if num == 1 then
        return prime
    end

    for i = 1, num - 1 do
        prime = NextPrime(prime)
    end

    return prime
end

print(PrimeN(10001))
