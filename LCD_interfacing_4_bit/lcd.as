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
# 3 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	dw 0x3f3b ;#
;BANK0:	_main->_lcd_float
;BANK0:	_lcd_float->_lcd_integer
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
;BANK1:	_lcd_float->_lcd_integer
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
;COMMON:	_lcd_float->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
;BANK1:	_main->_lcd_float
;BANK0:	_lcd_float->_lcd_integer
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
;BANK1:	_lcd_float->_lcd_integer
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
;COMMON:	_lcd_float->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_pattern
	FNCALL	_main,_lcd_float
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_pattern,_lcd_command
	FNCALL	_lcd_pattern,_lcd_data
	FNCALL	_lcd_float,___fttol
	FNCALL	_lcd_float,_lcd_integer
	FNCALL	_lcd_float,_lcd_data
	FNCALL	_lcd_float,___awtoft
	FNCALL	_lcd_float,___ftneg
	FNCALL	_lcd_float,___ftadd
	FNCALL	_lcd_float,___ftmul
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_init,_lcd_data
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_lcd_integer,___aldiv
	FNCALL	_lcd_integer,___lmul
	FNCALL	_lcd_integer,_lcd_data
	FNCALL	_lcd_integer,___almod
	FNROOT	_main
	global	main@F530
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	94

;initializer for main@F530
	retlw	01Fh
	retlw	010h
	retlw	01Fh
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
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
	file	"lcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	94
main@F530:
       ds      8

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
	movlw low(__pdataBANK0+8)
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
	global	?___fttol
?___fttol: ;@ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds	4
	global	lcd_integer@y
lcd_integer@y:	; 4 bytes @ 0x4
	ds	4
	global	lcd_integer@m
lcd_integer@m:	; 4 bytes @ 0x8
	ds	4
	global	?_lcd_integer
?_lcd_integer: ;@ 0xC
	global	lcd_integer@x
lcd_integer@x:	; 4 bytes @ 0xC
	ds	4
	global	?_lcd_float
?_lcd_float: ;@ 0x10
	global	lcd_float@f
lcd_float@f:	; 3 bytes @ 0x10
	ds	3
	global	main@pattern
main@pattern:	; 8 bytes @ 0x13
	ds	8
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	??___lmul
??___lmul: ;@ 0x0
	global	??_lcd_data
??_lcd_data: ;@ 0x0
	global	??___almod
??___almod: ;@ 0x0
	global	??_lcd_command
??_lcd_command: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	ds	1
	global	??_lcd_init
??_lcd_init: ;@ 0x1
	global	lcd_data@x
lcd_data@x:	; 1 bytes @ 0x1
	global	lcd_command@x
lcd_command@x:	; 1 bytes @ 0x1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x1
	ds	1
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x2
	global	lcd_command@i
lcd_command@i:	; 2 bytes @ 0x2
	global	lcd_data@i
lcd_data@i:	; 2 bytes @ 0x2
	ds	2
	global	??_lcd_pattern
??_lcd_pattern: ;@ 0x4
	global	?_lcd_command
?_lcd_command: ;@ 0x4
	global	?_lcd_init
?_lcd_init: ;@ 0x4
	global	?_lcd_data
?_lcd_data: ;@ 0x4
	ds	1
	global	?_lcd_pattern
?_lcd_pattern: ;@ 0x5
	global	??___ftneg
??___ftneg: ;@ 0x5
	ds	3
	global	??___awtoft
??___awtoft: ;@ 0x8
	ds	2
	global	??___ftadd
??___ftadd: ;@ 0xA
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftpack
?___ftpack: ;@ 0x0
	global	?___almod
?___almod: ;@ 0x0
	global	?___lmul
?___lmul: ;@ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	lcd_pattern@p
lcd_pattern@p:	; 1 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	global	lcd_pattern@i
lcd_pattern@i:	; 2 bytes @ 0x1
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x4
	ds	2
	global	?___aldiv
?___aldiv: ;@ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_float
??_lcd_float: ;@ 0x8
	global	?___awtoft
?___awtoft: ;@ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xA
	ds	1
	global	?___ftneg
?___ftneg: ;@ 0xB
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0xB
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xE
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xF
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x10
	ds	1
	global	?___ftadd
?___ftadd: ;@ 0x11
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x11
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x14
	ds	3
	global	??___ftmul
??___ftmul: ;@ 0x17
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1B
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1C
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1F
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x20
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x21
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x21
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x24
	ds	3
	global	??___fttol
??___fttol: ;@ 0x27
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x2A
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x2B
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x2F
	ds	1
	global	??_lcd_integer
??_lcd_integer: ;@ 0x30
	ds	1
	global	_lcd_float$755
_lcd_float$755:	; 3 bytes @ 0x31
	ds	3
	global	??_main
??_main: ;@ 0x34
	ds	4
	global	?_main
