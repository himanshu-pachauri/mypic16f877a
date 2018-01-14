#include<htc.h>
#include<pic.h>
__CONFIG(0x3a3b);
#define _pic16f877a_;
void interrupt_ini()
{   //TRISB|=(1<<0);
	INTEDG=1;
	INTE=1;
GIE=1;
}
 interrupt check()
{
if(INTF==1)
{INTF=0;
	PORTD=~PORTD;
}

}
void main()
{TRISD=0x00;
PORTD=0x00;
interrupt_ini();
while(1);



}