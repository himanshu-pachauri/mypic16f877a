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
# 4 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
	dw 0x3a3b ;#
;COMMON:	_main->_lcd_data
	FNCALL	_main,_lcd_init
	FNCALL	_main,_usart_ini
	FNCALL	_main,_usart_rx
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_init,_lcd_data
	FNROOT	_main
	global	_ADCON0
psect	text19,local,class=CODE,delta=2
global __ptext19
__ptext19:
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
	file	"usart.as"
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
	global	?_usart_ini
?_usart_ini: ;@ 0x0
	global	??_usart_ini
??_usart_ini: ;@ 0x0
	global	??_usart_rx
??_usart_rx: ;@ 0x0
	global	??_lcd_data
??_lcd_data: ;@ 0x0
	global	??_lcd_command
??_lcd_command: ;@ 0x0
	global	?_usart_rx
?_usart_rx: ;@ 0x0
	ds	1
	global	??_lcd_init
??_lcd_init: ;@ 0x1
	global	??_main
??_main: ;@ 0x1
	global	lcd_data@i
lcd_data@i:	; 2 bytes @ 0x1
	global	lcd_command@i
lcd_command@i:	; 2 bytes @ 0x1
	ds	2
	global	lcd_data@x
lcd_data@x:	; 1 bytes @ 0x3
	global	lcd_command@x
lcd_command@x:	; 1 bytes @ 0x3
	ds	1
	global	?_main
?_main: ;@ 0x4
	global	?_lcd_data
?_lcd_data: ;@ 0x4
	global	?_lcd_command
?_lcd_command: ;@ 0x4
	global	?_lcd_init
