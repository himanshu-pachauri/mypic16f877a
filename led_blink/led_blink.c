#include<htc.h>
#include<pic.h>
#define _XTAL_FREQ 20e6
__CONFIG(0x3f3e);
#define PIC16f877a;
 
void delay_ms(long int x);
int main()
{
TRISA=0x00;
TRISB=0x00;
TRISC=0x00;
TRISD=0x00;
TRISE=0x00;
while(1)
{
PORTB=0xff;
PORTC=0xff;
PORTD=0xff;
PORTE=0xff;
PORTA=0xff;
delay_ms(10000);
PORTB=0;
PORTC=0;
PORTD=0;
PORTE=0;
PORTA=0;
delay_ms(10000);


}

}

void delay_ms (long int x)
{
while(x--)
{

}



}