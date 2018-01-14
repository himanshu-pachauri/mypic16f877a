#include<htc.h>
__CONFIG(0x3a3f);
#define _pic16f877a_;
void timer0_ini()
{
T0CS=0;//internal clock cycle interfacing
PSA=0;//presclar is assigned to timer0 module not to wdt
PS2=1;//prescaler assigned 1:256 PS2:PS0=000
PS1=1;
PS0=1;

}
void timer0_delay()
{
TMR0=0x00;

while(TMR0IF=0x00);
TMR0IF=0;

}
void main()
{
TRISB=0x00;
while(1)
{

PORTB=~PORTB;

timer0_delay();
}




}
