
local num = 1000
local nums = {}

for i = 1, num do
    if i % 3 == 0 or i % 5 == 0 then
        table.insert(nums, i)
    end
end

local sum = 0
for i = 1, #nums do
    sum = sum + nums[i]
end

print(sum)
