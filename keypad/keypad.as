opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 5 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.c"
	dw 0x3f3b ;#
;BANK0:	_main->_lcd_integer
;BANK0:	_lcd_integer->___fttol
;BANK0:	___fttol->___ftmul
;COMMON:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK0:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;COMMON:	___fttol->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK1:	_lcd_integer->___fttol
;BANK0:	___fttol->___ftmul
;COMMON:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK0:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;COMMON:	___fttol->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;COMMON:	_lcd_integer->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK1:	_main->_lcd_integer
;BANK0:	_lcd_integer->___fttol
;BANK0:	___fttol->___ftmul
;COMMON:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK0:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;COMMON:	___fttol->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK1:	_lcd_integer->___fttol
;BANK0:	___fttol->___ftmul
;COMMON:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK0:	___ftmul->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;COMMON:	___fttol->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;COMMON:	_lcd_integer->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
	FNCALL	_main,_lcd_init
	FNCALL	_main,_keypad
	FNCALL	_main,_lcd_integer
	FNCALL	_lcd_integer,___aldiv
	FNCALL	_lcd_integer,___lmul
	FNCALL	_lcd_integer,_lcd_data
	FNCALL	_lcd_integer,___almod
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_init,_lcd_data
	FNROOT	_main
	global	keypad@F532
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.h"
	line	7

;initializer for keypad@F532
	retlw	0EEh
	retlw	0DEh
	retlw	0BEh
	retlw	07Eh
	retlw	0EDh
	retlw	0DDh
	retlw	0BDh
	retlw	07Dh
	retlw	0EBh
	retlw	0DBh
	retlw	0BBh
	retlw	07Bh
	retlw	0E7h
	retlw	0D7h
	retlw	0B7h
	retlw	077h
	global	_ADCON0
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_PSPIF
_PSPIF  equ     103
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_IBF
_IBF  equ     1103
	global	_IBOV
_IBOV  equ     1101
	global	_INTEDG
_INTEDG  equ     1038
	global	_OBF
_OBF  equ     1102
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSPIE
_PSPIE  equ     1127
	global	_PSPMODE
_PSPMODE  equ     1100
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	file	"keypad.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.h"
	line	7
keypad@F532:
       ds      16

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+16)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	ds	10
	global	lcd_integer@y
lcd_integer@y:	; 4 bytes @ 0xA
	ds	4
	global	lcd_integer@m
lcd_integer@m:	; 4 bytes @ 0xE
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??___almod
??___almod: ;@ 0x0
	global	??_keypad
??_keypad: ;@ 0x0
	global	??___lmul
??___lmul: ;@ 0x0
	global	??_lcd_command
??_lcd_command: ;@ 0x0
	global	??_lcd_data
??_lcd_data: ;@ 0x0
	global	??___aldiv
??___aldiv: ;@ 0x0
	ds	1
	global	??_lcd_init
??_lcd_init: ;@ 0x1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x1
	global	lcd_command@x
lcd_command@x:	; 1 bytes @ 0x1
	global	lcd_data@x
lcd_data@x:	; 1 bytes @ 0x1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x1
	ds	1
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x2
	global	lcd_data@i
lcd_data@i:	; 2 bytes @ 0x2
	global	lcd_command@i
lcd_command@i:	; 2 bytes @ 0x2
	ds	2
	global	?_lcd_init
?_lcd_init: ;@ 0x4
	global	?_lcd_command
?_lcd_command: ;@ 0x4
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_lcd_data
?_lcd_data: ;@ 0x0
	global	?___almod
?___almod: ;@ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	?___lmul
?___lmul: ;@ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x0
	global	keypad@key_no
keypad@key_no:	; 16 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	2
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	2
	global	?___aldiv
?___aldiv: ;@ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xA
	ds	6
	global	keypad@key
keypad@key:	; 1 bytes @ 0x10
	ds	1
	global	keypad@i
keypad@i:	; 2 bytes @ 0x11
	ds	2
	global	?_keypad
?_keypad: ;@ 0x13
	ds	23
	global	??_lcd_integer
??_lcd_integer: ;@ 0x2A
	ds	1
	global	?_lcd_integer
?_lcd_integer: ;@ 0x2B
	global	lcd_integer@x
