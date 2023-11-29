require("math")

--- @param n number
function Factorial(n)
    if type(n) ~= "number" then
        return nil
    end

    if n < 0 then
        return nil
    end

    if n == 0 then
        return 1
    end

    local factorial = 1.0
    for i = 1, n do
        factorial = factorial * i
    end

    return factorial
end

function BinomialCoefficient(n, k)
    if type(n) ~= "number" or type(k) ~= "number" then
        return nil
    end

    return Factorial(n) / (Factorial(k) * Factorial(n - k))
end

-- for a rectangular grid n.k
-- n is the X difference
-- k is the Y difference
function LatticePathsNumber(n, k)
    if type(n) ~= "number" or type(k) ~= "number" then
        return nil
    end

    return Factorial(n + k) / Factorial(n) / Factorial(k)
end

print(LatticePathsNumber(20, 20))
