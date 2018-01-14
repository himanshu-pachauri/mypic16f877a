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
# 4 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
	dw 0x3a3b ;#
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
;COMMON:	_lcd_integer->___ftadd
;BANK0:	___ftadd->___ftneg
;COMMON:	___ftneg->___awtoft
;BANK0:	___ftneg->___awtoft
;COMMON:	___ftadd->___awtoft
	FNCALL	_main,_lcd_init
	FNCALL	_main,_adc_ini
	FNCALL	_main,_adc_read
	FNCALL	_main,_lcd_integer
	FNCALL	_main,_lcd_command
	FNCALL	_lcd_integer,___aldiv
	FNCALL	_lcd_integer,___lmul
	FNCALL	_lcd_integer,_lcd_data
	FNCALL	_lcd_integer,___almod
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_init,_lcd_data
	FNROOT	_main
	global	_ADCON0
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
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
	file	"ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_adc_read
??_adc_read: ;@ 0x0
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	??___lmul
??___lmul: ;@ 0x0
	global	??___almod
??___almod: ;@ 0x0
	global	??_lcd_command
??_lcd_command: ;@ 0x0
	global	??_lcd_data
??_lcd_data: ;@ 0x0
	global	?_adc_ini
?_adc_ini: ;@ 0x0
	global	??_adc_ini
??_adc_ini: ;@ 0x0
	ds	1
	global	??_lcd_init
??_lcd_init: ;@ 0x1
	global	lcd_data@x
lcd_data@x:	; 1 bytes @ 0x1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x1
	global	lcd_command@i
lcd_command@i:	; 2 bytes @ 0x1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x1
	ds	1
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x2
	global	lcd_data@i
lcd_data@i:	; 2 bytes @ 0x2
	ds	1
	global	lcd_command@x
lcd_command@x:	; 1 bytes @ 0x3
	global	adc_read@i
adc_read@i:	; 2 bytes @ 0x3
	ds	1
	global	?_lcd_command
?_lcd_command: ;@ 0x4
	global	?_lcd_init
?_lcd_init: ;@ 0x4
	global	?_lcd_data
?_lcd_data: ;@ 0x4
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_adc_read
?_adc_read: ;@ 0x0
	global	?___almod
?___almod: ;@ 0x0
	global	?___lmul
?___lmul: ;@ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x0
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
	ds	2
	global	??_main
??_main: ;@ 0x8
	ds	2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xA
	ds	42
	global	??_lcd_integer
??_lcd_integer: ;@ 0x34
	ds	1
	global	lcd_integer@y
lcd_integer@y:	; 4 bytes @ 0x35
	ds	4
	global	lcd_integer@m
lcd_integer@m:	; 4 bytes @ 0x39
	ds	4
	global	?_lcd_integer
?_lcd_integer: ;@ 0x3D
	global	lcd_integer@x
lcd_integer@x:	; 4 bytes @ 0x3D
	ds	4
	global	?_main
?_main: ;@ 0x41
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14     13      13
; BANK0           80     65      65
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___aldiv	long  size(1); Largest target is 0
;?___lmul	unsigned long  size(1); Largest target is 0
;?___almod	long  size(1); Largest target is 0
;?_adc_read	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 6296   0.00
;           _lcd_init
;            _adc_ini
;           _adc_read
;        _lcd_integer
;        _lcd_command
;  _adc_ini                                           0    0    0   0.00
;  _adc_read                                          5    2   18   0.00
;                                    0 COMMO    5
;                                    0 BANK0    2
;  _lcd_integer                                       9    4 6132   0.00
;                                   52 BANK0   13
;            ___aldiv
;             ___lmul
;           _lcd_data
;            ___almod
;           _adc_read (ARG)
;  _lcd_init                                          0    0  106   0.00
;        _lcd_command
;           _lcd_data
;    ___lmul                                          5    8   68   0.00
;                                    0 COMMO    5
;                                    0 BANK0    8
;    ___almod                                         3    8  218   0.00
;                                    0 COMMO    3
;                                    0 BANK0    8
;    ___aldiv                                         7    8  354   0.00
;                                    0 COMMO    1
;                                    0 BANK0   14
;    _lcd_command                                     4    0   40   0.00
;                                    0 COMMO    4
;    _lcd_data                                        4    0   66   0.00
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
;ABS                  0      0      10       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     41      41       5       81.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      10      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 20 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_lcd_init
;		_adc_ini
;		_adc_read
;		_lcd_integer
;		_lcd_command
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;adc.c: 19: void main()
;adc.c: 20: {TRISB=0x00;
	
_main:	
	opt stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	
l30000847:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000848:	
	line	21
;adc.c: 21: lcd_init();
	fcall	_lcd_init
	
l30000849:	
	line	22
;adc.c: 22: adc_ini();
	fcall	_adc_ini
	line	23
;adc.c: 23: PORTB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000850:	
	line	26
;adc.c: 25: {
;adc.c: 26: lcd_integer(adc_read());
	fcall	_adc_read
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_adc_read)),w
	movwf	(?_lcd_integer)
	movf	(1+(?_adc_read)),w
	movwf	(?_lcd_integer+1)
	movlw	0
	btfsc	(?_lcd_integer+1),7
	movlw	255
	movwf	(?_lcd_integer+2)
	movwf	(?_lcd_integer+3)
	fcall	_lcd_integer
	