lcd_integer@x:	; 4 bytes @ 0x2B
	ds	4
	global	??_main
??_main: ;@ 0x2F
	ds	4
	global	?_main
?_main: ;@ 0x33
;Data sizes: Strings 0, constant 0, data 16, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14     13      13
; BANK0           80     51      67
; BANK1           80     18      18
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___aldiv	long  size(1); Largest target is 0
;?___lmul	unsigned long  size(1); Largest target is 0
;?___almod	long  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 4, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                4    0 5410   0.00
;                                   47 BANK0    4
;           _lcd_init
;             _keypad
;        _lcd_integer
;  _keypad                                           23    0   85   0.00
;                                    0 COMMO    4
;                                    0 BANK0   19
;  _lcd_integer                                       9    4 5121   0.00
;                                   42 BANK0    5
;                                   10 BANK1    8
;            ___aldiv
;             ___lmul
;           _lcd_data
;            ___almod
;             _keypad (ARG)
;  _lcd_init                                          0    0  204   0.00
;        _lcd_command
;           _lcd_data
;    ___lmul                                          5    8  108   0.00
;                                    0 COMMO    5
;                                    0 BANK0    8
;    ___almod                                         3    8  342   0.00
;                                    0 COMMO    3
;                                    0 BANK0    8
;    ___aldiv                                         7    8  354   0.00
;                                    0 COMMO    1
;                                    0 BANK0   14
;    _lcd_command                                     4    0  102   0.00
;                                    0 COMMO    4
;    _lcd_data                                        4    0  102   0.00
;                                    0 COMMO    4
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      D       D       1       92.9%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      62       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     33      43       5       83.8%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50     12      12       7       22.5%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      62      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 10 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  2   51[BANK0 ] int 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       0       0       0
;      Temp:     4
;      Total:    4
; This function calls:
;		_lcd_init
;		_keypad
;		_lcd_integer
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;keypad.c: 5: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3f3b");
;keypad.c: 9: int main()
;keypad.c: 10: {lcd_init();
	
_main:	
	opt stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000806:	
	fcall	_lcd_init
	
l30000807:	
	line	11
;keypad.c: 11: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000808:	
	line	13
;keypad.c: 13: lcd_integer(keypad());
	fcall	_keypad
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0+0)
	clrf	(??_main+0+0+1)
	clrf	(??_main+0+0+2)
	clrf	(??_main+0+0+3)
	movf	3+(??_main+0+0),w
	movwf	(?_lcd_integer+3)
	movf	2+(??_main+0+0),w
	movwf	(?_lcd_integer+2)
	movf	1+(??_main+0+0),w
	movwf	(?_lcd_integer+1)
	movf	0+(??_main+0+0),w
	movwf	(?_lcd_integer)

	fcall	_lcd_integer
	goto	l30000808
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	14
	signat	_main,90
	global	_keypad
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

