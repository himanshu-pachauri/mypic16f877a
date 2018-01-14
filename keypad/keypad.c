#include<htc.h>
#include<pic.h>
#include"lcd.h"
#include"keypad.h"
__CONFIG(0x3f3b);
#define pic16f877a;


int main()
{lcd_init();
TRISD=0x00;
while(1)
lcd_integer(keypad());
}