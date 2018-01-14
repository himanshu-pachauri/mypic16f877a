#include<htc.h>
#include<pic.h>
__CONFIG(0x3a3b);
#define pic6f877a;
int main()
{
TRISB=0x00;
TRISE=0x07;
ADCON1=0x07;
while(1)
{
if((PORTE&0x01)==1)
{
PORTB=0xff;
}
else PORTB=0x00;
}





}