; *************** function _keypad *****************
; Defined at:
;		line 4 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.h"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  key_no         16    0[BANK0 ] unsigned char [16]
;  i               2   17[BANK0 ] int 
;  key             1   16[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4      19       0       0       0
;      Temp:     4
;      Total:   23
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text98
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\keypad.h"
	line	4
	global	__size_of_keypad
	__size_of_keypad	equ	__end_of_keypad-_keypad
;keypad.h: 3: unsigned char keypad()
;keypad.h: 4: {
	
_keypad:	
	opt stack 7
; Regs used in _keypad: [wreg-fsr0h+status,2+status,0]
	line	5
	
l30000714:	
;keypad.h: 5: int i=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(keypad@i)
	movlw	high(0)
	movwf	((keypad@i))+1
	
l30000715:	
	line	7
;keypad.h: 6: unsigned char key ;
;keypad.h: 7: unsigned char key_no[]={0xee,0xde,0xbe,0x7e, 0xed,0xdd,0xbd,0x7d, 0xeb,0xdb,0xbb,0x7b, 0xe7,0xd7,0xb7,0x77};
	movlw	(keypad@key_no)&0ffh
	movwf	fsr0
	movlw	keypad@F532&0ffh
	movwf	(??_keypad+0+0)
	movf	fsr0,w
	movwf	(??_keypad+0+0+1)
	movlw	16
	movwf	(??_keypad+0+0+2)
u1240:
	movf	(??_keypad+0+0),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	(??_keypad+0+0+3)
	incf	(??_keypad+0+0),f
	movf	(??_keypad+0+0+1),w
	movwf	fsr0
	movf	(??_keypad+0+0+3),w
	movwf	indf
	incf	(??_keypad+0+0+1),f
	decfsz	(??_keypad+0+0+2),f
	goto	u1240
	
l30000716:	
	line	10
;keypad.h: 10: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000717:	
	line	11
;keypad.h: 11: PORTB=0xf0;
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000718:	
	line	12
	movf	(6),w	;volatile
	xorlw	0F0h
	skipnz
	goto	u1251
	goto	u1250
u1251:
	goto	l30000718
u1250:
	
l30000719:	
	line	13
;keypad.h: 13: key=PORTB;
	movf	(6),w	;volatile
	movwf	(keypad@key)
	
l30000720:	
	line	14
;keypad.h: 14: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000721:	
	line	15
;keypad.h: 15: PORTB=0x0f;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	16
;keypad.h: 16: key|=PORTB;
	movf	(6),w	;volatile
	movwf	(??_keypad+0+0)
	movf	(??_keypad+0+0),w
	iorwf	(keypad@key),f
	goto	l30000723
	
l30000722:	
	line	19
;keypad.h: 18: {
;keypad.h: 19: i++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keypad@i),f
	skipnc
	incf	(keypad@i+1),f
	movlw	high(01h)
	addwf	(keypad@i+1),f
	
l30000723:	
	line	17
	movf	(keypad@i),w
	addlw	(keypad@key_no)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(keypad@key),w
	skipnz
	goto	u1261
	goto	u1260
u1261:
	goto	l30000725
u1260:
	
l30000724:	
	movf	(keypad@i+1),w
	xorlw	80h
	movwf	(??_keypad+0+0)
	movlw	(high(010h))^80h
	subwf	(??_keypad+0+0),w
	skipz
	goto	u1275
	movlw	low(010h)
	subwf	(keypad@i),w
u1275:

	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l30000722
u1270:
	
l30000725:	
	line	22
;keypad.h: 20: }
;keypad.h: 22: return i;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(keypad@i),w
	
l32:	
	return
	opt stack 0
GLOBAL	__end_of_keypad
	__end_of_keypad:
; =============== function _keypad ends ============

psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	line	24
	signat	_keypad,89
	global	_lcd_integer

; *************** function _lcd_integer *****************
; Defined at:
;		line 56 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
; Parameters:    Size  Location     Type
;  x               4   43[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  m               4   14[BANK1 ] long 
;  y               4   10[BANK1 ] long 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       5       8       0       0
;      Temp:     1
;      Total:   13
; This function calls:
;		___aldiv
;		___lmul
;		_lcd_data
;		___almod
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text99
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
	line	56
	global	__size_of_lcd_integer
	__size_of_lcd_integer	equ	__end_of_lcd_integer-_lcd_integer
;lcd.h: 55: void lcd_integer(long int x)
;lcd.h: 56: {long int y=x;
	
_lcd_integer:	
	opt stack 7
; Regs used in _lcd_integer: [wreg+status,2+status,0+pclath+cstack]
	
l30000801:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_integer@x+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_integer@x+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_integer@x+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_integer@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y)^080h

	line	57
;lcd.h: 57: long int m=1;
	movlw	0
	movwf	(lcd_integer@m+3)^080h
	movlw	0
	movwf	(lcd_integer@m+2)^080h
	movlw	0
	movwf	(lcd_integer@m+1)^080h
	movlw	01h
	movwf	(lcd_integer@m)^080h

	goto	l30000803
	
l30000802:	
	line	60
;lcd.h: 59: {
;lcd.h: 60: y/=10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@y+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv)

	movlw	0
	movwf	3+(?___aldiv)+04h
	movlw	0
	movwf	2+(?___aldiv)+04h
	movlw	0
	movwf	1+(?___aldiv)+04h
	movlw	0Ah
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@y)^080h

	line	61
;lcd.h: 61: m*=10;
	movf	(lcd_integer@m+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lmul+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lmul)

	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	0
	movwf	1+(?___lmul)+04h
	movlw	0Ah
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m)^080h

	
l30000803:	
	line	58
	movf	(lcd_integer@y+3)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_integer+0+0)
	movlw	high highword(0Ah)^80h
	subwf	(??_lcd_integer+0+0),w
	skipz
	goto	u1624
	movlw	low highword(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(lcd_integer@y+2)^080h,w
	skipz
	goto	u1624
	movlw	high(0Ah)
	subwf	(lcd_integer@y+1)^080h,w
	skipz
	goto	u1624
	movlw	low(0Ah)
	subwf	(lcd_integer@y)^080h,w
u1624:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	skipnc
	goto	u1621
	goto	u1620
u1621:
	goto	l30000802
u1620:
	goto	l30000805
	
l30000804:	
	line	65
;lcd.h: 64: {
;lcd.h: 65: lcd_data((x/m)+48);
	movf	(lcd_integer@x+3),w
	movwf	(?___aldiv+3)
	movf	(lcd_integer@x+2),w
	movwf	(?___aldiv+2)
	movf	(lcd_integer@x+1),w
	movwf	(?___aldiv+1)
	movf	(lcd_integer@x),w
	movwf	(?___aldiv)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___aldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___aldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___aldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___aldiv)),w
	addlw	030h
	fcall	_lcd_data
	line	66
