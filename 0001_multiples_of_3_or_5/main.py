
num = int(input("Max number: "))
sum = 0

for i in range(0, num, 1):
    if i % 3 == 0 or i % 5 == 0:
        sum += i

print("Result:", sum)
