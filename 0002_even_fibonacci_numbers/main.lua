local max = 4e6
local aux = {1, 2}
local sum = aux[2]

while true do
    aux[3] = aux[1] + aux[2]
    aux[1] = aux[2]
    aux[2] = aux[3]

    if aux[3] >= max then
        break
    end

    if aux[3] % 2 == 0 then        
        sum = sum + aux[3]
    end
end

print(sum)

return 0
