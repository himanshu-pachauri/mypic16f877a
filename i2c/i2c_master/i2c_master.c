#include<htc.h>
#include<pic.h>
#include"lcd.h"
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
SSPCON2=0x08;
while(SSPIF==0);
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
void lcd_print2(unsigned char x)
{lcd_data('0' +(x>>4));
lcd_data('0'  + (x&0x0f));

}

void print_day(unsigned char x)
{x=x&0x07;
switch(x)
{
case 0:
lcd_string("SUN");
break;
case 1:
lcd_string("MON");
break;
case 2:
lcd_string("TUE");
break;
case 3:
lcd_string("WED");
break;
case 4:
lcd_string("THU");
break;
case 5:
lcd_string("FRI");
break;
case 6:
lcd_string("SAT");
break;


}



}
void lcd_print(unsigned char a[])
{
lcd_command(0x80);
lcd_string("TIM ");
lcd_print2(a[2]);
lcd_data(':');
lcd_print2(a[1]);
lcd_data(':');
lcd_print2(a[0]);
lcd_data(' ');
print_day(a[3]);
lcd_command(0xc0);
lcd_string("DAT ");
lcd_print2(a[4]);
lcd_data('/');
lcd_print2(a[5]);
lcd_data('/');
lcd_print2(a[6]);
lcd_command(0x80);

}


void main()
{int i;
unsigned char a[7]={0x56,0x04,0x04,0x02,0x05,0x06,0x07}; 
lcd_init();

i2c_ini();
i2c_start();
i2c_write(0xd0);
i2c_write(0x00);
for(i=0;i<7;i++)
{
i2c_write(a[i]);
}
i2c_stop();

while(1)
{i2c_start();
i2c_write(0xd0);
i2c_write(0x00);
i2c_stop();
i2c_start();
i2c_write(0xd1);
for(i=0;i<7;i++)
{
  if(i==6)
  a[i]=i2c_read_last();

  else a[i]=i2c_read();//sec
}

i2c_stop();
lcd_print(a);

}
while(1);

}