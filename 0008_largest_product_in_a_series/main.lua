local file = io.open("0008_largest_product_in_a_series/series", "r")

if file == nil then
    os.exit(-1)
end

local series = file:read("a")

file:close()

local adjacents = 13

local nums = {}
local mult = 1
local max = 0
local count = 1
for c in string.gmatch(series, "%d") do
    mult = 1
    nums[count] = tonumber(c)

    if count == adjacents then
        count = 1
    else
        count = count + 1
    end

    for i = 1, #nums do
        mult = mult * nums[i]
    end

    if mult > max then
        max = mult
    end
end

print(max)
