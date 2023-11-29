// main.c (Special Pythagorean Triplet)

#include <stdio.h>

int main()
{
    for (register size_t c = 2; c < 1000; c++)
        for (register size_t b = 1; b < c; b++)
            for (register size_t a = 0; a < b; a++)
                if (a*a + b*b == c*c)
                    if (a + b + c == 1000)
                        printf("a = %lu\nb = %lu\nc = %lu\nproduct = %lu\n", a, b, c, (a * b * c));
    
    return 0;
}