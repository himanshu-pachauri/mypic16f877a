#include<htc.h>
__CONFIG(0x3a3b);
#define _pic16f877_
void timer2_ini()
{TMR2=0x00;
T2CON=0x04;
TMR2ON=1;


}
void timer2()
{
while(TMR2IF==0);
TMR2IF=0;

PORTB=0xff;

}
void main()
{TRISD=0x00;
TRISB=0;
PORTD=0x00;
timer2_ini();
while(1)
{
PORTD=~PORTD;
timer2();


}

}
