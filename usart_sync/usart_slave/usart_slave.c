#include<htc.h>
#include<pic.h>
#include"lcd.h"
__CONFIG(0x3a3b);
#define _pic16f877a_
void usart_slave_ini_rx()
{SYNC=1;
SPEN=1;
CSRC=0;
CREN=1;
//TXEN=1;
}
void usart_slave_ini_tx()
{SPBRG=0x00;
SPEN=1;
SYNC=1;
CSRC=0;
TXEN=1;



}

unsigned char usart_rx()
{unsigned char y; 
while(RCIF==0);

y=RCREG;
return y;
}
void usart_tx(unsigned char x)
{TXREG=x;
	
while(TXIF==0);
	TXIF=0;

	}
void main()
{int i=0;
TRISD=0x00;
PORTD=0;
//usart_slave_ini_rx();
lcd_init();
usart_slave_ini_tx();
while(1)
{
//lcd_data(usart_rx());
usart_tx('a');
//for(i=0;i<5000;i++);

}
}