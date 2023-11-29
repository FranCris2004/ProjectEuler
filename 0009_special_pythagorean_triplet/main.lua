
local function IsPythTriplet(a, b, c)
    if type(a) ~= "number" or
    type(b) ~= "number" or
    type(c) ~= "number" then
        return nil
    end

    if not (a < b < c) then
        return false
    end

    if a^2 + b^2 == c^2 then
        return true
    end
    
    return false
end

for a = 1, 995 do
    for b = a + 1, 996 do
        for c = b + 1, 997 do
            if a + b + c == 1000 then
                if a^2 + b^2 == c^2 then
                    print("a: " .. a, "b: " .. b, "c: " .. c)
                    print("a * b * c = " .. a * b * c)
                    os.exit(0)
                end
            end
        end
    end
end

os.exit(-1)