l30000851:	
	line	27
;adc.c: 27: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	goto	l30000850
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	34
	signat	_main,88
	global	_adc_ini
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

; *************** function _adc_ini *****************
; Defined at:
;		line 7 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text111
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
	line	7
	global	__size_of_adc_ini
	__size_of_adc_ini	equ	__end_of_adc_ini-_adc_ini
;adc.c: 4: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3a3b");
;adc.c: 6: void adc_ini()
;adc.c: 7: {
	
_adc_ini:	
	opt stack 7
; Regs used in _adc_ini: [wreg]
	line	8
	
l30000472:	
;adc.c: 8: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	9
;adc.c: 9: ADCON0=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l32:	
	return
	opt stack 0
GLOBAL	__end_of_adc_ini
	__end_of_adc_ini:
; =============== function _adc_ini ends ============

psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	line	10
	signat	_adc_ini,88
	global	_adc_read

; *************** function _adc_read *****************
; Defined at:
;		line 13 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               2    3[COMMON] int 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         5       2       0       0       0
;      Temp:     3
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text112
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\adc.c"
	line	13
	global	__size_of_adc_read
	__size_of_adc_read	equ	__end_of_adc_read-_adc_read
;adc.c: 12: int adc_read()
;adc.c: 13: {int i=0;
	
_adc_read:	
	opt stack 7
; Regs used in _adc_read: [wreg+status,2+status,0]
	line	14
	
l30000910:	
;adc.c: 14: ADCON0=0x01|(1<<2);
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l30000911:	
	line	15
	movf	(31),w	;volatile
	andlw	04h
	xorlw	01h
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l30000911
u2360:
	
l30000912:	
	line	16
;adc.c: 16: i=(ADRESH<<8)|(ADRESL);
	movf	(30),w	;volatile
	movwf	(??_adc_read+0+0)
	clrf	(??_adc_read+0+0+1)
	movlw	08h
	movwf	(??_adc_read+2+0)
u2375:
	clrc
	rlf	(??_adc_read+0+0),f
	rlf	(??_adc_read+0+1),f
	decfsz	(??_adc_read+2+0),f
	goto	u2375
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	0+(??_adc_read+0+0),w
	movwf	(adc_read@i)
	movf	1+(??_adc_read+0+0),w
	movwf	1+(adc_read@i)
	
l30000913:	
	line	17
;adc.c: 17: return i;
	movf	(adc_read@i+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_adc_read+1)
	addwf	(?_adc_read+1)
	movf	(adc_read@i),w
	clrf	(?_adc_read)
	addwf	(?_adc_read)

	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_adc_read
	__end_of_adc_read:
; =============== function _adc_read ends ============

psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:
	line	18
	signat	_adc_read,90
	global	_lcd_integer

; *************** function _lcd_integer *****************
; Defined at:
;		line 56 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
; Parameters:    Size  Location     Type
;  x               4   61[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  m               4   57[BANK0 ] long 
;  y               4   53[BANK0 ] long 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      13       0       0       0
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
psect	text113
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
	line	56
	global	__size_of_lcd_integer
	__size_of_lcd_integer	equ	__end_of_lcd_integer-_lcd_integer
;lcd.h: 55: void lcd_integer(long int x)
;lcd.h: 56: {long int y=x;
	
_lcd_integer:	
	opt stack 7
; Regs used in _lcd_integer: [wreg+status,2+status,0+pclath+cstack]
	
l30000937:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_integer@x+3),w
	movwf	(lcd_integer@y+3)
	movf	(lcd_integer@x+2),w
	movwf	(lcd_integer@y+2)
	movf	(lcd_integer@x+1),w
	movwf	(lcd_integer@y+1)
	movf	(lcd_integer@x),w
	movwf	(lcd_integer@y)

	line	57
;lcd.h: 57: long int m=1;
	movlw	0
	movwf	(lcd_integer@m+3)
	movlw	0
	movwf	(lcd_integer@m+2)
	movlw	0
	movwf	(lcd_integer@m+1)
	movlw	01h
	movwf	(lcd_integer@m)

	goto	l30000939
	
l30000938:	
	line	60
;lcd.h: 59: {
;lcd.h: 60: y/=10;
	movf	(lcd_integer@y+3),w
	movwf	(?___aldiv+3)
	movf	(lcd_integer@y+2),w
	movwf	(?___aldiv+2)
	movf	(lcd_integer@y+1),w
	movwf	(?___aldiv+1)
	movf	(lcd_integer@y),w
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
	movwf	(lcd_integer@y+3)
	movf	(2+(?___aldiv)),w
	movwf	(lcd_integer@y+2)
	movf	(1+(?___aldiv)),w
	movwf	(lcd_integer@y+1)
	movf	(0+(?___aldiv)),w
	movwf	(lcd_integer@y)

	line	61
;lcd.h: 61: m*=10;
	movf	(lcd_integer@m+3),w
	movwf	(?___lmul+3)
	movf	(lcd_integer@m+2),w
	movwf	(?___lmul+2)
	movf	(lcd_integer@m+1),w
	movwf	(?___lmul+1)
	movf	(lcd_integer@m),w
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
	movwf	(lcd_integer@m+3)
	movf	(2+(?___lmul)),w
	movwf	(lcd_integer@m+2)
	movf	(1+(?___lmul)),w
	movwf	(lcd_integer@m+1)
	movf	(0+(?___lmul)),w
	movwf	(lcd_integer@m)

	
l30000939:	
	line	58
	movf	(lcd_integer@y+3),w
	xorlw	80h
	movwf	(??_lcd_integer+0+0)
	movlw	high highword(0Ah)^80h
	subwf	(??_lcd_integer+0+0),w
	skipz
	goto	u2484
	movlw	low highword(0Ah)
	subwf	(lcd_integer@y+2),w
	skipz
	goto	u2484
	movlw	high(0Ah)
	subwf	(lcd_integer@y+1),w
	skipz
	goto	u2484
	movlw	low(0Ah)
	subwf	(lcd_integer@y),w
u2484:

	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l30000938
u2480:
	goto	l30000941
	
l30000940:	
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

	movf	(lcd_integer@m+3),w
	movwf	3+(?___aldiv)+04h
	movf	(lcd_integer@m+2),w
	movwf	2+(?___aldiv)+04h
	movf	(lcd_integer@m+1),w
	movwf	1+(?___aldiv)+04h
	movf	(lcd_integer@m),w
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

	movf	(lcd_integer@m+3),w
	movwf	3+(?___almod)+04h
	movf	(lcd_integer@m+2),w
	movwf	2+(?___almod)+04h
	movf	(lcd_integer@m+1),w
	movwf	1+(?___almod)+04h
	movf	(lcd_integer@m),w
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
	movf	(lcd_integer@m+3),w
	movwf	(?___aldiv+3)
	movf	(lcd_integer@m+2),w
	movwf	(?___aldiv+2)
	movf	(lcd_integer@m+1),w
	movwf	(?___aldiv+1)
	movf	(lcd_integer@m),w
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
	movwf	(lcd_integer@m+3)
	movf	(2+(?___aldiv)),w
	movwf	(lcd_integer@m+2)
	movf	(1+(?___aldiv)),w
	movwf	(lcd_integer@m+1)
	movf	(0+(?___aldiv)),w
	movwf	(lcd_integer@m)

	
l30000941:	
	line	63
	movf	(lcd_integer@m+3),w
	xorlw	80h
	movwf	(??_lcd_integer+0+0)
	movlw	high highword(01h)^80h
	subwf	(??_lcd_integer+0+0),w
	skipz
	goto	u2494
	movlw	low highword(01h)
	subwf	(lcd_integer@m+2),w
	skipz
	goto	u2494
	movlw	high(01h)
	subwf	(lcd_integer@m+1),w
	skipz
	goto	u2494
	movlw	low(01h)
	subwf	(lcd_integer@m),w
u2494:

	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l30000940
u2490:
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_integer
	__end_of_lcd_integer:
; =============== function _lcd_integer ends ============

psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	line	70
	signat	_lcd_integer,4216
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 39 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
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
psect	text114
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
	line	39
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lcd.h: 38: void lcd_init()
;lcd.h: 39: {
	
_lcd_init:	
	opt stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l30000691:	
;lcd.h: 40: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000692:	
	line	41
;lcd.h: 41: lcd_command(0x02);
	movlw	(02h)
	fcall	_lcd_command
	
l30000693:	
	line	42
;lcd.h: 42: lcd_command(0x28);
	movlw	(028h)
	fcall	_lcd_command
	
l30000694:	
	line	43
;lcd.h: 43: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	
l30000695:	
	line	44
;lcd.h: 44: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	
l30000696:	
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

psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
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
psect	text115
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt stack 6
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l30000600:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	
l30000601:	
	line	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___lmul@multiplier),(0)&7
	goto	u771
	goto	u770
u771:
	goto	l30000603
u770:
	
l30000602:	
	line	8
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u781
	addwf	(___lmul@product+1),f
u781:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u782
	addwf	(___lmul@product+2),f
u782:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u783
	addwf	(___lmul@product+3),f
u783:

	
l30000603:	
	line	9
	movlw	01h
	movwf	(??___lmul+0+0)
u795:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0+0)
	goto	u795
	
l30000604:	
	line	10
	movlw	01h
u805:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u805

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u811
	goto	u810
u811:
	goto	l30000601
u810:
	
l30000605:	
	line	12
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	
l106:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
; =============== function ___lmul ends ============

psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:
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
psect	text116
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt stack 6
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l30000617:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___almod@sign)
	
l30000618:	
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___almod@dividend+3),7
	goto	u841
	goto	u840
u841:
	goto	l30000621
u840:
	
l30000619:	
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
	
l30000620:	
	line	11
	clrf	(___almod@sign)
	bsf	status,0
	rlf	(___almod@sign),f
	
l30000621:	
	line	13
	btfss	(___almod@divisor+3),7
	goto	u851
	goto	u850
u851:
	goto	l30000623
u850:
	
l30000622:	
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
	
l30000623:	
	line	15
	movf	(___almod@divisor+3),w
	iorwf	(___almod@divisor+2),w
	iorwf	(___almod@divisor+1),w
	iorwf	(___almod@divisor),w
	skipnz
	goto	u861
	goto	u860
u861:
	goto	l30000631
u860:
	
l30000624:	
	line	16
	clrf	(___almod@counter)
	bsf	status,0
	rlf	(___almod@counter),f
	goto	l30000626
	
l30000625:	
	line	18
	movlw	01h
	movwf	(??___almod+0+0)
u875:
	clrc
	rlf	(___almod@divisor),f
	rlf	(___almod@divisor+1),f
	rlf	(___almod@divisor+2),f
	rlf	(___almod@divisor+3),f
	decfsz	(??___almod+0+0)
	goto	u875
	line	19
	movlw	(01h)
	movwf	(??___almod+0+0)
	movf	(??___almod+0+0),w
	addwf	(___almod@counter),f
	
l30000626:	
	line	17
	btfss	(___almod@divisor+3),(31)&7
	goto	u881
	goto	u880
u881:
	goto	l30000625
u880:
	
l30000627:	
	line	22
	movf	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),w
	skipz
	goto	u895
	movf	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),w
	skipz
	goto	u895
	movf	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),w
	skipz
	goto	u895
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),w
u895:
	skipc
	goto	u891
	goto	u890
