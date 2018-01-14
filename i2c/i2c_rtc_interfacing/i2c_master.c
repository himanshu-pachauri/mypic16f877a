#include<htc.h>
#include<pic.h>
void i2c_ini()
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


return SSPBUF;
}
void main()
{TRISD=0x00;
i2c_ini();
i2c_start();
i2c_write(0xd0);
i2c_stop();
//while(1);

}