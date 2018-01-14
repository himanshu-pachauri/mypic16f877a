#include<htc.h>
#include<pic.h>
__CONFIG(0x3a3b);
#define _pic16f877a_;
void spi_master_ini()
{
SSPSTAT=0x80;
SSPCON=(1<<5);
TRISC&=~((1<<3)|(1<<5));



}
unsigned char spi_write(unsigned char x)
{
SSPBUF=x;
while(SSPIF==0);
SSPIF=0;
return SSPBUF;

}
unsigned char spi_read()
{SSPBUF=0xff;//dummy 
while(SSPIF==0);
SSPIF=0;
return SSPBUF;
}
void main()
{TRISD=0x00;
PORTD=0x00;
int i=0;
spi_master_ini();
while(1)
{for(i=0;i<5000;i++);
PORTD=spi_write('B');


}

} 