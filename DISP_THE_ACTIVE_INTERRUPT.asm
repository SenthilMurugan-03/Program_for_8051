;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module DISP_THE_ACTIVE_INTERRUPT
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ar
	.globl _main
	.globl _led_toggle1
	.globl _led_toggle
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _SCK
	.globl _MISO
	.globl _MOSI
	.globl _SS
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _ALE
	.globl _B
	.globl _A
	.globl _ACC
	.globl _SPCR
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _SPSR
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _WMCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _SPDR
	.globl _DP1H
	.globl _DP1L
	.globl _DP0H
	.globl _DPH
	.globl _DP0L
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _interrupt_clr_priority_PARM_1
	.globl _interrupt_set_priority_PARM_1
	.globl _interrupt_type_PARM_2
	.globl _interrupt_type_PARM_1
	.globl _interrupt_init_PARM_1
	.globl _count
	.globl _p
	.globl _interrupt_disable_all
	.globl _interrupt_init
	.globl _interrupt_type
	.globl _wait
	.globl _interrupt_set_priority
	.globl _interrupt_clr_priority
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DP0L$0_0$0 == 0x0082
_DP0L	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$DP0H$0_0$0 == 0x0083
_DP0H	=	0x0083
G$DP1L$0_0$0 == 0x0084
_DP1L	=	0x0084
G$DP1H$0_0$0 == 0x0085
_DP1H	=	0x0085
G$SPDR$0_0$0 == 0x0086
_SPDR	=	0x0086
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$WMCON$0_0$0 == 0x0096
_WMCON	=	0x0096
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$SPSR$0_0$0 == 0x00aa
_SPSR	=	0x00aa
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0_0$0 == 0x00c9
_T2MOD	=	0x00c9
G$RCAP2L$0_0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0_0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$SPCR$0_0$0 == 0x00d5
_SPCR	=	0x00d5
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$A$0_0$0 == 0x00e0
_A	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$ALE$0_0$0 == 0x008e
_ALE	=	0x008e
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$T2$0_0$0 == 0x0090
_T2	=	0x0090
G$T2EX$0_0$0 == 0x0091
_T2EX	=	0x0091
G$SS$0_0$0 == 0x0094
_SS	=	0x0094
G$MOSI$0_0$0 == 0x0095
_MOSI	=	0x0095
G$MISO$0_0$0 == 0x0096
_MISO	=	0x0096
G$SCK$0_0$0 == 0x0097
_SCK	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$PT2$0_0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0_0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0_0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0_0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0_0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0_0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0_0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0_0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0_0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0_0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0_0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0_0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0_0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0_0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0_0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$FL$0_0$0 == 0x00d1
_FL	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
G$BREG_F0$0_0$0 == 0x00f0
_BREG_F0	=	0x00f0
G$BREG_F1$0_0$0 == 0x00f1
_BREG_F1	=	0x00f1
G$BREG_F2$0_0$0 == 0x00f2
_BREG_F2	=	0x00f2
G$BREG_F3$0_0$0 == 0x00f3
_BREG_F3	=	0x00f3
G$BREG_F4$0_0$0 == 0x00f4
_BREG_F4	=	0x00f4
G$BREG_F5$0_0$0 == 0x00f5
_BREG_F5	=	0x00f5
G$BREG_F6$0_0$0 == 0x00f6
_BREG_F6	=	0x00f6
G$BREG_F7$0_0$0 == 0x00f7
_BREG_F7	=	0x00f7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$p$0_0$0==.
_p::
	.ds 3
G$count$0_0$0==.
_count::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
LDISP_THE_ACTIVE_INTERRUPT.interrupt_init$ex$1_0$6==.
_interrupt_init_PARM_1:
	.ds 1
LDISP_THE_ACTIVE_INTERRUPT.interrupt_type$e$1_0$10==.
_interrupt_type_PARM_1:
	.ds 1
LDISP_THE_ACTIVE_INTERRUPT.interrupt_type$type$1_0$10==.
_interrupt_type_PARM_2:
	.ds 1
LDISP_THE_ACTIVE_INTERRUPT.interrupt_set_priority$in$1_0$19==.
_interrupt_set_priority_PARM_1:
	.ds 1
LDISP_THE_ACTIVE_INTERRUPT.interrupt_clr_priority$in$1_0$23==.
_interrupt_clr_priority_PARM_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_led_toggle
	.ds	5
	reti
	.ds	7
	ljmp	_led_toggle1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$DISP_THE_ACTIVE_INTERRUPT.c$19$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:19: char count =0 ; 
	mov	_count,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_disable_all'
;------------------------------------------------------------
	G$interrupt_disable_all$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$21$0_0$5 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:21: void interrupt_disable_all()
;	-----------------------------------------
;	 function interrupt_disable_all
;	-----------------------------------------
_interrupt_disable_all:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$DISP_THE_ACTIVE_INTERRUPT.c$23$1_0$5 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:23: EA = 0;
;	assignBit
	clr	_EA
	C$DISP_THE_ACTIVE_INTERRUPT.c$24$1_0$5 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:24: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$24$1_0$5 ==.
	XG$interrupt_disable_all$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_init'
