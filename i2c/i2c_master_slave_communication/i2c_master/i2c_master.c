#include<htc.h>
#include<pic.h>

void i2c_master_ini()
{SSPCON=0x28;




}
void i2c_start()
{SSPCON2=0x01;
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
while(SSPIF==0);
SSPIF=0;
}
unsigned char i2c_read()
{
SSPCON2=0x08;
while(SSPIF==0);
PORTD=0x0f;
SSPCON2=0x10;
SSPIF==0;
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
PORTD=0x00;

for(i=0;i<500;i++);
i2c_master_ini();
i2c_start();
i2c_write(0x03);
PORTD=i2c_read();
for(i=0;i<500;i++);

PORTD=i2c_read();
for(i=0;i<500;i++);

PORTD=i2c_read();
for(i=0;i<500;i++);
PORTD=i2c_read();
for(i=0;i<500;i++);





while(1);
}