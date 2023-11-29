// main.c (Even Fibonacci numbers)

#include <stdio.h>

int main()
{
    register unsigned long int arr[] = {1, 0, 0, 0};

    do
    {
        if (arr[2] % 2 == 0)
            arr[3] += arr[2];
        
        arr[2] = arr[1] + arr[0];
        arr[0] = arr[1];
        arr[1] = arr[2];
    }
    while (arr[2] < 4E6);

    printf("sum = %lu\n", arr[3]);

    return 0;
}
