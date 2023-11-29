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

local primes = PrimeFactors(600851475143)

if primes == nil then
    os.exit(-1)
end

print(primes[#primes])
