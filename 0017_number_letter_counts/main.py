import re

def numToWords(num: int):
    words = (
        ( "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ),
        ( "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ),
        ( "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ),
    )

    word = ""

    if num < 0:
        word += "minus "
        num *= -1

    n = str(num)

    match len(n):
        case 1:
            word += words[0][int(n[0])]
        case 2:
            if n[0] == "1":
                word += words[1][int(n[1])]
            else:
                word += words[2][int(n[0]) - 1] + ("" if (n[1] == "0") else " " + numToWords(int(n[1])))
        case 3:
            word += words[0][int(n[0])] + " hundred" + ("" if (n[1:3] == "00") else " and " + numToWords(int(n[1:3])))
        case 4:
            word += words[0][int(n[0])] + " thousand" + ("" if (n[1:4] == "000") else + numToWords(int(n[1:4])))
        
    return word

def countAlpha(string: str):
    return len(re.findall(r"[a-zA-Z]",string))

words = ""
num = 5
for i in range(-1, num + 1):
    word = numToWords(i)
    words += " " + word
    print(word)

print(countAlpha(words))