;lcd.h: 66: x=x%m;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_integer@x+3),w
	movwf	(?___almod+3)
	movf	(lcd_integer@x+2),w
	movwf	(?___almod+2)
	movf	(lcd_integer@x+1),w
	movwf	(?___almod+1)
	movf	(lcd_integer@x),w
	movwf	(?___almod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___almod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___almod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___almod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___almod)+04h

	fcall	___almod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___almod)),w
	movwf	(lcd_integer@x+3)
	movf	(2+(?___almod)),w
	movwf	(lcd_integer@x+2)
	movf	(1+(?___almod)),w
	movwf	(lcd_integer@x+1)
	movf	(0+(?___almod)),w
	movwf	(lcd_integer@x)

	line	68
;lcd.h: 68: m/=10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv)

	movlw	0
	movwf	3+(?___aldiv)+04h
	movlw	0
	movwf	2+(?___aldiv)+04h
	movlw	0
	movwf	1+(?___aldiv)+04h
	movlw	0Ah
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@m)^080h

	
l30000805:	
	line	63
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@m+3)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_integer+0+0)
	movlw	high highword(01h)^80h
	subwf	(??_lcd_integer+0+0),w
	skipz
	goto	u1634
	movlw	low highword(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(lcd_integer@m+2)^080h,w
	skipz
	goto	u1634
	movlw	high(01h)
	subwf	(lcd_integer@m+1)^080h,w
	skipz
	goto	u1634
	movlw	low(01h)
	subwf	(lcd_integer@m)^080h,w
u1634:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	skipnc
	goto	u1631
	goto	u1630
u1631:
	goto	l30000804
u1630:
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_integer
	__end_of_lcd_integer:
; =============== function _lcd_integer ends ============

psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
	line	70
	signat	_lcd_integer,4216
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 39 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_lcd_command
;		_lcd_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text100
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
	line	39
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lcd.h: 38: void lcd_init()
;lcd.h: 39: {
	
_lcd_init:	
	opt stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l30000904:	
;lcd.h: 40: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000905:	
	line	41
;lcd.h: 41: lcd_command(0x02);
	movlw	(02h)
	fcall	_lcd_command
	
l30000906:	
	line	42
;lcd.h: 42: lcd_command(0x28);
	movlw	(028h)
	fcall	_lcd_command
	
l30000907:	
	line	43
;lcd.h: 43: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	
l30000908:	
	line	44
;lcd.h: 44: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	
l30000909:	
	line	45
;lcd.h: 45: lcd_data('A');
	movlw	(041h)
	fcall	_lcd_data
	
l15:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
; =============== function _lcd_init ends ============

psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	line	46
	signat	_lcd_init,88
	global	___lmul

; *************** function ___lmul *****************
; Defined at:
;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lmul.c"
; Parameters:    Size  Location     Type
;  multiplier      4    0[BANK0 ] unsigned long 
;  multiplicand    4    4[BANK0 ] unsigned long 
; Auto vars:     Size  Location     Type
;  product         4    1[COMMON] unsigned long 
; Return value:  Size  Location     Type
;                  4    0[BANK0 ] unsigned long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         5       8       0       0       0
;      Temp:     1
;      Total:   13
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_integer
; This function uses a non-reentrant model
; 
psect	text101
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt stack 6
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l30000883:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	
l30000884:	
	line	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___lmul@multiplier),(0)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l30000886
u2130:
	
l30000885:	
	line	8
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2141
	addwf	(___lmul@product+1),f
u2141:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2142
	addwf	(___lmul@product+2),f
u2142:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2143
	addwf	(___lmul@product+3),f
u2143:

	
l30000886:	
	line	9
	movlw	01h
	movwf	(??___lmul+0+0)
u2155:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0+0)
	goto	u2155
	
