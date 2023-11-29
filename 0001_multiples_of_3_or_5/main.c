// main.c (Multiples of 3 or 5)

#include <stdlib.h>
#include <stdio.h>

int main()
{
    long int max, sum = 0;
    
    printf("Max number: ");
    scanf("%d", &max);

    for (long int i = 0; i < max; i++)
        if (i % 3 == 0 || i % 5 == 0)
            sum += i;

    printf("Result: %ld\n", sum);

    return 0;
}
