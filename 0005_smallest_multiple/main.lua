
-- returns the prime factors of a number
local function primeFactors(num)
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

local function factors(num)
    local factors = primeFactors(num)
    if factors == nil then
        return nil
    end

    table.insert(factors, 1, 1)
    if factors == nil then
        return nil
    end

    return factors
end

local function countMatch(list, match)
    local count = 0
    
    if type(list) ~= "table" then
        return nil
    end

    if #list == 0 then
        return nil
    end

    if type(list[1]) ~= type(match) then
        return nil
    end

    for i = 1, #list do
        if list[i] == match then
            count = count + 1
        end
    end

    return count
end

local how_many = 100
local facts = {}

for i = 1, how_many do
    facts[i] = factors(i)
end

for i = 1, #facts do
    io.write(i .. "\t")
    for j = 1, #facts[i] do
        io.write(facts[i][j])
        if j == #facts[i] then break end
        io.write(",")
    end
    io.write("\n")
end
