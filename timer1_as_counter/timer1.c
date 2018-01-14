#include<htc.h>
__CONFIG(0x3a3b);
#define _pic16f877a_
void timer1_ini()
{
T1CON=0x13;//timer1 in counter mode
}

void main()
{
TRISB=0x00;
	TRISD=0x00;
	TMR1H=0x00;
	TMR1L=0x00;
	timer1_ini();
	while(1)
	{
	PORTB=TMR1H;
PORTD=TMR1L;	
	
	}


}