#include <stdio.h>
#include "main.h"
#include "general.h"
#include "module1.h"

int main(void)
{
    printf("Das ist das Hauptprogramm namens %s (Version %.1f) .\n", MAIN_NAME, VERSION);
    function1() ;
    return 0;
}