u891:
	goto	l30000629
u890:
	
l30000628:	
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
	
l30000629:	
	line	24
	movlw	01h
u905:
	clrc
	rrf	(___almod@divisor+3),f
	rrf	(___almod@divisor+2),f
	rrf	(___almod@divisor+1),f
	rrf	(___almod@divisor),f
	addlw	-1
	skipz
	goto	u905

	
l30000630:	
	line	25
	movlw	low(01h)
	subwf	(___almod@counter),f
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l30000627
u910:
	
l30000631:	
	line	27
	movf	(___almod@sign),w
	skipz
	goto	u920
	goto	l257
u920:
	
l30000632:	
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
	
l257:	
	line	29
	
l246:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
; =============== function ___almod ends ============

psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:
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
psect	text117
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000915:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@sign)
	
l30000916:	
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2381
	goto	u2380
u2381:
	goto	l30000919
u2380:
	
l30000917:	
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
	
l30000918:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000919:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u2391
	goto	u2390
u2391:
	goto	l30000922
u2390:
	
l30000920:	
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
	
l30000921:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000922:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000923:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l30000933
u2400:
	
l30000924:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000926
	
l30000925:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u2415:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u2415
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000926:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l30000925
u2420:
	
l30000927:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u2435:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u2435
	
l30000928:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2445
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2445
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2445
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2445:
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l30000931
u2440:
	
