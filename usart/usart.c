#include<htc.h>
#include<pic.h>
#include"lcd.h"
__CONFIG(0x3a3b);
#define _pic16f877a_;
void usart_ini()
{
TXSTA=0x20;
BRGH=1;
RCSTA=0x80;
SPBRG=25;

CREN=1;
}
unsigned char  usart_rx()
{while(RCIF!=1);
RCIF=0;
return RCREG;




}
void usart_tx(unsigned char y)
{
TXREG=y;
while(TXIF==0);
TXIF=0;

}
void main()
{TRISD=0x00;
int i;
lcd_init();
usart_ini();
while(1)
{
//usart_tx('A');////usart _tx
lcd_data(usart_rx());//usart_contineous recieve and print on lcd


}







}