;------------------------------------------------------------
	G$interrupt_init$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$26$1_0$7 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:26: void interrupt_init(__bit ex)
;	-----------------------------------------
;	 function interrupt_init
;	-----------------------------------------
_interrupt_init:
	C$DISP_THE_ACTIVE_INTERRUPT.c$28$1_0$7 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:28: EA = 1;
;	assignBit
	setb	_EA
	C$DISP_THE_ACTIVE_INTERRUPT.c$29$1_0$7 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:29: if(ex == 0)
	jb	_interrupt_init_PARM_1,00102$
	C$DISP_THE_ACTIVE_INTERRUPT.c$31$2_0$8 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:31: EX0 = 1;
;	assignBit
	setb	_EX0
	sjmp	00104$
00102$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$35$2_0$9 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:35: EX1 = 1;
;	assignBit
	setb	_EX1
00104$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$37$1_0$7 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:37: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$37$1_0$7 ==.
	XG$interrupt_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_type'
;------------------------------------------------------------
	G$interrupt_type$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$39$1_0$11 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:39: void interrupt_type(__bit e, __bit type)
;	-----------------------------------------
;	 function interrupt_type
;	-----------------------------------------
_interrupt_type:
	C$DISP_THE_ACTIVE_INTERRUPT.c$41$1_0$11 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:41: if(e == 0)
	jb	_interrupt_type_PARM_1,00104$
	C$DISP_THE_ACTIVE_INTERRUPT.c$43$2_0$12 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:43: IT0 = type;
;	assignBit
	mov	c,_interrupt_type_PARM_2
	mov	_IT0,c
	sjmp	00106$
00104$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$45$1_0$11 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:45: else if(e == 1)
	jnb	_interrupt_type_PARM_1,00106$
	C$DISP_THE_ACTIVE_INTERRUPT.c$47$2_0$13 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:47: IT1 = type;
;	assignBit
	mov	c,_interrupt_type_PARM_2
	mov	_IT1,c
00106$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$49$1_0$11 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:49: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$49$1_0$11 ==.
	XG$interrupt_type$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'led_toggle'
;------------------------------------------------------------
	G$led_toggle$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$51$1_0$14 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:51: void led_toggle() __interrupt(0) /* ISR for  interrupt 0 (__interrupt(0) is mentioning its a ISR for interrupt 0)*/ 
;	-----------------------------------------
;	 function led_toggle
;	-----------------------------------------
_led_toggle:
	push	acc
	push	dpl
	push	dph
	C$DISP_THE_ACTIVE_INTERRUPT.c$53$1_0$14 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:53: LED2 = !LED2;
	cpl	_P0_1
	C$DISP_THE_ACTIVE_INTERRUPT.c$54$1_0$14 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:54: SEG_DISP = ar[0];
	mov	dptr,#_ar
	clr	a
	movc	a,@a+dptr
	mov	_P1,a
	C$DISP_THE_ACTIVE_INTERRUPT.c$55$1_0$14 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:55: }
	pop	dph
	pop	dpl
	pop	acc
	C$DISP_THE_ACTIVE_INTERRUPT.c$55$1_0$14 ==.
	XG$led_toggle$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'led_toggle1'
;------------------------------------------------------------
	G$led_toggle1$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$57$1_0$15 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:57: void led_toggle1() __interrupt(2) /* ISR for  interrupt 0 (__interrupt(0) is mentioning its a ISR for interrupt 0)*/ 
;	-----------------------------------------
;	 function led_toggle1
;	-----------------------------------------
_led_toggle1:
	push	acc
	push	dpl
	push	dph
	C$DISP_THE_ACTIVE_INTERRUPT.c$59$1_0$15 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:59: LED3 = !LED3;
	cpl	_P0_2
	C$DISP_THE_ACTIVE_INTERRUPT.c$60$1_0$15 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:60: SEG_DISP = ar[1];
	mov	dptr,#(_ar + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	_P1,a
	C$DISP_THE_ACTIVE_INTERRUPT.c$61$1_0$15 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:61: }
	pop	dph
	pop	dpl
	pop	acc
	C$DISP_THE_ACTIVE_INTERRUPT.c$61$1_0$15 ==.
	XG$led_toggle1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'wait'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
	G$wait$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$63$1_0$17 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:63: void wait()
;	-----------------------------------------
;	 function wait
;	-----------------------------------------
_wait:
	C$DISP_THE_ACTIVE_INTERRUPT.c$66$2_0$17 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:66: for(i=0;i<10;i++)
	mov	r7,#0x0a
00104$:
	djnz	r7,00104$
	C$DISP_THE_ACTIVE_INTERRUPT.c$70$2_0$17 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:70: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$70$2_0$17 ==.
	XG$wait$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_set_priority'
;------------------------------------------------------------
	G$interrupt_set_priority$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$72$2_0$20 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:72: void interrupt_set_priority(__bit in)
