// main.c (Largest Palindrome Product)

#include <stdio.h>

long flipLong(long num)
{
    register long reg = 0;
    register char isNegative = 0;

    if (num == 0)
        return 0;
    
    if (num < 0)
    {
        num = -num;
        isNegative = 1;
    }

    while (num > 0)
    {
        reg = reg * 10 + num % 10;
        num /= 10;
    }

    return isNegative ? -reg : reg;
}

int isPalindrome(long num)
{
    if (num == flipLong(num))
        return 1;

    return 0;
}

int main()
{
    register long largest = 0;
    register long temp = 0;

    for (size_t i = 0; i < 1000; i++)
    {
        for (size_t j = 0; j < 1000; j++)
        {
            temp = j * i;
            
            if (temp > largest)
                if (isPalindrome(temp))
                    largest = temp;
        }
    }

    printf("%ld\n", largest);

    return 0;
}
