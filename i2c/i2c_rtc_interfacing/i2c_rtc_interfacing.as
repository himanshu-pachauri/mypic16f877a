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
;BANK0:	_main->_lcd_print
;COMMON:	_lcd_print->_lcd_command
;BANK0:	_lcd_print->_lcd_data
;COMMON:	_lcd_print->_print_day
;COMMON:	_print_day->_lcd_string
;COMMON:	_lcd_string->_lcd_data
;BANK0:	_lcd_string->_lcd_data
	FNCALL	_main,_lcd_init
	FNCALL	_main,_i2c_ini
	FNCALL	_main,_i2c_start
	FNCALL	_main,_i2c_write
	FNCALL	_main,_i2c_stop
	FNCALL	_main,_i2c_read_last
	FNCALL	_main,_i2c_read
	FNCALL	_main,_lcd_print
	FNCALL	_lcd_print,_lcd_command
	FNCALL	_lcd_print,_lcd_string
	FNCALL	_lcd_print,_lcd_print2
	FNCALL	_lcd_print,_lcd_data
	FNCALL	_lcd_print,_print_day
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_init,_lcd_data
	FNCALL	_lcd_print2,_lcd_data
	FNCALL	_print_day,_lcd_string
	FNCALL	_lcd_string,_lcd_data
	FNROOT	_main
	global	main@F544
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	114

;initializer for main@F544
	retlw	056h
	retlw	04h
	retlw	04h
	retlw	02h
	retlw	05h
	retlw	06h
	retlw	07h
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
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_9:	
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_4:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_6:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_7:	
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_5:	
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	85	;'U'
	retlw	0
psect	strings
	
STR_2:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	0
psect	strings
	file	"i2c_rtc_interfacing.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	114
main@F544:
       ds      7

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
	movlw low(__pdataBANK0+7)
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
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_i2c_ini
?_i2c_ini: ;@ 0x0
	global	??_i2c_ini
??_i2c_ini: ;@ 0x0
	global	??_i2c_read_last
??_i2c_read_last: ;@ 0x0
	global	??_i2c_read
??_i2c_read: ;@ 0x0
	global	??_lcd_command
??_lcd_command: ;@ 0x0
	global	??_lcd_data
??_lcd_data: ;@ 0x0
	global	?_i2c_start
?_i2c_start: ;@ 0x0
	global	??_i2c_start
??_i2c_start: ;@ 0x0
	global	??_i2c_write
??_i2c_write: ;@ 0x0
	global	?_i2c_stop
?_i2c_stop: ;@ 0x0
	global	??_i2c_stop
??_i2c_stop: ;@ 0x0
	global	?_i2c_read
?_i2c_read: ;@ 0x0
	global	?_i2c_read_last
?_i2c_read_last: ;@ 0x0
	global	i2c_write@x
i2c_write@x:	; 1 bytes @ 0x0
	ds	1
	global	??_lcd_print2
??_lcd_print2: ;@ 0x1
	global	??_lcd_init
??_lcd_init: ;@ 0x1
	global	?_lcd_data
?_lcd_data: ;@ 0x1
	global	?_i2c_write
?_i2c_write: ;@ 0x1
	global	??_lcd_string
??_lcd_string: ;@ 0x1
	global	lcd_command@x
lcd_command@x:	; 1 bytes @ 0x1
	ds	1
	global	??_print_day
??_print_day: ;@ 0x2
	global	??_lcd_print
??_lcd_print: ;@ 0x2
	global	lcd_print2@x
lcd_print2@x:	; 1 bytes @ 0x2
	global	lcd_string@p
lcd_string@p:	; 1 bytes @ 0x2
	global	lcd_command@i
lcd_command@i:	; 2 bytes @ 0x2
	ds	1
	global	?_lcd_string
?_lcd_string: ;@ 0x3
	global	?_lcd_print2
?_lcd_print2: ;@ 0x3
	global	print_day@x