;	-----------------------------------------
;	 function interrupt_set_priority
;	-----------------------------------------
_interrupt_set_priority:
	C$DISP_THE_ACTIVE_INTERRUPT.c$74$1_0$20 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:74: if(in == 0)
	jb	_interrupt_set_priority_PARM_1,00104$
	C$DISP_THE_ACTIVE_INTERRUPT.c$76$2_0$21 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:76: PX0 = 1;
;	assignBit
	setb	_PX0
	sjmp	00106$
00104$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$78$1_0$20 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:78: else if(in==1)
	jnb	_interrupt_set_priority_PARM_1,00106$
	C$DISP_THE_ACTIVE_INTERRUPT.c$80$2_0$22 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:80: PX1 = 1;
;	assignBit
	setb	_PX1
00106$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$82$1_0$20 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:82: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$82$1_0$20 ==.
	XG$interrupt_set_priority$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_clr_priority'
;------------------------------------------------------------
	G$interrupt_clr_priority$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$84$1_0$24 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:84: void interrupt_clr_priority(__bit in)
;	-----------------------------------------
;	 function interrupt_clr_priority
;	-----------------------------------------
_interrupt_clr_priority:
	C$DISP_THE_ACTIVE_INTERRUPT.c$86$1_0$24 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:86: if(in == 0)
	jb	_interrupt_clr_priority_PARM_1,00104$
	C$DISP_THE_ACTIVE_INTERRUPT.c$88$2_0$25 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:88: PX0 = 0;
;	assignBit
	clr	_PX0
	sjmp	00106$
00104$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$90$1_0$24 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:90: else if(in==1)
	jnb	_interrupt_clr_priority_PARM_1,00106$
	C$DISP_THE_ACTIVE_INTERRUPT.c$92$2_0$26 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:92: PX1 = 0;
;	assignBit
	clr	_PX1
00106$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$94$1_0$24 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:94: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$94$1_0$24 ==.
	XG$interrupt_clr_priority$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$DISP_THE_ACTIVE_INTERRUPT.c$96$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:96: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$DISP_THE_ACTIVE_INTERRUPT.c$98$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:98: SEG_DISP =0xFF;
	mov	_P1,#0xff
	C$DISP_THE_ACTIVE_INTERRUPT.c$99$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:99: interrupt_set_priority(1);
;	assignBit
	setb	_interrupt_set_priority_PARM_1
	lcall	_interrupt_set_priority
	C$DISP_THE_ACTIVE_INTERRUPT.c$100$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:100: interrupt_init(1);   /*configure the interrupts and it accepts interrupt as parameter */
;	assignBit
	setb	_interrupt_init_PARM_1
	lcall	_interrupt_init
	C$DISP_THE_ACTIVE_INTERRUPT.c$101$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:101: interrupt_type(1,0);  /* this method accepts  (interrupt , type (1 -> falling edge , 0 -> low level)) */
;	assignBit
	setb	_interrupt_type_PARM_1
;	assignBit
	clr	_interrupt_type_PARM_2
	lcall	_interrupt_type
	C$DISP_THE_ACTIVE_INTERRUPT.c$102$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:102: interrupt_init(0);   /*configure the interrupts and it accepts interrupt as parameter */
;	assignBit
	clr	_interrupt_init_PARM_1
	lcall	_interrupt_init
	C$DISP_THE_ACTIVE_INTERRUPT.c$103$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:103: interrupt_type(0,0);
;	assignBit
	clr	_interrupt_type_PARM_1
;	assignBit
	clr	_interrupt_type_PARM_2
	lcall	_interrupt_type
	C$DISP_THE_ACTIVE_INTERRUPT.c$104$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:104: SW1 = 1;
;	assignBit
	setb	_P3_2
	C$DISP_THE_ACTIVE_INTERRUPT.c$105$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:105: SW2 = 1;
;	assignBit
	setb	_P3_3
	C$DISP_THE_ACTIVE_INTERRUPT.c$106$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:106: while(1)
00102$:
	C$DISP_THE_ACTIVE_INTERRUPT.c$108$2_0$28 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:108: LED1 = 0;
;	assignBit
	clr	_P0_0
	C$DISP_THE_ACTIVE_INTERRUPT.c$109$2_0$28 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:109: wait();
	lcall	_wait
	C$DISP_THE_ACTIVE_INTERRUPT.c$110$2_0$28 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:110: LED1 = 1;
;	assignBit
	setb	_P0_0
	C$DISP_THE_ACTIVE_INTERRUPT.c$111$2_0$28 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:111: wait();
	lcall	_wait
	sjmp	00102$
	C$DISP_THE_ACTIVE_INTERRUPT.c$113$1_0$27 ==.
;	DISP_THE_ACTIVE_INTERRUPT.c:113: }
	C$DISP_THE_ACTIVE_INTERRUPT.c$113$1_0$27 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$ar$0_0$0 == .
_ar:
	.db #0xc0	; 192
	.db #0xf9	; 249
	.db #0xa4	; 164
	.db #0xb0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
