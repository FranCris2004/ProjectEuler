
local largest = 0

for i = 100, 999 do
    for j = i, 999 do
        local product = i * j
        if product == tonumber(string.reverse(product)) then
            product = product
            if product > largest then
                largest = product
            end
        end
    end 
end

print(largest)
