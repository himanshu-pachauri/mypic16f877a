#include<htc.h>
__CONFIG(0x3A3B);
#define _pic16f877a_
void timer1_ini()
{TMR1H=0x00;
TMR1L=0x00;
T1CON=0x05;
}
void timer1_delay()
{while(TMR1IF==0);
TMR1IF=0;



}
void main()
{timer1_ini();
TRISD=0x00;
while(1)
{PORTD=~PORTD;
timer1_delay();




}




}