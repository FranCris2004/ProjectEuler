
def factorial(num: int):
    if (num < 0):
        raise ValueError("Out of range")
    
    if (num in (0, 1)):
        return 1

    fact = 1
    for i in range(1, num + 1):
        fact *= i

    return fact

sum = 0
for digit in str(factorial(100)):
    sum += int(digit)

print(sum)
