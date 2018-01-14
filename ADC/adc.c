#include<htc.h>
#include<pic.h>
#include"lcd.h"
__CONFIG(0x3a3b);
#define _PIC16f877a_;
void adc_ini()
{
ADCON1=0x80;
ADCON0=0x01;
}

int adc_read()
{int i=0;
ADCON0=0x01|(1<<2);
while((ADCON0&0x04)==1);
i=(ADRESH<<8)|(ADRESL);
return i;
}
void main()
{TRISB=0x00;
	lcd_init();
	adc_ini();
PORTB=0x00;
	while(1)
	{
lcd_integer(adc_read());
lcd_command(0x01);
	
	
	}



}
