#include<htc.h>
#include<pic.h>
//#include"lcd.h"
__CONFIG(0x3a3b);
#define _pic16f877a_;
void usart_master_ini_as_tx()
{SPEN=1;
SPBRG=25;
SYNC=1;
CSRC=1;
TXEN=1;
}
void usart_master_ini_as_rx()
{
SPBRG=25;
SPEN=1;
SYNC=1;
CSRC=1;
CREN=1;
SREN=1;
TXEN=1;

}

unsigned char usart_rx()
{while(RCIF==0);
PORTD=RCREG;
}
void usart_tx(unsigned char x)
{TXREG=x;
	while(TXIF==0);
	TXIF=0;
}
void main()
{int i=0;
TRISD=0;
usart_master_ini_as_tx();
while(1)
{
usart_tx('B');
//for(i=0;i<2;i++);
}
}