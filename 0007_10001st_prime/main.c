// main.c (10001st Prime)

#include <math.h>
#include <stdlib.h>
#include <stdio.h>

long* eSieve(long max, long* __count)
{
    long* primes;

    if (max <= 0)
        return NULL;

    if (!__count)
        return NULL;

    primes = (long*)malloc((max + 1) * sizeof(long));

    if (!primes)
        return NULL;
    
    *__count = 0;

    for(register long i = 0; i <= max; i++)
        primes[i] = i;

    for (register long i = 2; (i*i) <= max; i++)
        if (primes[i])
            for(register long j = 2; j < max && (primes[i] * j) <= max; j++)
                primes[primes[i] * j] = 0;

    for(register long i = 0; i <= max; i++)
        if (primes[i])
        {
            primes[*__count] = primes[i];
            *__count += 1;
        }

    primes = (long*)realloc(primes, *__count * sizeof(long));

    return primes;
}

int main()
{
    long len;
    long* dest = eSieve(1000000, &len);

    printf("n = %ld\n", len);
    
    if (len >= 10001)
        printf("%ld\n", dest[10001]);

    return 0;
}
