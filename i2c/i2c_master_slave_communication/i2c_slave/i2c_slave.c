#include<htc.h>
#include<pic.h>

void i2c_master_ini()
{SSPCON=0x28;
}
void i2c_slave_ini()
{TRISC|=(1<<3)|(1<<4);
SSPCON=0x36;

SSPCON2=1<<7;
SSPADD=0x02;


}

void i2c_start()
{   SSPCON2=0x01;
    while(SSPIF==0);
    SSPIF=0;



}
void i2c_stop()
{

SSPCON2=(1<<2);

}
void i2c_write(unsigned char x)
{
SSPBUF=x;
CKP=1;
PORTD=0x00;

while(SSPIF==0);
PORTD=0xf0;

CKP=0;
SSPIF=0;
return;
}
unsigned char i2c_read()
{
while(SSPIF==0);

SSPIF==0;
return SSPBUF;
}
unsigned char i2c_read_last()
{
SSPCON2=0x08;
while(SSPIF==0);
SSPCON2=0x30;
SSPIF==0;
while(SSPIF==0);
SSPIF==0;
return SSPBUF;
}
void main()
{int i=0;
TRISD=0;
TRISB=0x00;
PORTB=0x00;
PORTD=0x00;
i2c_slave_ini();
PORTD=i2c_read();

i2c_write(0x05);
i2c_write(0x07);
i2c_write(0x10);
PORTD=0x00;
while(1);

}