?_main: ;@ 0x38
;Data sizes: Strings 0, constant 0, data 8, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14     13      13
; BANK0           80     56      64
; BANK1           80     27      27
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;lcd_pattern@p	PTR unsigned char  size(1); Largest target is 8
;		 -> main@pattern(BANK1[8]), 
;?___aldiv	long  size(1); Largest target is 0
;?___lmul	unsigned long  size(1); Largest target is 0
;?___almod	long  size(1); Largest target is 0
;?___fttol	long  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?___awtoft	float  size(1); Largest target is 0
;?___ftadd	float  size(1); Largest target is 0
;?___ftneg	float  size(1); Largest target is 0
;?___ftpack	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 4, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               12    0 35633   0.00
;                                   52 BANK0    4
;                                   19 BANK1    8
;           _lcd_init
;        _lcd_pattern
;          _lcd_float
;        _lcd_command
;           _lcd_data
;  _lcd_pattern                                       4    0  273   0.00
;                                    4 COMMO    1
;                                    0 BANK0    3
;        _lcd_command
;           _lcd_data
;  _lcd_float                                         3    3 34997   0.00
;                                   49 BANK0    3
;                                   16 BANK1    3
;            ___fttol
;        _lcd_integer
;           _lcd_data
;           ___awtoft
;            ___ftneg
;            ___ftadd
;            ___ftmul
;  _lcd_init                                          0    0  168   0.00
;        _lcd_command
;           _lcd_data
;    ___awtoft                                        3    3  516   0.00
;                                    8 COMMO    2
;                                    7 BANK0    4
;            ___fttol (ARG)
;           ___ftpack
;    ___ftneg                                         0    3  843   0.00
;                                   11 BANK0    3
;           ___awtoft (ARG)
;            ___fttol (ARG)
;    ___ftmul                                        10    6 4476   0.00
;                                   23 BANK0   16
;            ___ftadd (ARG)
;            ___ftneg (ARG)
;           ___awtoft (ARG)
;            ___fttol (ARG)
;           ___ftpack
;    ___ftadd                                         6    6 2426   0.00
;                                   10 COMMO    3
;                                   14 BANK0    9
;            ___ftneg (ARG)
;           ___awtoft (ARG)
;            ___fttol (ARG)
;           ___ftpack
;    _lcd_integer                                     9    4 17980   0.00
;                                   48 BANK0    1
;                                    4 BANK1   12
;            ___aldiv
;             ___lmul
;           _lcd_data
;            ___almod
;            ___fttol (ARG)
;            ___ftmul (ARG)
;            ___ftadd (ARG)
;            ___ftneg (ARG)
;           ___awtoft (ARG)
;    ___fttol                                         9    4 8555   0.00
;                                   39 BANK0    9
;                                    0 BANK1    4
;            ___ftmul (ARG)
;            ___ftadd (ARG)
;            ___ftneg (ARG)
;           ___awtoft (ARG)
;    _lcd_command                                     4    0   66   0.00
;                                    0 COMMO    4
;      _lcd_data                                      4    0  102   0.00
;                                    0 COMMO    4
;      ___aldiv                                       7    8  354   0.00
;                                    0 COMMO    1
;                                    0 BANK0   14
;      ___lmul                                        5    8  108   0.00
;                                    0 COMMO    5
;                                    0 BANK0    8
;      ___almod                                       3    8  342   0.00
;                                    0 COMMO    3
;                                    0 BANK0    8
;      ___ftpack                                      3    5  155   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
; Estimated maximum call depth 3
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
;ABS                  0      0      68       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     38      40       5       80.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50     1B      1B       7       33.8%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      68      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 93 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  pattern         8   19[BANK1 ] unsigned char [8]
; Return value:  Size  Location     Type
;                  2   56[BANK0 ] int 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       8       0       0
;      Temp:     4
;      Total:   12
; This function calls:
;		_lcd_init
;		_lcd_pattern
;		_lcd_float
;		_lcd_command
;		_lcd_data
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	93
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;lcd.c: 92: int main()
;lcd.c: 93: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	94
	
l30000916:	
;lcd.c: 94: unsigned char pattern[]={0x1f,0x10,0x1f,0x10,0x1f,0x1f,0x1f,0x1f};
	movlw	(main@pattern)&0ffh
	movwf	fsr0
	movlw	main@F530&0ffh
	movwf	(??_main+0+0)
	movf	fsr0,w
	movwf	(??_main+0+0+1)
	movlw	8
	movwf	(??_main+0+0+2)
u2090:
	movf	(??_main+0+0),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	(??_main+0+0+3)
	incf	(??_main+0+0),f
	movf	(??_main+0+0+1),w
	movwf	fsr0
	movf	(??_main+0+0+3),w
	movwf	indf
	incf	(??_main+0+0+1),f
	decfsz	(??_main+0+0+2),f
	goto	u2090
	
l30000917:	
	line	96
;lcd.c: 96: lcd_init();
	fcall	_lcd_init
	
l30000918:	
	line	97
;lcd.c: 97: lcd_pattern(pattern);
	movlw	((main@pattern))&0ffh
	fcall	_lcd_pattern
	
l30000919:	
	line	98
;lcd.c: 98: lcd_float(123.459);
	movlw	0xeb
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_lcd_float)^080h
	movlw	0xf6
	movwf	(?_lcd_float+1)^080h
	movlw	0x42
	movwf	(?_lcd_float+2)^080h
	fcall	_lcd_float
	
l30000920:	
	line	100
;lcd.c: 100: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	
l30000921:	
	line	101
;lcd.c: 101: lcd_data(0);
	movlw	(0)
	fcall	_lcd_data
	
l30000922:	
	line	102
;lcd.c: 102: lcd_data(0);
	movlw	(0)
	fcall	_lcd_data
	
l30000923:	
	line	103
;lcd.c: 103: lcd_data('B');
	movlw	(042h)
	fcall	_lcd_data
	
