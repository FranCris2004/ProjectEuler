
 function primeFactors(num::Integer)::Tuple
    factors = Vector(Integer[])

    i = 2
    while num >= i
        if num % i == 0
            append!(factors, i)
            num /= i
        else
            i += 1
        end
    end

    return Tuple(factors)
end

for i in range(1, 10)
    println(primeFactors(10003210421))
end