?_lcd_init: ;@ 0x4
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      4       4
; BANK0           80      0       0
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                2    0  120   0.00
;           _lcd_init
;          _usart_ini
;           _usart_rx
;           _lcd_data
;  _usart_ini                                         0    0    0   0.00
;  _usart_rx                                          0    0    0   0.00
;  _lcd_init                                          0    0   80   0.00
;        _lcd_command
;           _lcd_data
;    _lcd_command                                     4    0   40   0.00
;                                    0 COMMO    4
;    _lcd_data                                        4    0   40   0.00
;                                    0 COMMO    4
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      4       4       1       28.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       1       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0       1      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 32 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               2    0        int 
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
;		_usart_ini
;		_usart_rx
;		_lcd_data
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;usart.c: 31: void main()
;usart.c: 32: {TRISD=0x00;
	
_main:	
	opt stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	
l30000464:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000465:	
	line	34
;usart.c: 33: int i;
;usart.c: 34: lcd_init();
	fcall	_lcd_init
	
l30000466:	
	line	35
;usart.c: 35: usart_ini();
	fcall	_usart_ini
	
l30000467:	
	line	39
;usart.c: 37: {
;usart.c: 39: lcd_data(usart_rx());
	fcall	_usart_rx
	fcall	_lcd_data
	goto	l30000467
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	50
	signat	_main,88
	global	_usart_ini
psect	text20,local,class=CODE,delta=2
global __ptext20
__ptext20:

; *************** function _usart_ini *****************
; Defined at:
;		line 7 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
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
psect	text20
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
	line	7
	global	__size_of_usart_ini
	__size_of_usart_ini	equ	__end_of_usart_ini-_usart_ini
;usart.c: 4: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3a3b");
;usart.c: 6: void usart_ini()
;usart.c: 7: {
	
_usart_ini:	
	opt stack 7
; Regs used in _usart_ini: [wreg]
	line	8
	
l30000458:	
;usart.c: 8: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	
l30000459:	
	line	9
;usart.c: 9: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	10
;usart.c: 10: RCSTA=0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	11
;usart.c: 11: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	
l30000460:	
	line	13
;usart.c: 13: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l32:	
	return
	opt stack 0
GLOBAL	__end_of_usart_ini
	__end_of_usart_ini:
; =============== function _usart_ini ends ============

psect	text21,local,class=CODE,delta=2
global __ptext21
__ptext21:
	line	14
	signat	_usart_ini,88
	global	_usart_rx

; *************** function _usart_rx *****************
; Defined at:
;		line 16 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
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
psect	text21
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\usart.c"
	line	16
	global	__size_of_usart_rx
	__size_of_usart_rx	equ	__end_of_usart_rx-_usart_rx
;usart.c: 15: unsigned char usart_rx()
;usart.c: 16: {while(RCIF!=1);
	
_usart_rx:	
	opt stack 7
; Regs used in _usart_rx: [wreg]
	
l30000461:	
	
l34:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u71
	goto	u70
u71:
	goto	l34
u70:
	
l36:	
	line	17
;usart.c: 17: RCIF=0;
	bcf	(101/8),(101)&7
	
l30000462:	
	line	18
;usart.c: 18: return RCREG;
	movf	(26),w	;volatile
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_usart_rx
	__end_of_usart_rx:
; =============== function _usart_rx ends ============

psect	text22,local,class=CODE,delta=2
global __ptext22
__ptext22:
	line	23
	signat	_usart_rx,89
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 39 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\lcd.h"
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
psect	text22
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\lcd.h"
	line	39
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lcd.h: 38: void lcd_init()
;lcd.h: 39: {
	
_lcd_init:	
	opt stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l30000452:	
;lcd.h: 40: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000453:	
	line	41
;lcd.h: 41: lcd_command(0x02);
	movlw	(02h)
	fcall	_lcd_command
	
l30000454:	
	line	42
;lcd.h: 42: lcd_command(0x28);
	movlw	(028h)
	fcall	_lcd_command
	
l30000455:	
	line	43
;lcd.h: 43: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	
l30000456:	
	line	44
;lcd.h: 44: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	
l30000457:	
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

psect	text23,local,class=CODE,delta=2
global __ptext23
__ptext23:
	line	46
	signat	_lcd_init,88
	global	_lcd_command

; *************** function _lcd_command *****************
; Defined at:
;		line 7 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\lcd.h"
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
; This function uses a non-reentrant model
; 
psect	text23
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\lcd.h"
	line	7
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
;lcd.h: 6: void lcd_command(unsigned char x)
;lcd.h: 7: {int i=500;
	
_lcd_command:	
	opt stack 6
; Regs used in _lcd_command: [wreg+status,2+status,0]
;lcd_command@x stored from wreg
	movwf	(lcd_command@x)
	
l30000424:	
	movlw	low(01F4h)
	movwf	(lcd_command@i)
	movlw	high(01F4h)
	movwf	((lcd_command@i))+1
	
l30000425:	
	line	8
;lcd.h: 8: PORTB=0xf0&x;
	movf	(lcd_command@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000426:	
	line	9
;lcd.h: 9: PORTB&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000427:	
	line	10
;lcd.h: 10: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000428:	
	line	11
;lcd.h: 11: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000429:	
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
	goto	l30000429
u10:
	
l30000430:	
	line	13
;lcd.h: 13: PORTB&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000431:	
	line	14
;lcd.h: 14: i=500;
	movlw	low(01F4h)
	movwf	(lcd_command@i)
	movlw	high(01F4h)
	movwf	((lcd_command@i))+1
	
l30000432:	
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
	
l30000433:	
	line	16
;lcd.h: 16: PORTB&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000434:	
	line	17
;lcd.h: 17: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(6),f	;volatile
	
l30000435:	
	line	18
;lcd.h: 18: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000436:	
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
	goto	l30000436
u30:
	
l30000437:	
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

psect	text24,local,class=CODE,delta=2
global __ptext24
__ptext24:
	line	21
	signat	_lcd_command,4216
	global	_lcd_data

; *************** function _lcd_data *****************
; Defined at:
;		line 23 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\lcd.h"
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
psect	text24
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\usart\lcd.h"
	line	23
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
;lcd.h: 22: void lcd_data(unsigned char x)
;lcd.h: 23: {int i=500;
	
_lcd_data:	
	opt stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@x stored from wreg
	movwf	(lcd_data@x)
	
l30000438:	
	movlw	low(01F4h)
	movwf	(lcd_data@i)
	movlw	high(01F4h)
	movwf	((lcd_data@i))+1
	
l30000439:	
	line	24
;lcd.h: 24: PORTB=0xf0&x;
	movf	(lcd_data@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000440:	
	line	25
;lcd.h: 25: PORTB|=(1<<0);
	bsf	(6)+(0/8),(0)&7	;volatile
	
l30000441:	
	line	26
;lcd.h: 26: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l30000442:	
	line	27
;lcd.h: 27: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000443:	
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
	goto	u45
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u45:

	skipz
	goto	u41
	goto	u40
u41:
	goto	l30000443
u40:
	
l30000444:	
	line	29
;lcd.h: 29: PORTB&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l30000445:	
	line	30
;lcd.h: 30: i=500;
	movlw	low(01F4h)
	movwf	(lcd_data@i)
	movlw	high(01F4h)
	movwf	((lcd_data@i))+1
	
l30000446:	
	line	31
;lcd.h: 31: PORTB=(0x0f&x)<<4;
	movf	(lcd_data@x),w
	andlw	0Fh
	movwf	(??_lcd_data+0+0)
	movlw	(04h)-1
u55:
	clrc
	rlf	(??_lcd_data+0+0),f
	addlw	-1
	skipz
	goto	u55
	clrc
	rlf	(??_lcd_data+0+0),w
	movwf	(6)	;volatile
	
l30000447:	
	line	32
;lcd.h: 32: PORTB|=(1<<0);
	bsf	(6)+(0/8),(0)&7	;volatile
	
l30000448:	
	line	33
;lcd.h: 33: PORTB&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(6),f	;volatile
	
l30000449:	
	line	34
;lcd.h: 34: PORTB|=(1<<2);
	bsf	(6)+(2/8),(2)&7	;volatile
	
l30000450:	
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
	goto	u65
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u65:

	skipz
	goto	u61
	goto	u60
u61:
	goto	l30000450
u60:
	
l30000451:	
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

psect	text25,local,class=CODE,delta=2
global __ptext25
__ptext25:
	line	37
	signat	_lcd_data,4216
	end
