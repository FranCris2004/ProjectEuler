// main.c (Largest Product in a Series)

#include <stdlib.h>
#include <stdio.h>

#define CHAR_TO_INT(C) ((C) - '0')

void readNextChar(FILE* file, char *__buff, size_t len)
{
    for (size_t i = (len - 1); i > 0; i--)
        __buff[i] = __buff[i - 1];

    __buff[0] = getc(file);
}

int main()
{
    FILE* number;
    char* buff;
    size_t len;
    size_t aux;
    size_t max;

    fputs("how many adjacent digits? ", stdout);
    scanf("%d", &len);
    if (len == 0)
    {
        printf("invalid length = %lu!\n", len);
        return 1;
    }

    buff = (char*)malloc(len * sizeof(char));
    if (!buff)
    {
        puts("buff is null!");
        return 1;
    }

    number = fopen("./series", "r");
    if (!number)
    {
        puts("number is null!");
        return 1;
    }
    
    max = 0;

    for (size_t i = 0; i < len; i++)
        readNextChar(number, buff, len);
    
    while (1)
    {
        readNextChar(number, buff, len);

        if (buff[0] == '0')
        for (size_t i = 0; i < len; i++)
            readNextChar(number, buff, len);

        if (buff[0] == EOF)
            break;

        aux = CHAR_TO_INT(buff[0]);
        for (size_t i = 1; i < len; i++)
            aux *= CHAR_TO_INT(buff[i]);
        
        if (aux > max)
            max = aux;
    }

    printf("max = %lu\n", max);

    return 0;
}
