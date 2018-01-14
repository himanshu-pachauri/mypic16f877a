#define lcd_ddr TRISD
#define lcd PORTD
#define rs 0
#define rw 1
#define en 2
void lcd_command(unsigned char x)
{int i=5000;
lcd=0xf0&x;
lcd&=~(1<<rs);
lcd&=~(1<<rw);
lcd|=(1<<en);
while(i--);
lcd&=~(1<<en);
i=5000;
lcd=(0x0f&x)<<4;
lcd&=~(1<<rs);
lcd&=~(1<<rw);
lcd|=(1<<en);
while(i--);
lcd&=~(1<<en);
}
void lcd_data(unsigned char x)
{int i=5000;
lcd=0xf0&x;
lcd|=(1<<rs);
lcd&=~(1<<rw);
lcd|=(1<<en);
while(i--);
lcd&=~(1<<en);
i=5000;
lcd=(0x0f&x)<<4;
lcd|=(1<<rs);
lcd&=~(1<<rw);
lcd|=(1<<en);
while(i--);
lcd&=~(1<<en);
}
void lcd_init()
{
lcd_ddr=0x00;
lcd_command(0x02);
lcd_command(0x28);
lcd_command(0x06);
lcd_command(0x0c);
lcd_data('A');
}
void lcd_string(unsigned char *p)
{
while(*p)
{
lcd_data(*p);
p++;
}
}
void lcd_integer(long int x)
{long int y=x;
long int m=1;
while(y>9)
{
y/=10;
m*=10;
}
while(m>0)
{
lcd_data((x/m)+48);
x=x%m;

m/=10;
}
}
void lcd_float(double f)
{
lcd_integer((int)f);
lcd_data('.');
lcd_integer((f -  (int) f) *1000 );

}

void lcd_pattern(unsigned char *p)
{int i=0;
lcd_command(0x40);
for(i=0;i<8;i++)
{
lcd_data(*(p+i));
}
}


