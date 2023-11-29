// main.c (Large prime factor)

#include <stdio.h>

const unsigned long num = 600851475143;

unsigned long isPrime(unsigned long n)
{
    if (n == 0 || n == 1)
        return 0;

    for (unsigned long int i = 2; i < (n / 2); i++)
        if (n % i == 0)
            return 0;

    return 1;
}

unsigned long maxPrime(unsigned long n)
{
    if (n == 0 || n == 1)
        return 0;

    if (isPrime(n))
        return n;

    for (unsigned int i = n / 2; i > 2; i--)
        if (n % i == 0)
            if (isPrime(i))
                return i;
}

int main()
{
    printf("%lu\n", maxPrime(600851475143));

    return 0;
}
