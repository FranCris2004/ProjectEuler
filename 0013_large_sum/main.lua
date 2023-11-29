
File = io.open("0013_large_sum/numbers")

function Sum(numbers)
    local result = 0
    local carry = 0

    for i = 1, #numbers do
        result = result + numbers[i]
    end

    if result >= 10 then
        carry = assert( tonumber(tostring(result):sub(#result, #result)) )
        result = result - carry
    end

    return {result = result, carry = carry}
end

if File == nil then
    os.exit(-1)
end

Numbers = {}
for line in File:lines("l") do
    table.insert(Numbers, tonumber(line))
end

Sum = 0
for i = 1, #Numbers do
    Sum = Sum + Numbers[i]
end

print(Sum)
