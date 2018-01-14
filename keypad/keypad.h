#define keypad_ddr TRISB
#define keypad_port PORTB
unsigned char  keypad()
{
int i=0;
unsigned char key ;
unsigned char  key_no[]={0xee,0xde,0xbe,0x7e,  0xed,0xdd,0xbd,0x7d,  0xeb,0xdb,0xbb,0x7b, 0xe7,0xd7,0xb7,0x77};
//unsigned char symbol[]={789};

keypad_ddr=0x00;
keypad_port=0xf0;
while(keypad_port==0xf0); 
key=keypad_port;
keypad_ddr=0x00;
keypad_port=0x0f;
key|=keypad_port;
while(key!=key_no[i] && (i<16))
{
i++;
}

return i;

}