l33:	
	goto	l33
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	110
	signat	_main,90
	global	_lcd_pattern
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

; *************** function _lcd_pattern *****************
; Defined at:
;		line 84 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
; Parameters:    Size  Location     Type
;  p               1    wreg     PTR unsigned char 
;		 -> main@pattern(8), 
; Auto vars:     Size  Location     Type
;  p               1    0[BANK0 ] PTR unsigned char 
;		 -> main@pattern(8), 
;  i               2    1[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       3       0       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_lcd_command
;		_lcd_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text135
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	84
	global	__size_of_lcd_pattern
	__size_of_lcd_pattern	equ	__end_of_lcd_pattern-_lcd_pattern
;lcd.c: 83: void lcd_pattern(unsigned char *p)
;lcd.c: 84: {int i=0;
	
_lcd_pattern:	
	opt stack 7
; Regs used in _lcd_pattern: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_pattern@p stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_pattern@p)
	
l30000949:	
	
l30000950:	
	line	85
;lcd.c: 85: lcd_command(0x40);
	movlw	(040h)
	fcall	_lcd_command
	
l30000951:	
	line	86
;lcd.c: 86: for(i=0;i<8;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_pattern@i)
	movlw	high(0)
	movwf	((lcd_pattern@i))+1
	
l30000954:	
	line	88
;lcd.c: 87: {
;lcd.c: 88: lcd_data(*(p+i));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_pattern@i),w
	addwf	(lcd_pattern@p),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_data
	
l30000955:	
	line	86
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_pattern@i),f
	skipnc
	incf	(lcd_pattern@i+1),f
	movlw	high(01h)
	addwf	(lcd_pattern@i+1),f
	
l30000956:	
	movf	(lcd_pattern@i+1),w
	xorlw	80h
	movwf	(??_lcd_pattern+0+0)
	movlw	(high(08h))^80h
	subwf	(??_lcd_pattern+0+0),w
	skipz
	goto	u2155
	movlw	low(08h)
	subwf	(lcd_pattern@i),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l30000954
u2150:
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_pattern
	__end_of_lcd_pattern:
; =============== function _lcd_pattern ends ============

psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:
	line	90
	signat	_lcd_pattern,4216
	global	_lcd_float

; *************** function _lcd_float *****************
; Defined at:
;		line 76 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
; Parameters:    Size  Location     Type
;  f               3   16[BANK1 ] int 
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
;      Locals:         0       3       3       0       0
;      Temp:     0
;      Total:    6
; This function calls:
;		___fttol
;		_lcd_integer
;		_lcd_data
;		___awtoft
;		___ftneg
;		___ftadd
;		___ftmul
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text136
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	76
	global	__size_of_lcd_float
	__size_of_lcd_float	equ	__end_of_lcd_float-_lcd_float
;lcd.c: 75: void lcd_float(double f)
;lcd.c: 76: {
	
_lcd_float:	
	opt stack 7
; Regs used in _lcd_float: [wreg+status,2+status,0+pclath+cstack]
	line	77
	
l30000915:	
;lcd.c: 77: lcd_integer((int)f);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_float@f)^080h,w
	movwf	(?___fttol)^080h
	movf	(lcd_float@f+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(lcd_float@f+2)^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bcf	status, 7	;select IRP bank1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	movwf	(?_lcd_integer)^080h
	movf	(1+(?___fttol))^080h,w
	movwf	(?_lcd_integer+1)^080h
	movlw	0
	btfsc	(?_lcd_integer+1)^080h,7
	movlw	255
	movwf	(?_lcd_integer+2)^080h
	movwf	(?_lcd_integer+3)^080h
	fcall	_lcd_integer
	line	78
;lcd.c: 78: lcd_data('.');
	movlw	(02Eh)
	fcall	_lcd_data
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lmul.c"
	line	13
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_float@f)^080h,w
	movwf	(?___fttol)^080h
	movf	(lcd_float@f+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(lcd_float@f+2)^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bcf	status, 7	;select IRP bank1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftneg)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftneg+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftneg)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftneg)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_float@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_float@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_float@f+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0x7a
	movwf	1+(?___ftmul)+03h
	movlw	0x44
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_lcd_float$755)
	movf	(1+(?___ftmul)),w
	movwf	(_lcd_float$755+1)
	movf	(2+(?___ftmul)),w
	movwf	(_lcd_float$755+2)
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	79
;lcd.c: 79: lcd_integer((f - (int) f) *1000 );
	movf	(_lcd_float$755),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_float$755+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_float$755+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bcf	status, 7	;select IRP bank1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	movwf	(?_lcd_integer+3)^080h
	movf	(2+(?___fttol))^080h,w
	movwf	(?_lcd_integer+2)^080h
	movf	(1+(?___fttol))^080h,w
	movwf	(?_lcd_integer+1)^080h
	movf	(0+(?___fttol))^080h,w
	movwf	(?_lcd_integer)^080h

	fcall	_lcd_integer
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_float
	__end_of_lcd_float:
; =============== function _lcd_float ends ============

psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:
	line	81
	signat	_lcd_float,4216
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 43 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
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
psect	text137
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	43
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lcd.c: 42: void lcd_init()
;lcd.c: 43: {
	
_lcd_init:	
	opt stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l30000943:	
;lcd.c: 44: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000944:	
	line	45
;lcd.c: 45: lcd_command(0x02);
	movlw	(02h)
	fcall	_lcd_command
	
l30000945:	
	line	46
;lcd.c: 46: lcd_command(0x28);
	movlw	(028h)
	fcall	_lcd_command
	
l30000946:	
	line	47
;lcd.c: 47: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	
l30000947:	
	line	48
;lcd.c: 48: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	
l30000948:	
	line	49
;lcd.c: 49: lcd_data('A');
	movlw	(041h)
	fcall	_lcd_data
	
l15:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
; =============== function _lcd_init ends ============

psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:
	line	50
	signat	_lcd_init,88
	global	___awtoft

; *************** function ___awtoft *****************
; Defined at:
;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awtoft.c"
; Parameters:    Size  Location     Type
;  c               2    8[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    7[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3    8[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     2
;      Total:    6
; This function calls:
;		___ftpack
; This function is called by:
;		_lcd_float
; This function uses a non-reentrant model
; 
psect	text138
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l30000786:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	
l30000787:	
	line	37
	btfss	(___awtoft@c+1),7
	goto	u1661
	goto	u1660
u1661:
	goto	l30000789
u1660:
	
l30000788:	
	line	38
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	
l30000789:	
	line	41
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0+0)
	movf	(??___awtoft+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1+0)
	movf	(??___awtoft+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	
l183:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
; =============== function ___awtoft ends ============

psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:
	line	42
	signat	___awtoft,4219
	global	___ftneg

; *************** function ___ftneg *****************
; Defined at:
;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftneg.c"
; Parameters:    Size  Location     Type
;  f1              3   11[BANK0 ] float 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  3   11[BANK0 ] float 
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       3       0       0       0
;      Temp:     0
;      Total:    3
; This function calls:
; This function is called by:
;		_lcd_float
; This function uses a non-reentrant model
; 
psect	text139
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l30000791:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1671
	goto	u1670
u1671:
	goto	l207
u1670:
	
l30000792:	
	line	18
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	
l207:	
	line	19
	movf	(___ftneg@f1),w
	movwf	(?___ftneg)
	movf	(___ftneg@f1+1),w
	movwf	(?___ftneg+1)
	movf	(___ftneg@f1+2),w
	movwf	(?___ftneg+2)
	
l206:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
; =============== function ___ftneg ends ============

psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:
	line	20
	signat	___ftneg,4219
	global	___ftmul

; *************** function ___ftmul *****************
; Defined at:
;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
; Parameters:    Size  Location     Type
;  f1              3   33[BANK0 ] float 
;  f2              3   36[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  f3_as_produc    3   28[BANK0 ] unsigned um
;  sign            1   32[BANK0 ] unsigned char 
;  cntr            1   31[BANK0 ] unsigned char 
;  exp             1   27[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   33[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      16       0       0       0
;      Temp:     4
;      Total:   16
; This function calls:
;		___ftpack
; This function is called by:
;		_lcd_float
; This function uses a non-reentrant model
; 
psect	text140
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30000669:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp))&07fh,f
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l30000672
u1000:
	
l30000670:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l114
	
l30000672:	
	line	58
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign))&07fh,f
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l30000675
u1010:
	
l30000673:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l114
	
l30000675:	
	line	60
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u1025:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u1020:
	addlw	-1
	skipz
	goto	u1025
	movf	0+(??___ftmul+0+0),w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u1035:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u1030:
	addlw	-1
	skipz
	goto	u1035
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30000676:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30000677:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30000678:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30000679:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30000680:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30000681:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l30000683
u1040:
	
l30000682:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1051
	addwf	(___ftmul@f3_as_product+1),f
u1051:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1052
	addwf	(___ftmul@f3_as_product+2),f
u1052:

	
l30000683:	
	line	73
	movlw	01h
u1065:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1065

	
l30000684:	
	line	74
	movlw	01h
u1075:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1075
	
l30000685:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l30000681
u1080:
	
l30000686:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30000687:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l30000689
u1090:
	
l30000688:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1101
	addwf	(___ftmul@f3_as_product+1),f
u1101:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1102
	addwf	(___ftmul@f3_as_product+2),f
u1102:

	
l30000689:	
	line	80
	movlw	01h
u1115:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1115

	
l30000690:	
	line	81
	movlw	01h
u1125:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1125

	
l30000691:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l30000687
u1130:
	
l30000692:	
	line	83
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1+0)
	movf	(??___ftmul+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:
	line	84
	signat	___ftmul,8315
	global	___ftadd

; *************** function ___ftadd *****************
; Defined at:
;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftadd.c"
; Parameters:    Size  Location     Type
;  f1              3   17[BANK0 ] float 
;  f2              3   20[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  exp1            1   16[BANK0 ] unsigned char 
;  exp2            1   15[BANK0 ] unsigned char 
;  sign            1   14[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   17[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       9       0       0       0
;      Temp:     3
;      Total:   12
; This function calls:
;		___ftpack
; This function is called by:
;		_lcd_float
; This function uses a non-reentrant model
; 
psect	text141
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt stack 6
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l30000748:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	(??___ftadd+0+0)
	movf	(___ftadd@f1+1),w
	movwf	(??___ftadd+0+0+1)
	movf	(___ftadd@f1+2),w
	movwf	(??___ftadd+0+0+2)
	clrc
	rlf	(??___ftadd+0+1),w
	rlf	(??___ftadd+0+2),w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	(??___ftadd+0+0)
	movf	(___ftadd@f2+1),w
	movwf	(??___ftadd+0+0+1)
	movf	(___ftadd@f2+2),w
	movwf	(??___ftadd+0+0+2)
	clrc
	rlf	(??___ftadd+0+1),w
	rlf	(??___ftadd+0+2),w
	movwf	(___ftadd@exp2)
	
l30000749:	
	line	92
	movf	(___ftadd@exp1),w
	skipz
	goto	u1390
	goto	l30000752
u1390:
	
l30000750:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l30000754
u1400:
	
l30000751:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l30000754
u1410:
	
l30000752:	
	line	93
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l78
	
l30000754:	
	line	94
	movf	(___ftadd@exp2),w
	skipz
	goto	u1420
	goto	l30000757
u1420:
	
l30000755:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1431
	goto	u1430
u1431:
	goto	l30000759
u1430:
	
l30000756:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l30000759
u1440:
	
l30000757:	
	line	95
	movf	(___ftadd@f1),w
	movwf	(?___ftadd)
	movf	(___ftadd@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f1+2),w
	movwf	(?___ftadd+2)
	goto	l78
	
l30000759:	
	line	96
	movlw	(06h)
	movwf	(___ftadd@sign)
	
l30000760:	
	line	97
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l81
u1450:
	
l30000761:	
	line	98
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l81:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l82
u1460:
	
l30000762:	
	line	100
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l82:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	
l30000763:	
	line	102
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	
l30000764:	
	line	103
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1471
	goto	u1470
u1471:
	goto	l30000770
u1470:
	
l30000765:	
	line	110
	movlw	01h
u1485:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1485
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	
l30000766:	
	line	112
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1491
	goto	u1490
u1491:
	goto	l30000769
u1490:
	
l30000767:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign))&07fh,w
	andlw	07h
	btfss	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l30000765
u1500:
	goto	l30000769
	
l30000768:	
	line	114
	movlw	01h
u1515:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1515

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	addwf	(___ftadd@exp1),f
	
l30000769:	
	line	113
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l30000768
u1520:
	goto	l90
	
l30000770:	
	line	117
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1531
	goto	u1530
u1531:
	goto	l90
u1530:
	
l30000771:	
	line	121
	movlw	01h
u1545:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1545
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	
l30000772:	
	line	123
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1551
	goto	u1550
u1551:
	goto	l30000775
u1550:
	
l30000773:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign))&07fh,w
	andlw	07h
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l30000771
u1560:
	goto	l30000775
	
l30000774:	
	line	125
	movlw	01h
u1575:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1575

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	addwf	(___ftadd@exp2),f
	
l30000775:	
	line	124
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l30000774
u1580:
	
l90:	
	line	129
	btfss	(___ftadd@sign),(7)&7
	goto	u1591
	goto	u1590
u1591:
	goto	l30000777
u1590:
	
l30000776:	
	line	131
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1601
	addwf	(___ftadd@f1+1),f
u1601:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1602
	addwf	(___ftadd@f1+2),f
u1602:

	
l30000777:	
	line	134
	btfss	(___ftadd@sign),(6)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l30000779
u1610:
	
l30000778:	
	line	136
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1621
	addwf	(___ftadd@f2+1),f
u1621:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1622
	addwf	(___ftadd@f2+2),f
u1622:

	
l30000779:	
	line	139
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	
l30000780:	
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1631
	addwf	(___ftadd@f2+1),f
u1631:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1632
	addwf	(___ftadd@f2+2),f
u1632:

	
l30000781:	
	line	141
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l30000784
u1640:
	
l30000782:	
	line	142
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1651
	addwf	(___ftadd@f2+1),f
u1651:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1652
	addwf	(___ftadd@f2+2),f
u1652:

	
l30000783:	
	line	144
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	
l30000784:	
	line	146
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1+0)
	movf	(??___ftadd+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
; =============== function ___ftadd ends ============

psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:
	line	148
	signat	___ftadd,8315
	global	_lcd_integer

; *************** function _lcd_integer *****************
; Defined at:
;		line 60 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
; Parameters:    Size  Location     Type
;  x               4   12[BANK1 ] long 
; Auto vars:     Size  Location     Type
;  m               4    8[BANK1 ] long 
;  y               4    4[BANK1 ] long 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1      12       0       0
;      Temp:     1
;      Total:   13
; This function calls:
;		___aldiv
;		___lmul
;		_lcd_data
;		___almod
; This function is called by:
;		_lcd_float
; This function uses a non-reentrant model
; 
psect	text142
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	60
	global	__size_of_lcd_integer
	__size_of_lcd_integer	equ	__end_of_lcd_integer-_lcd_integer
;lcd.c: 59: void lcd_integer(long int x)
;lcd.c: 60: {long int y=x;
	
_lcd_integer:	
	opt stack 6
; Regs used in _lcd_integer: [wreg+status,2+status,0+pclath+cstack]
	
l30000924:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+3)^080h,w
	movwf	(lcd_integer@y+3)^080h
	movf	(lcd_integer@x+2)^080h,w
	movwf	(lcd_integer@y+2)^080h
	movf	(lcd_integer@x+1)^080h,w
	movwf	(lcd_integer@y+1)^080h
	movf	(lcd_integer@x)^080h,w
	movwf	(lcd_integer@y)^080h

	line	61
;lcd.c: 61: long int m=1;
	movlw	0
	movwf	(lcd_integer@m+3)^080h
	movlw	0
	movwf	(lcd_integer@m+2)^080h
	movlw	0
	movwf	(lcd_integer@m+1)^080h
	movlw	01h
	movwf	(lcd_integer@m)^080h

	goto	l30000926
	
l30000925:	
	line	64
;lcd.c: 63: {
;lcd.c: 64: y/=10;
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

	line	65
;lcd.c: 65: m*=10;
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

	
l30000926:	
	line	62
	movf	(lcd_integer@y+3)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_integer+0+0)
	movlw	high highword(0Ah)^80h
	subwf	(??_lcd_integer+0+0),w
	skipz
	goto	u2104
	movlw	low highword(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(lcd_integer@y+2)^080h,w
	skipz
	goto	u2104
	movlw	high(0Ah)
	subwf	(lcd_integer@y+1)^080h,w
	skipz
	goto	u2104
	movlw	low(0Ah)
	subwf	(lcd_integer@y)^080h,w
u2104:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	skipnc
	goto	u2101
	goto	u2100
u2101:
	goto	l30000925
u2100:
	goto	l30000928
	
l30000927:	
	line	69
;lcd.c: 68: {
;lcd.c: 69: lcd_data((x/m)+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	line	70
;lcd.c: 70: x=x%m;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___almod+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___almod+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___almod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_integer@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___almod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___almod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___almod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_integer@x)^080h

	line	72
;lcd.c: 72: m/=10;
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

	
l30000928:	
	line	67
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
	goto	u2114
	movlw	low highword(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(lcd_integer@m+2)^080h,w
	skipz
	goto	u2114
	movlw	high(01h)
	subwf	(lcd_integer@m+1)^080h,w
	skipz
	goto	u2114
	movlw	low(01h)
	subwf	(lcd_integer@m)^080h,w
u2114:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	skipnc
	goto	u2111
	goto	u2110
u2111:
	goto	l30000927
u2110:
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_integer
	__end_of_lcd_integer:
; =============== function _lcd_integer ends ============

psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:
	line	74
	signat	_lcd_integer,4216
	global	___fttol

; *************** function ___fttol *****************
; Defined at:
;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
; Parameters:    Size  Location     Type
;  f1              3    0[BANK1 ] float 
; Auto vars:     Size  Location     Type
;  lval            4   43[BANK0 ] unsigned long 
;  exp1            1   47[BANK0 ] unsigned char 
;  sign1           1   42[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4    0[BANK1 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       9       4       0       0
;      Temp:     3
;      Total:   13
; This function calls:
; This function is called by:
;		_lcd_float
; This function uses a non-reentrant model
; 
psect	text143
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30000893:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+2)
	clrc
	rlf	(??___fttol+0+1),w
	rlf	(??___fttol+0+2),w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1))&07fh,f
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l30000896
u1990:
	
l30000894:	
	line	50
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l167
	
l30000896:	
	line	51
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+2)
	movlw	017h
u2005:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u2000:
	addlw	-1
	skipz
	goto	u2005
	movf	0+(??___fttol+0+0),w
	movwf	(___fttol@sign1)
	
l30000897:	
	line	52
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	
l30000898:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	
l30000899:	
	line	54
	movf	(___fttol@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@lval)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((___fttol@lval))+1
	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((___fttol@lval))+2
	
	clrf	3+(___fttol@lval)
	
l30000900:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	
l30000901:	
	line	56
	btfss	(___fttol@exp1),7
	goto	u2011
	goto	u2010
u2011:
	goto	l30000906
u2010:
	
l30000902:	
	line	57
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2021
	goto	u2020
u2021:
	goto	l30000905
u2020:
	goto	l30000894
	
l30000905:	
	line	60
	movlw	01h
u2035:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2035

	line	61
	movlw	(01h)
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l30000905
u2040:
	goto	l30000911
	
l30000906:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l30000910
u2050:
	goto	l30000894
	
l30000909:	
	line	66
	movlw	01h
	movwf	(??___fttol+0+0)
u2065:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0+0)
	goto	u2065
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	
l30000910:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2071
	goto	u2070
u2071:
	goto	l30000909
u2070:
	
l30000911:	
	line	70
	movf	(___fttol@sign1),w
	skipz
	goto	u2080
	goto	l30000913
u2080:
	
l30000912:	
	line	71
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	
l30000913:	
	line	72
	movf	(___fttol@lval+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@lval+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@lval+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@lval),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h

	
l167:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:
	line	73
	signat	___fttol,4220
	global	_lcd_command

; *************** function _lcd_command *****************
; Defined at:
;		line 11 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
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
;		_lcd_pattern
;		_main
; This function uses a non-reentrant model
; 
psect	text144
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	11
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
;lcd.c: 3: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3f3b");
;lcd.c: 10: void lcd_command(unsigned char x)
;lcd.c: 11: {int i=5000;
	
_lcd_command:	
	opt stack 6
; Regs used in _lcd_command: [wreg+status,2+status,0]
;lcd_command@x stored from wreg
	movwf	(lcd_command@x)
	
l30000867:	
	movlw	low(01388h)
	movwf	(lcd_command@i)
	movlw	high(01388h)
	movwf	((lcd_command@i))+1
	
l30000868:	
	line	12
;lcd.c: 12: PORTD=0xf0&x;
	movf	(lcd_command@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000869:	
	line	13
;lcd.c: 13: PORTD&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000870:	
	line	14
;lcd.c: 14: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000871:	
	line	15
;lcd.c: 15: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000872:	
	line	16
	movlw	low(-1)
	addwf	(lcd_command@i),f
	skipnc
	incf	(lcd_command@i+1),f
	movlw	high(-1)
	addwf	(lcd_command@i+1),f
	movlw	high(-1)
	xorwf	((lcd_command@i+1))&07fh,w
	skipz
	goto	u1965
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u1965:

	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l30000872
u1960:
	
l30000873:	
	line	17
;lcd.c: 17: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000874:	
	line	18
;lcd.c: 18: i=5000;
	movlw	low(01388h)
	movwf	(lcd_command@i)
	movlw	high(01388h)
	movwf	((lcd_command@i))+1
	
l30000875:	
	line	19
;lcd.c: 19: PORTD=(0x0f&x)<<4;
	movf	(lcd_command@x),w
	andlw	0Fh
	movwf	(??_lcd_command+0+0)
	movlw	(04h)-1
u1975:
	clrc
	rlf	(??_lcd_command+0+0),f
	addlw	-1
	skipz
	goto	u1975
	clrc
	rlf	(??_lcd_command+0+0),w
	movwf	(8)	;volatile
	
l30000876:	
	line	20
;lcd.c: 20: PORTD&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000877:	
	line	21
;lcd.c: 21: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000878:	
	line	22
;lcd.c: 22: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000879:	
	line	23
	movlw	low(-1)
	addwf	(lcd_command@i),f
	skipnc
	incf	(lcd_command@i+1),f
	movlw	high(-1)
	addwf	(lcd_command@i+1),f
	movlw	high(-1)
	xorwf	((lcd_command@i+1))&07fh,w
	skipz
	goto	u1985
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u1985:

	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l30000879
u1980:
	
l30000880:	
	line	24
;lcd.c: 24: PORTD&=~(1<<2);
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

psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:
	line	25
	signat	_lcd_command,4216
	global	_lcd_data

; *************** function _lcd_data *****************
; Defined at:
;		line 27 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
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
;		_lcd_float
;		_lcd_pattern
;		_main
; This function uses a non-reentrant model
; 
psect	text145
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\LCD_interfacing_4_bit\lcd.c"
	line	27
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
;lcd.c: 26: void lcd_data(unsigned char x)
;lcd.c: 27: {int i=5000;
	
_lcd_data:	
	opt stack 5
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@x stored from wreg
	movwf	(lcd_data@x)
	
l30000929:	
	movlw	low(01388h)
	movwf	(lcd_data@i)
	movlw	high(01388h)
	movwf	((lcd_data@i))+1
	
l30000930:	
	line	28
;lcd.c: 28: PORTD=0xf0&x;
	movf	(lcd_data@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000931:	
	line	29
;lcd.c: 29: PORTD|=(1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	
l30000932:	
	line	30
;lcd.c: 30: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000933:	
	line	31
;lcd.c: 31: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000934:	
	line	32
	movlw	low(-1)
	addwf	(lcd_data@i),f
	skipnc
	incf	(lcd_data@i+1),f
	movlw	high(-1)
	addwf	(lcd_data@i+1),f
	movlw	high(-1)
	xorwf	((lcd_data@i+1))&07fh,w
	skipz
	goto	u2125
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u2125:

	skipz
	goto	u2121
	goto	u2120
u2121:
	goto	l30000934
u2120:
	
l30000935:	
	line	33
;lcd.c: 33: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000936:	
	line	34
;lcd.c: 34: i=5000;
	movlw	low(01388h)
	movwf	(lcd_data@i)
	movlw	high(01388h)
	movwf	((lcd_data@i))+1
	
l30000937:	
	line	35
;lcd.c: 35: PORTD=(0x0f&x)<<4;
	movf	(lcd_data@x),w
	andlw	0Fh
	movwf	(??_lcd_data+0+0)
	movlw	(04h)-1
u2135:
	clrc
	rlf	(??_lcd_data+0+0),f
	addlw	-1
	skipz
	goto	u2135
	clrc
	rlf	(??_lcd_data+0+0),w
	movwf	(8)	;volatile
	
l30000938:	
	line	36
;lcd.c: 36: PORTD|=(1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	
l30000939:	
	line	37
;lcd.c: 37: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000940:	
	line	38
;lcd.c: 38: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000941:	
	line	39
	movlw	low(-1)
	addwf	(lcd_data@i),f
	skipnc
	incf	(lcd_data@i+1),f
	movlw	high(-1)
	addwf	(lcd_data@i+1),f
	movlw	high(-1)
	xorwf	((lcd_data@i+1))&07fh,w
	skipz
	goto	u2145
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u2145:

	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l30000941
u2140:
	
l30000942:	
	line	40
;lcd.c: 40: PORTD&=~(1<<2);
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

psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:
	line	41
	signat	_lcd_data,4216
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
psect	text146
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000973:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@sign)
	
l30000974:	
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2251
	goto	u2250
u2251:
	goto	l30000977
u2250:
	
l30000975:	
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
	
l30000976:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000977:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u2261
	goto	u2260
u2261:
	goto	l30000980
u2260:
	
l30000978:	
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
	
l30000979:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000980:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000981:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l30000991
u2270:
	
l30000982:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000984
	
l30000983:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u2285:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u2285
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000984:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l30000983
u2290:
	
l30000985:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u2305:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u2305
	
l30000986:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2315
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2315
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2315
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2315:
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l30000989
u2310:
	
l30000987:	
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
	
l30000988:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000989:	
	line	31
	movlw	01h
u2325:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2325

	
l30000990:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l30000985
u2330:
	
l30000991:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u2340
	goto	l30000993
u2340:
	
l30000992:	
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
	
l30000993:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l253:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:
	line	37
	signat	___aldiv,8316
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
psect	text147
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt stack 5
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l30000995:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	
l30000996:	
	line	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___lmul@multiplier),(0)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l30000998
u2350:
	
l30000997:	
	line	8
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2361
	addwf	(___lmul@product+1),f
u2361:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2362
	addwf	(___lmul@product+2),f
u2362:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2363
	addwf	(___lmul@product+3),f
u2363:

	
l30000998:	
	line	9
	movlw	01h
	movwf	(??___lmul+0+0)
u2375:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0+0)
	goto	u2375
	
l30000999:	
	line	10
	movlw	01h
u2385:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2385

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l30000996
u2390:
	
l30001000:	
	line	12
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	
l101:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
; =============== function ___lmul ends ============

psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
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
psect	text148
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt stack 5
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l30000957:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___almod@sign)
	
l30000958:	
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___almod@dividend+3),7
	goto	u2161
	goto	u2160
u2161:
	goto	l30000961
u2160:
	
l30000959:	
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
	
l30000960:	
	line	11
	clrf	(___almod@sign)
	bsf	status,0
	rlf	(___almod@sign),f
	
l30000961:	
	line	13
	btfss	(___almod@divisor+3),7
	goto	u2171
	goto	u2170
u2171:
	goto	l30000963
u2170:
	
l30000962:	
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
	
l30000963:	
	line	15
	movf	(___almod@divisor+3),w
	iorwf	(___almod@divisor+2),w
	iorwf	(___almod@divisor+1),w
	iorwf	(___almod@divisor),w
	skipnz
	goto	u2181
	goto	u2180
u2181:
	goto	l30000971
u2180:
	
l30000964:	
	line	16
	clrf	(___almod@counter)
	bsf	status,0
	rlf	(___almod@counter),f
	goto	l30000966
	
l30000965:	
	line	18
	movlw	01h
	movwf	(??___almod+0+0)
u2195:
	clrc
	rlf	(___almod@divisor),f
	rlf	(___almod@divisor+1),f
	rlf	(___almod@divisor+2),f
	rlf	(___almod@divisor+3),f
	decfsz	(??___almod+0+0)
	goto	u2195
	line	19
	movlw	(01h)
	movwf	(??___almod+0+0)
	movf	(??___almod+0+0),w
	addwf	(___almod@counter),f
	
l30000966:	
	line	17
	btfss	(___almod@divisor+3),(31)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l30000965
u2200:
	
l30000967:	
	line	22
	movf	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),w
	skipz
	goto	u2215
	movf	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),w
	skipz
	goto	u2215
	movf	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),w
	skipz
	goto	u2215
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),w
u2215:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l30000969
u2210:
	
