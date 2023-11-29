
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

print(SumsqrSqrsumnDiff(100))
