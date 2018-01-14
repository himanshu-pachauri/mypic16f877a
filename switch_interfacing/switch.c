#include<htc.h>
__CONFIG(0x3a3f);
#define PIC16f877a;
int main(void )
{TRISE=0x07;
TRISB=0xff;
PORTB=0x00;
while(1)
{
if((PORTE&0x01)==1)
{
PORTB=0xff;

}
else PORTB=0x00;



}









}