l30000887:	
	line	10
	movlw	01h
u2165:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2165

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l30000884
u2170:
	
l30000888:	
	line	12
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	
l108:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
; =============== function ___lmul ends ============

psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
	line	13
	signat	___lmul,8316
	global	___almod

; *************** function ___almod *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\almod.c"
; Parameters:    Size  Location     Type
;  dividend        4    0[BANK0 ] long 
;  divisor         4    4[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  sign            1    1[COMMON] unsigned char 
;  counter         1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  4    0[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       8       0       0       0
;      Temp:     1
;      Total:   11
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_integer
; This function uses a non-reentrant model
; 
psect	text102
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt stack 6
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l30000867:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___almod@sign)
	
l30000868:	
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___almod@dividend+3),7
	goto	u2041
	goto	u2040
u2041:
	goto	l30000871
u2040:
	
l30000869:	
	line	10
	comf	(___almod@dividend),f
	comf	(___almod@dividend+1),f
	comf	(___almod@dividend+2),f
	comf	(___almod@dividend+3),f
	incf	(___almod@dividend),f
	skipnz
	incf	(___almod@dividend+1),f
	skipnz
	incf	(___almod@dividend+2),f
	skipnz
	incf	(___almod@dividend+3),f
	
l30000870:	
	line	11
	clrf	(___almod@sign)
	bsf	status,0
	rlf	(___almod@sign),f
	
l30000871:	
	line	13
	btfss	(___almod@divisor+3),7
	goto	u2051
	goto	u2050
u2051:
	goto	l30000873
u2050:
	
l30000872:	
	line	14
	comf	(___almod@divisor),f
	comf	(___almod@divisor+1),f
	comf	(___almod@divisor+2),f
	comf	(___almod@divisor+3),f
	incf	(___almod@divisor),f
	skipnz
	incf	(___almod@divisor+1),f
	skipnz
	incf	(___almod@divisor+2),f
	skipnz
	incf	(___almod@divisor+3),f
	
l30000873:	
	line	15
	movf	(___almod@divisor+3),w
	iorwf	(___almod@divisor+2),w
	iorwf	(___almod@divisor+1),w
	iorwf	(___almod@divisor),w
	skipnz
	goto	u2061
	goto	u2060
u2061:
	goto	l30000881
u2060:
	
l30000874:	
	line	16
	clrf	(___almod@counter)
	bsf	status,0
	rlf	(___almod@counter),f
	goto	l30000876
	
l30000875:	
	line	18
	movlw	01h
	movwf	(??___almod+0+0)
u2075:
	clrc
	rlf	(___almod@divisor),f
	rlf	(___almod@divisor+1),f
	rlf	(___almod@divisor+2),f
	rlf	(___almod@divisor+3),f
	decfsz	(??___almod+0+0)
	goto	u2075
	line	19
	movlw	(01h)
	movwf	(??___almod+0+0)
	movf	(??___almod+0+0),w
	addwf	(___almod@counter),f
	
l30000876:	
	line	17
	btfss	(___almod@divisor+3),(31)&7
	goto	u2081
	goto	u2080
u2081:
	goto	l30000875
u2080:
	
l30000877:	
	line	22
	movf	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),w
	skipz
	goto	u2095
	movf	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),w
	skipz
	goto	u2095
	movf	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),w
	skipz
	goto	u2095
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),w
u2095:
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l30000879
u2090:
	
