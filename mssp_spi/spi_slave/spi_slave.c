#include<htc.h>
#include<pic.h>
__CONFIG(0x3a3b);
#define _pic16f877a_;
void spi_master_ini()
{
SSPSTAT=0x00;
SSPCON=(1<<5);
TRISC&=~((1<<3)|(1<<5));



}
void spi_slave_ini()
{
SSPSTAT=0x00;
SSPCON=(1<<5)|0x04;
TRISC|=(1<<3);
TRISC&=~((1<<5));



}

void spi_write(unsigned char x)
{
SSPBUF=x;
while(SSPIF==0);
SSPIF=0;



}
unsigned char spi_read()
{SSPBUF='A';//dummy 
while(SSPIF==0);
SSPIF=0;
return SSPBUF;
}
void main()
{spi_slave_ini();

int i=0;
TRISD=0;
PORTD=0;
while(1)
{

PORTD=spi_read();


}

} 