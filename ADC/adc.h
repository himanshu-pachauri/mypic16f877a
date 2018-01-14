#include<htc.h>
#include"lcd.h"
__CONFIG(0x3a3b);
#define _PIC16f877a_;
void adc_ini()
{
ADCON1=0x80;
ADCON0=0x01;
}

void adc_read()
{



}
void main()
{TRISB=0x00;
	lcd_ini();
	adc_ini();
	while(1)
	{
	
	
	
	
	
	}



}
