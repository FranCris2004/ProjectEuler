
function CollatzSequenceLenth(num)
    if type(num) ~= "number" then
        return nil
    end

    if num <= 1 then
        return nil
    end

    local count = 0
    while num ~= 1 do
        if num % 2 == 0 then
            num = num / 2
        else
            num = 3 * num + 1
        end

        count = count + 1
    end

    return count
end

function PrintCollatzSequence(num)
    if type(num) ~= "number" then
        return nil
    end

    if num <= 1 then
        return nil
    end

    while num ~= 1 do
        if num % 2 == 0 then
            num = num / 2
        else
            num = 3 * num + 1
        end

        print(num)
    end
end

local function solution()
    local max = 0
    local num = 0
    local aux = 0

    for i = 2, 1e6 do
        aux = CollatzSequenceLenth(i)
        
        if aux > max then
            max = aux
            num = i
        end
    end

    return num
end

Solution = solution()
PrintCollatzSequence(Solution)
print(Solution)
