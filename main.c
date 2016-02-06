#include "T112_HW05_2.h"

int main()
{

    int x, y, z;
    int *p_min, *p_mid, *p_max;
    while (3 == scanf("%d %d %d", &x, &y, &z)) {
        p_max = &x;
        p_mid = &y;
        p_min = &z;
        printf("BEFORE: x, y, z = %d, %d, %d\n", x, y, z);
        max_mid_min(&p_max, &p_mid, &p_min);
        printf("AFTER: x, y, z = %d, %d, %d\n", x, y, z);
        printf("p_max p_mid p_min = %d, %d, %d\n\n", *p_max, *p_mid, *p_min);
    }

    return 0;
}






