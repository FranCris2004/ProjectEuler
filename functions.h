// functions.h

int isPrime(long n)
{
    if (n == 0 || n == 1)
        return 0;

    for (long i = 2; i < (n / 2); i++)
        if (n % i == 0)
            return 0;

    return 1;
}

long maxPrime(long n)
{
    if (n == 0 || n == 1)
        return 0;

    if (isPrime(n))
        return n;

    for (long i = n / 2; i > 2; i--)
        if (n % i == 0)
            if (isPrime(i))
                return i;
}

long flip(long num)
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
    if (num == flip(num))
        return 1;

    return 0;
}