l30000878:	
	line	23
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),f
	movf	(___almod@divisor+1),w
	skipc
	incfsz	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),f
	movf	(___almod@divisor+2),w
	skipc
	incfsz	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),f
	movf	(___almod@divisor+3),w
	skipc
	incfsz	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),f
	
l30000879:	
	line	24
	movlw	01h
u2105:
	clrc
	rrf	(___almod@divisor+3),f
	rrf	(___almod@divisor+2),f
	rrf	(___almod@divisor+1),f
	rrf	(___almod@divisor),f
	addlw	-1
	skipz
	goto	u2105

	
l30000880:	
	line	25
	movlw	low(01h)
	subwf	(___almod@counter),f
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l30000877
u2110:
	
l30000881:	
	line	27
	movf	(___almod@sign),w
	skipz
	goto	u2120
	goto	l259
u2120:
	
l30000882:	
	line	28
	comf	(___almod@dividend),f
	comf	(___almod@dividend+1),f
	comf	(___almod@dividend+2),f
	comf	(___almod@dividend+3),f
	incf	(___almod@dividend),f
	skipnz
	incf	(___almod@dividend+1),f
	skipnz
	incf	(___almod@dividend+2),f
	skipnz
	incf	(___almod@dividend+3),f
	
l259:	
	line	29
	
l248:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
; =============== function ___almod ends ============

psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:
	line	30
	signat	___almod,8316
	global	___aldiv

