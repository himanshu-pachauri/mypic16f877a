#include<htc.h>
__CONFIG(0x3a3b);
#define _PIC16f877a_
void timer0_ini()///initialiaze as counter
{T0CS=1;
	T0SE=0;
	PSA=0;
	PS2=0;
	 PS1=0;/////prescler also affect the counter
	  PS0=0;
}
void main()
{TMR0=0x00;
timer0_ini();
	TRISB=0x00;
PORTB=0x00;

	while(1)
	{
	PORTB=TMR0;
	
	}
	


}