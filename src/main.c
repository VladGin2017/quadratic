#include <stdio.h>
#include "functions.h"

int main()
{
        float a, b, c, d, x1, x2;
        printf("%s", "Введите a:\n");
        scanf("%f", &a);
        printf("%s", "Введите b:\n");
        scanf("%f", &b);
        printf("%s", "Введите c:\n");
        scanf("%f", &c);
        d = D(a, b, c);
        if (d < 0)
        {
             printf("Решения нет!\n");
        }
        else if (d == 0)
        {
             printf("Имеет один корень:\n");
             x1 = X(d, a, b, 1);
             printf("\n%f", x1);
        }
        else
        {
             printf("Ответ:\n");
             x1 = X(d, a, b, 1);
             x2 = X(d, a, b, -1);
             printf("\n%f", x1);
             printf("\n%f", x2);
        }
        return 0;
}


