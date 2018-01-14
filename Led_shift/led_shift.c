#include<pic.h>
#include<htc.h>
void _delay_ms(long int x);
int main()
{int i=0;
TRISA=0;
TRISB=0;
TRISC=0;
TRISD=0;

TRISE=0;
while(1)
{
for(i=0;i<8;i++)
{
PORTA=1<<i;
PORTB=1<<i;
PORTC=1<<i;
PORTD=1<<i;
PORTE=1<<i;
_delay_ms(10000);
}
}
}
void _delay_ms(long int x)
{
while(x--);


}