print_day@x:	; 1 bytes @ 0x3
	ds	1
	global	??_main
??_main: ;@ 0x4
	global	?_lcd_init
?_lcd_init: ;@ 0x4
	global	?_lcd_print
?_lcd_print: ;@ 0x4
	global	?_print_day
?_print_day: ;@ 0x4
	global	?_lcd_command
?_lcd_command: ;@ 0x4
	ds	4
	global	?_main
?_main: ;@ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	lcd_data@x
lcd_data@x:	; 1 bytes @ 0x0
	ds	1
	global	lcd_data@i
lcd_data@i:	; 2 bytes @ 0x1
	ds	2
	global	lcd_print@a
lcd_print@a:	; 1 bytes @ 0x3
	ds	1
	global	main@a
main@a:	; 7 bytes @ 0x4
	ds	7
	global	main@i
main@i:	; 2 bytes @ 0xB
	ds	2
;Data sizes: Strings 38, constant 0, data 7, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      8       8
; BANK0           80     13      20
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;lcd_string@p	PTR unsigned char  size(1); Largest target is 5
;		 -> STR_1(CODE[4]), STR_2(CODE[4]), STR_3(CODE[4]), STR_4(CODE[4]), 
;		 -> STR_5(CODE[4]), STR_6(CODE[4]), STR_7(CODE[4]), STR_8(CODE[5]), 
;		 -> STR_9(CODE[5]), 
;lcd_print@a	PTR unsigned char  size(1); Largest target is 7
;		 -> main@a(BANK0[7]), 


