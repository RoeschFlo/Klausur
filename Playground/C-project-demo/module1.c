#include <stdio.h>
#include "module1.h"
#include "general.h"

int function1(void)
{
    printf("Das ist die Function1 aus Modul %s (Version %.1f) .\n", MODULE1_NAME, VERSION);
    int a ;
    if (a=2) printf ("ohoh") ;
    return 0;
}