l30000929:	
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
	
l30000930:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000931:	
	line	31
	movlw	01h
u2455:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2455

	
l30000932:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l30000927
u2460:
	
l30000933:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u2470
	goto	l30000935
u2470:
	
l30000934:	
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
	
l30000935:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l258:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
	line	37
	signat	___aldiv,8316
	global	_lcd_command

; *************** function _lcd_command *****************
; Defined at:
;		line 7 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    3[COMMON] unsigned char 
;  i               2    1[COMMON] int 
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
;		_main
; This function uses a non-reentrant model
; 
psect	text118
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
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
	
l30000433:	
	movlw	low(01388h)
	movwf	(lcd_command@i)
	movlw	high(01388h)
	movwf	((lcd_command@i))+1
	
l30000434:	
	line	8
;lcd.h: 8: PORTB=0xf0&x;
	movf	(lcd_command@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000435:	
	line	9
;lcd.h: 9: PORTB&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000436:	
	line	10
;lcd.h: 10: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000437:	
	line	11
;lcd.h: 11: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000438:	
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
	goto	u15
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l30000438
u10:
	
l30000439:	
	line	13
;lcd.h: 13: PORTB&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000440:	
	line	14
;lcd.h: 14: i=5000;
	movlw	low(01388h)
	movwf	(lcd_command@i)
	movlw	high(01388h)
	movwf	((lcd_command@i))+1
	
l30000441:	
	line	15
;lcd.h: 15: PORTB=(0x0f&x)<<4;
	movf	(lcd_command@x),w
	andlw	0Fh
	movwf	(??_lcd_command+0+0)
	movlw	(04h)-1
u25:
	clrc
	rlf	(??_lcd_command+0+0),f
	addlw	-1
	skipz
	goto	u25
	clrc
	rlf	(??_lcd_command+0+0),w
	movwf	(6)	;volatile
	
l30000442:	
	line	16
;lcd.h: 16: PORTB&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000443:	
	line	17
;lcd.h: 17: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000444:	
	line	18
;lcd.h: 18: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000445:	
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
	goto	u35
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u35:

	skipz
	goto	u31
	goto	u30
u31:
	goto	l30000445
u30:
	
l30000446:	
	line	20
;lcd.h: 20: PORTB&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
; =============== function _lcd_command ends ============

psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:
	line	21
	signat	_lcd_command,4216
	global	_lcd_data

; *************** function _lcd_data *****************
; Defined at:
;		line 23 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
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
psect	text119
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\ADC\lcd.h"
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
	
l30000677:	
	movlw	low(01388h)
	movwf	(lcd_data@i)
	movlw	high(01388h)
	movwf	((lcd_data@i))+1
	
l30000678:	
	line	24
;lcd.h: 24: PORTB=0xf0&x;
	movf	(lcd_data@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000679:	
	line	25
;lcd.h: 25: PORTB|=(1<<0);
	bsf	(6)+(0/8),(0)&7	;volatile
	
l30000680:	
	line	26
;lcd.h: 26: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l30000681:	
	line	27
;lcd.h: 27: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000682:	
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
	goto	u1135
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u1135:

	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l30000682
u1130:
	
l30000683:	
	line	29
;lcd.h: 29: PORTB&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l30000684:	
	line	30
;lcd.h: 30: i=5000;
	movlw	low(01388h)
	movwf	(lcd_data@i)
	movlw	high(01388h)
	movwf	((lcd_data@i))+1
	
l30000685:	
	line	31
;lcd.h: 31: PORTB=(0x0f&x)<<4;
	movf	(lcd_data@x),w
	andlw	0Fh
	movwf	(??_lcd_data+0+0)
	movlw	(04h)-1
u1145:
	clrc
	rlf	(??_lcd_data+0+0),f
	addlw	-1
	skipz
	goto	u1145
	clrc
	rlf	(??_lcd_data+0+0),w
	movwf	(6)	;volatile
	
l30000686:	
	line	32
;lcd.h: 32: PORTB|=(1<<0);
	bsf	(6)+(0/8),(0)&7	;volatile
	
l30000687:	
	line	33
;lcd.h: 33: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l30000688:	
	line	34
;lcd.h: 34: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000689:	
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
	goto	u1155
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u1155:

	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l30000689
u1150:
	
l30000690:	
	line	36
;lcd.h: 36: PORTB&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
; =============== function _lcd_data ends ============

psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:
	line	37
	signat	_lcd_data,4216
	end