;Main: autosize = 0, tempsize = 4, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               13    0  918   0.00
;                                    4 COMMO    4
;                                    4 BANK0    9
;           _lcd_init
;            _i2c_ini
;          _i2c_start
;          _i2c_write
;           _i2c_stop
;      _i2c_read_last
;           _i2c_read
;          _lcd_print
;  _i2c_stop                                          0    0    0   0.00
;  _i2c_write                                         1    0   16   0.00
;                                    0 COMMO    1
;  _i2c_read_last                                     0    0    0   0.00
;  _lcd_print                                         1    0  573   0.00
;                                    3 BANK0    1
;        _lcd_command
;         _lcd_string
;         _lcd_print2
;           _lcd_data
;          _print_day
;  _i2c_read                                          0    0    0   0.00
;  _lcd_init                                          0    0  132   0.00
;        _lcd_command
;           _lcd_data
;  _i2c_ini                                           0    0    0   0.00
;  _i2c_start                                         0    0    0   0.00
;    _lcd_print2                                      2    0   98   0.00
;                                    1 COMMO    2
;           _lcd_data
;    _print_day                                       1    0  132   0.00
;                                    3 COMMO    1
;         _lcd_string
;    _lcd_command                                     4    0   66   0.00
;                                    0 COMMO    4
;      _lcd_string                                    2    0   99   0.00
;                                    1 COMMO    2
;           _lcd_data
;        _lcd_data                                    4    0   66   0.00
;                                    0 COMMO    1
;                                    0 BANK0    3
; Estimated maximum call depth 4
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      8       8       1       57.1%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      1C       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      D      14       5       25.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      1C      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 113 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  a               7    4[BANK0 ] unsigned char [7]
;  i               2   11[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4       9       0       0       0
;      Temp:     4
;      Total:   13
; This function calls:
;		_lcd_init
;		_i2c_ini
;		_i2c_start
;		_i2c_write
;		_i2c_stop
;		_i2c_read_last
;		_i2c_read
;		_lcd_print
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	113
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;i2c_master.c: 112: void main()
;i2c_master.c: 113: {int i;
	
_main:	
	opt stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	114
	
l30000549:	
;i2c_master.c: 114: unsigned char a[7]={0x56,0x04,0x04,0x02,0x05,0x06,0x07};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	main@F544&0ffh
	movwf	(??_main+0+0)
	movf	fsr0,w
	movwf	(??_main+0+0+1)
	movlw	7
	movwf	(??_main+0+0+2)
u220:
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
	goto	u220
	
l30000550:	
	line	115
;i2c_master.c: 115: lcd_init();
	fcall	_lcd_init
	
l30000551:	
	line	117
;i2c_master.c: 117: i2c_ini();
	fcall	_i2c_ini
	
l30000552:	
	line	118
;i2c_master.c: 118: i2c_start();
	fcall	_i2c_start
	
l30000553:	
	line	119
;i2c_master.c: 119: i2c_write(0xd0);
	movlw	(0D0h)
	fcall	_i2c_write
	
l30000554:	
	line	120
;i2c_master.c: 120: i2c_write(0x00);
	movlw	(0)
	fcall	_i2c_write
	
l30000555:	
	line	121
;i2c_master.c: 121: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000558:	
	line	123
;i2c_master.c: 122: {
;i2c_master.c: 123: i2c_write(a[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	(main@a)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_i2c_write
	
l30000559:	
	line	121
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l30000560:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u235
	movlw	low(07h)
	subwf	(main@i),w
u235:

	skipc
	goto	u231
	goto	u230
u231:
	goto	l30000558
u230:
	
l30000561:	
	line	125
;i2c_master.c: 124: }
;i2c_master.c: 125: i2c_stop();
	fcall	_i2c_stop
	
l73:	
	line	128
;i2c_master.c: 128: {i2c_start();
	fcall	_i2c_start
	line	129
;i2c_master.c: 129: i2c_write(0xd0);
	movlw	(0D0h)
	fcall	_i2c_write
	line	130
;i2c_master.c: 130: i2c_write(0x00);
	movlw	(0)
	fcall	_i2c_write
	line	131
;i2c_master.c: 131: i2c_stop();
	fcall	_i2c_stop
	line	132
;i2c_master.c: 132: i2c_start();
	fcall	_i2c_start
	line	133
;i2c_master.c: 133: i2c_write(0xd1);
	movlw	(0D1h)
	fcall	_i2c_write
	
l30000562:	
	line	134
;i2c_master.c: 134: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000565:	
	line	136
;i2c_master.c: 135: {
;i2c_master.c: 136: if(i==6)
	movlw	06h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u241
	goto	u240
u241:
	goto	l30000567
u240:
	
l30000566:	
	line	137
;i2c_master.c: 137: a[i]=i2c_read_last();
	fcall	_i2c_read_last
	movwf	(??_main+0+0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	(main@a)&0ffh
	movwf	fsr0
	movf	(??_main+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l30000568
	
l30000567:	
	line	139
;i2c_master.c: 139: else a[i]=i2c_read();
	fcall	_i2c_read
	movwf	(??_main+0+0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	(main@a)&0ffh
	movwf	fsr0
	movf	(??_main+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30000568:	
	line	134
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l30000569:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u255
	movlw	low(07h)
	subwf	(main@i),w
u255:

	skipc
	goto	u251
	goto	u250
u251:
	goto	l30000565
u250:
	
l30000570:	
	line	142
;i2c_master.c: 140: }
;i2c_master.c: 142: i2c_stop();
	fcall	_i2c_stop
	
l30000571:	
	line	143
;i2c_master.c: 143: lcd_print(a);
	movlw	((main@a))&0ffh
	fcall	_lcd_print
	goto	l73
	
l80:	
	goto	l80
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	148
	signat	_main,88
	global	_i2c_stop
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

; *************** function _i2c_stop *****************
; Defined at:
;		line 20 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
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
psect	text91
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	20
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
;i2c_master.c: 19: void i2c_stop()
;i2c_master.c: 20: {
	
_i2c_stop:	
	opt stack 6
; Regs used in _i2c_stop: [wreg]
	line	22
	
l30000613:	
;i2c_master.c: 22: SSPCON2=(1<<2);
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
; =============== function _i2c_stop ends ============

psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:
	line	24
	signat	_i2c_stop,88
	global	_i2c_write

; *************** function _i2c_write *****************
; Defined at:
;		line 26 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text92
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	26
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
;i2c_master.c: 25: void i2c_write(unsigned char x)
;i2c_master.c: 26: {
	
_i2c_write:	
	opt stack 6
; Regs used in _i2c_write: [wreg]
;i2c_write@x stored from wreg
	movwf	(i2c_write@x)
	
l30000614:	
	line	27
;i2c_master.c: 27: SSPBUF=x;
	movf	(i2c_write@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	
l39:	
	line	28
	btfss	(99/8),(99)&7
	goto	u311
	goto	u310
u311:
	goto	l39
u310:
	
l41:	
	line	29
;i2c_master.c: 29: SSPIF=0;
	bcf	(99/8),(99)&7
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
; =============== function _i2c_write ends ============

psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:
	line	30
	signat	_i2c_write,4216
	global	_i2c_read_last

; *************** function _i2c_read_last *****************
; Defined at:
;		line 42 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
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
psect	text93
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	42
	global	__size_of_i2c_read_last
	__size_of_i2c_read_last	equ	__end_of_i2c_read_last-_i2c_read_last
;i2c_master.c: 41: unsigned char i2c_read_last()
;i2c_master.c: 42: {
	
_i2c_read_last:	
	opt stack 6
; Regs used in _i2c_read_last: [wreg]
	line	43
	
l30000615:	
;i2c_master.c: 43: SSPCON2=0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	
l50:	
	line	44
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u321
	goto	u320
u321:
	goto	l50
u320:
	
l30000616:	
	line	45
;i2c_master.c: 45: SSPCON2=0x30;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	
l30000617:	
	line	46
;i2c_master.c: 46: SSPIF==0;
	
l53:	
	line	47
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u331
	goto	u330
u331:
	goto	l53
u330:
	
l55:	
	line	48
;i2c_master.c: 48: SSPIF==0;
	
l30000618:	
	line	49
;i2c_master.c: 49: return SSPBUF;
	movf	(19),w	;volatile
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read_last
	__end_of_i2c_read_last:
; =============== function _i2c_read_last ends ============

psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:
	line	50
	signat	_i2c_read_last,89
	global	_lcd_print

; *************** function _lcd_print *****************
; Defined at:
;		line 90 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
; Parameters:    Size  Location     Type
;  a               1    wreg     PTR unsigned char 
;		 -> main@a(7), 
; Auto vars:     Size  Location     Type
;  a               1    3[BANK0 ] PTR unsigned char 
;		 -> main@a(7), 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_lcd_command
;		_lcd_string
;		_lcd_print2
;		_lcd_data
;		_print_day
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text94
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	90
	global	__size_of_lcd_print
	__size_of_lcd_print	equ	__end_of_lcd_print-_lcd_print
;i2c_master.c: 89: void lcd_print(unsigned char a[])
;i2c_master.c: 90: {
	
_lcd_print:	
	opt stack 6
; Regs used in _lcd_print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_print@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_print@a)
	
l30000586:	
	line	91
;i2c_master.c: 91: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	92
;i2c_master.c: 92: lcd_string("TIM ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_lcd_string
	
l30000587:	
	line	93
;i2c_master.c: 93: lcd_print2(a[2]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_print2
	
l30000588:	
	line	94
;i2c_master.c: 94: lcd_data(':');
	movlw	(03Ah)
	fcall	_lcd_data
	line	95
;i2c_master.c: 95: lcd_print2(a[1]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_print2
	
l30000589:	
	line	96
;i2c_master.c: 96: lcd_data(':');
	movlw	(03Ah)
	fcall	_lcd_data
	
l30000590:	
	line	97
;i2c_master.c: 97: lcd_print2(a[0]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_print2
	line	98
;i2c_master.c: 98: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	
l30000591:	
	line	99
;i2c_master.c: 99: print_day(a[3]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_print_day
	
l30000592:	
	line	100
;i2c_master.c: 100: lcd_command(0xc0);
	movlw	(0C0h)
	fcall	_lcd_command
	
l30000593:	
	line	101
;i2c_master.c: 101: lcd_string("DAT ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_lcd_string
	
l30000594:	
	line	102
;i2c_master.c: 102: lcd_print2(a[4]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_print2
	line	103
;i2c_master.c: 103: lcd_data('/');
	movlw	(02Fh)
	fcall	_lcd_data
	
l30000595:	
	line	104
;i2c_master.c: 104: lcd_print2(a[5]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_print2
	
l30000596:	
	line	105
;i2c_master.c: 105: lcd_data('/');
	movlw	(02Fh)
	fcall	_lcd_data
	line	106
;i2c_master.c: 106: lcd_print2(a[6]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_print@a),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_print2
	
l30000597:	
	line	107
;i2c_master.c: 107: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_print
	__end_of_lcd_print:
; =============== function _lcd_print ends ============

psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	line	109
	signat	_lcd_print,4216
	global	_i2c_read

; *************** function _i2c_read *****************
; Defined at:
;		line 32 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
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
psect	text95
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	32
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
;i2c_master.c: 31: unsigned char i2c_read()
;i2c_master.c: 32: {
	
_i2c_read:	
	opt stack 6
; Regs used in _i2c_read: [wreg]
	line	33
	
l30000620:	
;i2c_master.c: 33: SSPCON2=0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	
l43:	
	line	34
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u341
	goto	u340
u341:
	goto	l43
u340:
	
l30000621:	
	line	35
;i2c_master.c: 35: SSPCON2=0x10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	
l30000622:	
	line	36
;i2c_master.c: 36: SSPIF==0;
	
l46:	
	line	37
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u351
	goto	u350
u351:
	goto	l46
u350:
	
l48:	
	line	38
;i2c_master.c: 38: SSPIF==0;
	
l30000623:	
	line	39
;i2c_master.c: 39: return SSPBUF;
	movf	(19),w	;volatile
	
l42:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
; =============== function _i2c_read ends ============

psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
	line	40
	signat	_i2c_read,89
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 39 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
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
psect	text96
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
	line	39
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lcd.h: 38: void lcd_init()
;lcd.h: 39: {
	
_lcd_init:	
	opt stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l30000543:	
;lcd.h: 40: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30000544:	
	line	41
;lcd.h: 41: lcd_command(0x02);
	movlw	(02h)
	fcall	_lcd_command
	
l30000545:	
	line	42
;lcd.h: 42: lcd_command(0x28);
	movlw	(028h)
	fcall	_lcd_command
	
l30000546:	
	line	43
;lcd.h: 43: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	
l30000547:	
	line	44
;lcd.h: 44: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	
l30000548:	
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

psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:
	line	46
	signat	_lcd_init,88
	global	_i2c_ini

; *************** function _i2c_ini *****************
; Defined at:
;		line 5 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
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
psect	text97
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	5
	global	__size_of_i2c_ini
	__size_of_i2c_ini	equ	__end_of_i2c_ini-_i2c_ini
;i2c_master.c: 4: void i2c_ini()
;i2c_master.c: 5: {SSPCON=0x28;
	
_i2c_ini:	
	opt stack 6
; Regs used in _i2c_ini: [wreg]
	
l30000625:	
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l32:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_ini
	__end_of_i2c_ini:
; =============== function _i2c_ini ends ============

psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	line	10
	signat	_i2c_ini,88
	global	_i2c_start

; *************** function _i2c_start *****************
; Defined at:
;		line 12 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
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
psect	text98
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	12
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
;i2c_master.c: 11: void i2c_start()
;i2c_master.c: 12: {SSPCON2=0x01;
	
_i2c_start:	
	opt stack 6
; Regs used in _i2c_start: [wreg]
	
l30000626:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	
l34:	
	line	13
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u361
	goto	u360
u361:
	goto	l34
u360:
	
l36:	
	line	14
;i2c_master.c: 14: SSPIF=0;
	bcf	(99/8),(99)&7
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
; =============== function _i2c_start ends ============

psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	line	18
	signat	_i2c_start,88
	global	_lcd_print2

; *************** function _lcd_print2 *****************
; Defined at:
;		line 52 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_lcd_data
; This function is called by:
;		_lcd_print
; This function uses a non-reentrant model
; 
psect	text99
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	52
	global	__size_of_lcd_print2
	__size_of_lcd_print2	equ	__end_of_lcd_print2-_lcd_print2
;i2c_master.c: 51: void lcd_print2(unsigned char x)
;i2c_master.c: 52: {lcd_data('0' +(x>>4));
	
_lcd_print2:	
	opt stack 5
; Regs used in _lcd_print2: [wreg+status,2+status,0+pclath+cstack]
;lcd_print2@x stored from wreg
	movwf	(lcd_print2@x)
	
l30000598:	
	movf	(lcd_print2@x),w
	movwf	(??_lcd_print2+0+0)
	movlw	04h
u275:
	clrc
	rrf	(??_lcd_print2+0+0),f
	addlw	-1
	skipz
	goto	u275
	movf	0+(??_lcd_print2+0+0),w
	addlw	030h
	fcall	_lcd_data
	line	53
;i2c_master.c: 53: lcd_data('0' + (x&0x0f));
	movf	(lcd_print2@x),w
	andlw	0Fh
	addlw	030h
	fcall	_lcd_data
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_print2
	__end_of_lcd_print2:
; =============== function _lcd_print2 ends ============

psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
	line	55
	signat	_lcd_print2,4216
	global	_print_day

; *************** function _print_day *****************
; Defined at:
;		line 58 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    3[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_lcd_string
; This function is called by:
;		_lcd_print
; This function uses a non-reentrant model
; 
psect	text100
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\i2c_master.c"
	line	58
	global	__size_of_print_day
	__size_of_print_day	equ	__end_of_print_day-_print_day
;i2c_master.c: 57: void print_day(unsigned char x)
;i2c_master.c: 58: {x=x&0x07;
	
_print_day:	
	opt stack 5
; Regs used in _print_day: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_day@x stored from wreg
	movwf	(print_day@x)
	
l30000576:	
	movf	(print_day@x),w
	andlw	07h
	movwf	(print_day@x)
	goto	l30000585
	
l30000577:	
	line	62
;i2c_master.c: 62: lcd_string("SUN");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000578:	
	line	65
;i2c_master.c: 65: lcd_string("MON");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000579:	
	line	68
;i2c_master.c: 68: lcd_string("TUE");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000580:	
	line	71
;i2c_master.c: 71: lcd_string("WED");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000581:	
	line	74
;i2c_master.c: 74: lcd_string("THU");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000582:	
	line	77
;i2c_master.c: 77: lcd_string("FRI");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000583:	
	line	80
;i2c_master.c: 80: lcd_string("SAT");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_lcd_string
	goto	l57
	
l30000585:	
	line	59
	movf	(print_day@x),w
		xorlw	0^0
	skipnz
	goto	l30000577
	xorlw	1^0
	skipnz
	goto	l30000578
	xorlw	2^1
	skipnz
	goto	l30000579
	xorlw	3^2
	skipnz
	goto	l30000580
	xorlw	4^3
	skipnz
	goto	l30000581
	xorlw	5^4
	skipnz
	goto	l30000582
	xorlw	6^5
	skipnz
	goto	l30000583
	goto	l57

	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_print_day
	__end_of_print_day:
; =============== function _print_day ends ============

psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	line	88
	signat	_print_day,4216
	global	_lcd_command

; *************** function _lcd_command *****************
; Defined at:
;		line 7 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
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
;		_lcd_print
; This function uses a non-reentrant model
; 
psect	text101
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
	line	7
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
;lcd.h: 6: void lcd_command(unsigned char x)
;lcd.h: 7: {int i=50;
	
_lcd_command:	
	opt stack 5
; Regs used in _lcd_command: [wreg+status,2+status,0]
;lcd_command@x stored from wreg
	movwf	(lcd_command@x)
	
l30000599:	
	movlw	low(032h)
	movwf	(lcd_command@i)
	movlw	high(032h)
	movwf	((lcd_command@i))+1
	
l30000600:	
	line	8
;lcd.h: 8: PORTD=0xf0&x;
	movf	(lcd_command@x),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000601:	
	line	9
;lcd.h: 9: PORTD&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000602:	
	line	10
;lcd.h: 10: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000603:	
	line	11
;lcd.h: 11: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000604:	
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
	goto	u285
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u285:

	skipz
	goto	u281
	goto	u280
u281:
	goto	l30000604
u280:
	
l30000605:	
	line	13
;lcd.h: 13: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000606:	
	line	14
;lcd.h: 14: i=50;
	movlw	low(032h)
	movwf	(lcd_command@i)
	movlw	high(032h)
	movwf	((lcd_command@i))+1
	
l30000607:	
	line	15
;lcd.h: 15: PORTD=(0x0f&x)<<4;
	movf	(lcd_command@x),w
	andlw	0Fh
	movwf	(??_lcd_command+0+0)
	movlw	(04h)-1
u295:
	clrc
	rlf	(??_lcd_command+0+0),f
	addlw	-1
	skipz
	goto	u295
	clrc
	rlf	(??_lcd_command+0+0),w
	movwf	(8)	;volatile
	
l30000608:	
	line	16
;lcd.h: 16: PORTD&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000609:	
	line	17
;lcd.h: 17: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_command+0+0)
	movf	(??_lcd_command+0+0),w
	andwf	(8),f	;volatile
	
l30000610:	
	line	18
;lcd.h: 18: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000611:	
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
	goto	u305
	movlw	low(-1)
	xorwf	((lcd_command@i))&07fh,w
u305:

	skipz
	goto	u301
	goto	u300
u301:
	goto	l30000611
u300:
	
l30000612:	
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

psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
	line	21
	signat	_lcd_command,4216
	global	_lcd_string

; *************** function _lcd_string *****************
; Defined at:
;		line 48 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
; Parameters:    Size  Location     Type
;  p               1    wreg     PTR unsigned char 
;		 -> STR_1(4), STR_2(4), STR_3(4), STR_4(4), 
;		 -> STR_5(4), STR_6(4), STR_7(4), STR_8(5), 
;		 -> STR_9(5), 
; Auto vars:     Size  Location     Type
;  p               1    2[COMMON] PTR unsigned char 
;		 -> STR_1(4), STR_2(4), STR_3(4), STR_4(4), 
;		 -> STR_5(4), STR_6(4), STR_7(4), STR_8(5), 
;		 -> STR_9(5), 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_lcd_data
; This function is called by:
;		_print_day
;		_lcd_print
; This function uses a non-reentrant model
; 
psect	text102
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
	line	48
	global	__size_of_lcd_string
	__size_of_lcd_string	equ	__end_of_lcd_string-_lcd_string
;lcd.h: 47: void lcd_string(unsigned char *p)
;lcd.h: 48: {
	
_lcd_string:	
	opt stack 4
; Regs used in _lcd_string: [wreg+status,2+status,0+pclath+cstack]
;lcd_string@p stored from wreg
	movwf	(lcd_string@p)
	
l30000572:	
	goto	l30000575
	
l30000573:	
	line	51
;lcd.h: 50: {
;lcd.h: 51: lcd_data(*p);
	movf	(lcd_string@p),w
	FNCALL _lcd_string,stringtab
	fcall	stringdir
	fcall	_lcd_data
	
l30000574:	
	line	52
;lcd.h: 52: p++;
	movlw	(01h)
	movwf	(??_lcd_string+0+0)
	movf	(??_lcd_string+0+0),w
	addwf	(lcd_string@p),f
	
l30000575:	
	line	49
	movf	(lcd_string@p),w
	FNCALL _lcd_string,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u261
	goto	u260
u261:
	goto	l30000573
u260:
	
l16:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
; =============== function _lcd_string ends ============

psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:
	line	54
	signat	_lcd_string,4216
	global	_lcd_data

; *************** function _lcd_data *****************
; Defined at:
;		line 23 in file "C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
; Parameters:    Size  Location     Type
;  x               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  x               1    0[BANK0 ] unsigned char 
;  i               2    1[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       3       0       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_init
;		_lcd_string
;		_lcd_print2
;		_lcd_print
; This function uses a non-reentrant model
; 
psect	text103
	file	"C:\Users\Jarvis\Desktop\PIC16f877a_coding\i2c\i2c_master\lcd.h"
	line	23
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
;lcd.h: 22: void lcd_data(unsigned char x)
;lcd.h: 23: {int i=500;
	
_lcd_data:	
	opt stack 3
; Regs used in _lcd_data: [wreg+status,2+status,0]
;lcd_data@x stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@x)
	
l30000529:	
	movlw	low(01F4h)
	movwf	(lcd_data@i)
	movlw	high(01F4h)
	movwf	((lcd_data@i))+1
	
l30000530:	
	line	24
;lcd.h: 24: PORTD=0xf0&x;
	movf	(lcd_data@x),w
	andlw	0F0h
	movwf	(8)	;volatile
	
l30000531:	
	line	25
;lcd.h: 25: PORTD|=(1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	
l30000532:	
	line	26
;lcd.h: 26: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000533:	
	line	27
;lcd.h: 27: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000534:	
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
	goto	u195
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u195:

	skipz
	goto	u191
	goto	u190
u191:
	goto	l30000534
u190:
	
l30000535:	
	line	29
;lcd.h: 29: PORTD&=~(1<<2);
	movlw	(0FBh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000536:	
	line	30
;lcd.h: 30: i=50;
	movlw	low(032h)
	movwf	(lcd_data@i)
	movlw	high(032h)
	movwf	((lcd_data@i))+1
	
l30000537:	
	line	31
;lcd.h: 31: PORTD=(0x0f&x)<<4;
	movf	(lcd_data@x),w
	andlw	0Fh
	movwf	(??_lcd_data+0+0)
	movlw	(04h)-1
u205:
	clrc
	rlf	(??_lcd_data+0+0),f
	addlw	-1
	skipz
	goto	u205
	clrc
	rlf	(??_lcd_data+0+0),w
	movwf	(8)	;volatile
	
l30000538:	
	line	32
;lcd.h: 32: PORTD|=(1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	
l30000539:	
	line	33
;lcd.h: 33: PORTD&=~(1<<1);
	movlw	(0FDh)
	movwf	(??_lcd_data+0+0)
	movf	(??_lcd_data+0+0),w
	andwf	(8),f	;volatile
	
l30000540:	
	line	34
;lcd.h: 34: PORTD|=(1<<2);
	bsf	(8)+(2/8),(2)&7	;volatile
	
l30000541:	
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
	goto	u215
	movlw	low(-1)
	xorwf	((lcd_data@i))&07fh,w
u215:

	skipz
	goto	u211
	goto	u210
u211:
	goto	l30000541
u210:
	
l30000542:	
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

psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	line	37
	signat	_lcd_data,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