; *************** function ___aldiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\aldiv.c"
; Parameters:    Size  Location     Type
;  dividend        4    6[BANK0 ] long 
;  divisor         4   10[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  quotient        4    2[BANK0 ] long 
;  sign            1    1[BANK0 ] unsigned char 
;  counter         1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4    6[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1      14       0       0       0
;      Temp:     1
;      Total:   15
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_integer
; This function uses a non-reentrant model
; 
psect	text103
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000924:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@sign)
	
l30000925:	
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2241
	goto	u2240
u2241:
	goto	l30000928
u2240:
	
l30000926:	
	line	11
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	
l30000927:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000928:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u2251
	goto	u2250
u2251:
	goto	l30000931
u2250:
	
l30000929:	
	line	15
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	
l30000930:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000931:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000932:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l30000942
u2260:
	
l30000933:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000935
	
l30000934:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u2275:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u2275
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000935:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l30000934
u2280:
	
l30000936:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u2295:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u2295
	
l30000937:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2305
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2305
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2305
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l30000940
u2300:
	
l30000938:	
	line	28
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	
l30000939:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000940:	
	line	31
	movlw	01h
u2315:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2315

	
l30000941:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l30000936
u2320:
	
l30000942:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u2330
	goto	l30000944
u2330:
	
l30000943:	
	line	35
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	
l30000944:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l260:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	line	37
	signat	___aldiv,8316
	global	_lcd_command

; *************** function _lcd_command *****************
; Defined at:
;		line 7 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    1[COMMON] unsigned char 
;  i               2    2[COMMON] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4       0       0       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_init
; This function uses a non-reentrant model
; 
psect	text104
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
	line	7
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
;lcd.h: 6: void lcd_command(unsigned char x)
;lcd.h: 7: {int i=5000;
	
_lcd_command:	
	opt stack 6
; Regs used in _lcd_command: [wreg+status,2+status,0]
;lcd_command@x stored from wreg
	movwf	(lcd_command@x)
	
l30000910:	
	movlw	low(01388h)
	movwf	(lcd_command@i)
	movlw	high(01388h)
	movwf	((lcd_command@i))+1
	
l30000911:	
	line	8
;lcd.h: 8: PORTD=0xf0&x;
	movf	(lcd_command@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000912:	
	line	9
;lcd.h: 9: PORTD&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000913:	
	line	10
;lcd.h: 10: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000914:	
	line	11
;lcd.h: 11: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000915:	
	line	12
	movlw	low(-1)
	addwf	(lcd_command@i),f
	skipnc
	incf	(lcd_command@i+1),f
	movlw	high(-1)
	addwf	(lcd_command@i+1),f
	movlw	high(-1)
	xorwf	((lcd_command@i+1))&07fh,w
	skipz
	goto	u2215
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u2215:

	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l30000915
u2210:
	
l30000916:	
	line	13
;lcd.h: 13: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000917:	
	line	14
;lcd.h: 14: i=5000;
	movlw	low(01388h)
	movwf	(lcd_command@i)
	movlw	high(01388h)
	movwf	((lcd_command@i))+1
	
l30000918:	
	line	15
;lcd.h: 15: PORTD=(0x0f&x)<<4;
	movf	(lcd_command@x),w
	andlw	0Fh
	movwf	(??_lcd_command+0+0)
	movlw	(04h)-1
u2225:
	clrc
	rlf	(??_lcd_command+0+0),f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_lcd_command+0+0),w
	movwf	(8)	;volatile
	
l30000919:	
	line	16
;lcd.h: 16: PORTD&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000920:	
	line	17
;lcd.h: 17: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000921:	
	line	18
;lcd.h: 18: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000922:	
	line	19
	movlw	low(-1)
	addwf	(lcd_command@i),f
	skipnc
	incf	(lcd_command@i+1),f
	movlw	high(-1)
	addwf	(lcd_command@i+1),f
	movlw	high(-1)
	xorwf	((lcd_command@i+1))&07fh,w
	skipz
	goto	u2235
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u2235:

	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l30000922
u2230:
	
l30000923:	
	line	20
;lcd.h: 20: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
; =============== function _lcd_command ends ============

psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	line	21
	signat	_lcd_command,4216
	global	_lcd_data

; *************** function _lcd_data *****************
; Defined at:
;		line 23 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    1[COMMON] unsigned char 
;  i               2    2[COMMON] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4       0       0       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_init
;		_lcd_integer
; This function uses a non-reentrant model
; 
psect	text105
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\keypad\lcd.h"
	line	23
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
;lcd.h: 22: void lcd_data(unsigned char x)
;lcd.h: 23: {int i=5000;
	
_lcd_data:	
	opt stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@x stored from wreg
	movwf	(lcd_data@x)
	
l30000890:	
	movlw	low(01388h)
	movwf	(lcd_data@i)
	movlw	high(01388h)
	movwf	((lcd_data@i))+1
	
l30000891:	
	line	24
;lcd.h: 24: PORTD=0xf0&x;
	movf	(lcd_data@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000892:	
	line	25
;lcd.h: 25: PORTD|=(1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	
l30000893:	
	line	26
;lcd.h: 26: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000894:	
	line	27
;lcd.h: 27: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000895:	
	line	28
	movlw	low(-1)
	addwf	(lcd_data@i),f
	skipnc
	incf	(lcd_data@i+1),f
	movlw	high(-1)
	addwf	(lcd_data@i+1),f
	movlw	high(-1)
	xorwf	((lcd_data@i+1))&07fh,w
	skipz
	goto	u2185
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u2185:

	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l30000895
u2180:
	
l30000896:	
	line	29
;lcd.h: 29: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000897:	
	line	30
;lcd.h: 30: i=5000;
	movlw	low(01388h)
	movwf	(lcd_data@i)
	movlw	high(01388h)
	movwf	((lcd_data@i))+1
	
l30000898:	
	line	31
;lcd.h: 31: PORTD=(0x0f&x)<<4;
	movf	(lcd_data@x),w
	andlw	0Fh
	movwf	(??_lcd_data+0+0)
	movlw	(04h)-1
u2195:
	clrc
	rlf	(??_lcd_data+0+0),f
	addlw	-1
	skipz
	goto	u2195
	clrc
	rlf	(??_lcd_data+0+0),w
	movwf	(8)	;volatile
	
l30000899:	
	line	32
;lcd.h: 32: PORTD|=(1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	
l30000900:	
	line	33
;lcd.h: 33: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000901:	
	line	34
;lcd.h: 34: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000902:	
	line	35
	movlw	low(-1)
	addwf	(lcd_data@i),f
	skipnc
	incf	(lcd_data@i+1),f
	movlw	high(-1)
	addwf	(lcd_data@i+1),f
	movlw	high(-1)
	xorwf	((lcd_data@i+1))&07fh,w
	skipz
	goto	u2205
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u2205:

	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l30000902
u2200:
	
l30000903:	
	line	36
;lcd.h: 36: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
; =============== function _lcd_data ends ============

psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
	line	37
	signat	_lcd_data,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
