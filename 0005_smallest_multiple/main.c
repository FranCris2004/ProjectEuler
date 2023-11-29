// main.c (Smallest Multiple)

#include <stdio.h>

// if a number x is divisible by 2520 then x is divisible by all of the numbers from 1 to 10

int main()
{
    long x = 2520;

fail:

    x++;

    if (x % 2520 == 0)
    {
        for (size_t i = 11; i <= 20; i++)
            if (!(x % i == 0))
                goto fail;

        goto success;
    }

    goto fail;

success:

    printf("%ld\n", x);

    return 0;
}
