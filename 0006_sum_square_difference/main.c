// main.c (Sum Square Difference)

#include <stdio.h>

#define SUM

int main()
{
    unsigned long sumSqr = 0, sqrSum = 0, sumSqrDiff = 0;

    for (size_t i = 0; i <= 100; i++)
    {
        sumSqr += i*i;
        sqrSum += i;
    }

    sqrSum *= sqrSum;

    printf("sum of the square : %lu\n", sumSqr);
    printf("square of the sum : %lu\n", sqrSum);
    printf("difference : %lu\n", (sqrSum - sumSqr));

    return 0;
}