l30000968:	
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
	
l30000969:	
	line	24
	movlw	01h
u2225:
	clrc
	rrf	(___almod@divisor+3),f
	rrf	(___almod@divisor+2),f
	rrf	(___almod@divisor+1),f
	rrf	(___almod@divisor),f
	addlw	-1
	skipz
	goto	u2225

	
l30000970:	
	line	25
	movlw	low(01h)
	subwf	(___almod@counter),f
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l30000967
u2230:
	
l30000971:	
	line	27
	movf	(___almod@sign),w
	skipz
	goto	u2240
	goto	l252
u2240:
	
l30000972:	
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
	
l252:	
	line	29
	
l241:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
; =============== function ___almod ends ============

psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	line	30
	signat	___almod,8316
	global	___ftpack

; *************** function ___ftpack *****************
; Defined at:
;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
; Parameters:    Size  Location     Type
;  arg             3    0[BANK0 ] unsigned um
;  exp             1    3[BANK0 ] unsigned char 
;  sign            1    4[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  3    0[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       5       0       0       0
;      Temp:     3
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		___ftadd
;		___ftmul
;		___awtoft
; This function uses a non-reentrant model
; 
psect	text149
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30000733:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u1270
	goto	l30000735
u1270:
	
l30000734:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l30000738
u1280:
	
l30000735:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l370
	
l30000737:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1295:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1295

	
l30000738:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l30000737
u1300:
	goto	l375
	
l30000739:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30000740:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1311
	addwf	(___ftpack@arg+1),f
u1311:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1312
	addwf	(___ftpack@arg+2),f
u1312:

	
l30000741:	
	line	73
	movlw	01h
u1325:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1325

	
l375:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l30000739
u1330:
	goto	l30000743
	
l30000742:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1345:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1345
	
l30000743:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l30000742
u1350:
	
l380:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l381
u1360:
	
l30000744:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l381:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30000745:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u1375:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u1370:
	addlw	-1
	skipz
	goto	u1375
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30000746:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u1380
	goto	l382
u1380:
	
l30000747:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l382:	
	line	85
	
l370:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:
	line	86
	signat	___ftpack,12411
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
