	.file	"IfxEmem.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEmem_getLockedState,"ax",@progbits
	.align 1
	.global	IfxEmem_getLockedState
	.type	IfxEmem_getLockedState, @function
IfxEmem_getLockedState:
.LFB175:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Emem/Std/IfxEmem.c"
	.loc 1 37 0
	.loc 1 38 0
	movh.a	%a15, 63758
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 52
	.loc 1 39 0
	and	%d2, %d2, 1
	ret
.LFE175:
	.size	IfxEmem_getLockedState, .-IfxEmem_getLockedState
.section .text.IfxEmem_setClockEnableState,"ax",@progbits
	.align 1
	.global	IfxEmem_setClockEnableState
	.type	IfxEmem_setClockEnableState, @function
IfxEmem_setClockEnableState:
.LFB176:
	.loc 1 43 0
.LVL0:
	.loc 1 47 0
	movh.a	%a15, 63758
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15]0
	.loc 1 45 0
	jeq	%d4, 1, .L6
	.loc 1 51 0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
.LBB4:
.LBB5:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1436 0
#APP
	# 1436 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	ret
.L6:
.LBE5:
.LBE4:
	.loc 1 47 0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
.LBB7:
.LBB6:
	.loc 2 1436 0
#APP
	# 1436 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	ret
.LBE6:
.LBE7:
.LFE176:
	.size	IfxEmem_setClockEnableState, .-IfxEmem_setClockEnableState
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEmem_regdef.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Emem/Std/IfxEmem.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1098
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Emem/Std/IfxEmem.c"
	.string	"C:\\\\Users\\\\hsilnam\\\\eclipse-workspace\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"_Ifx_EMEM_CLC_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x2d
	.uaword	0x2b0
	.uleb128 0x4
	.string	"DISR"
	.byte	0x3
	.byte	0x2f
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"DISS"
	.byte	0x3
	.byte	0x30
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.byte	0x31
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uaword	0x2b5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x7
	.string	"Ifx_EMEM_CLC_Bits"
	.byte	0x3
	.byte	0x32
	.uaword	0x265
	.uleb128 0x3
	.string	"_Ifx_EMEM_ID_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x35
	.uaword	0x335
	.uleb128 0x4
	.string	"MOD_REV"
	.byte	0x3
	.byte	0x37
	.uaword	0x2b0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"MOD_TYPE"
	.byte	0x3
	.byte	0x38
	.uaword	0x2b0
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"MODNUMBER"
	.byte	0x3
	.byte	0x39
	.uaword	0x2b0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_ID_Bits"
	.byte	0x3
	.byte	0x3a
	.uaword	0x2de
	.uleb128 0x3
	.string	"_Ifx_EMEM_SBRCTR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x3d
	.uaword	0x543
	.uleb128 0x4
	.string	"STBLOCK"
	.byte	0x3
	.byte	0x3f
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"STBULK"
	.byte	0x3
	.byte	0x40
	.uaword	0x2b0
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.string	"STBSLK"
	.byte	0x3
	.byte	0x41
	.uaword	0x2b0
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"ACGSXCM0"
	.byte	0x3
	.byte	0x42
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.string	"reserved_9"
	.byte	0x3
	.byte	0x43
	.uaword	0x2b0
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"ACGEN"
	.byte	0x3
	.byte	0x44
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.string	"ACGSXTM0"
	.byte	0x3
	.byte	0x45
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"ACGSXTM1"
	.byte	0x3
	.byte	0x46
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.string	"reserved_15"
	.byte	0x3
	.byte	0x47
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"ACGST0"
	.byte	0x3
	.byte	0x48
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"ACGST1"
	.byte	0x3
	.byte	0x49
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.string	"ACGST2"
	.byte	0x3
	.byte	0x4a
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x4
	.string	"ACGST3"
	.byte	0x3
	.byte	0x4b
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"ACGST4"
	.byte	0x3
	.byte	0x4c
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.string	"ACGST5"
	.byte	0x3
	.byte	0x4d
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.string	"ACGST6"
	.byte	0x3
	.byte	0x4e
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.string	"ACGST7"
	.byte	0x3
	.byte	0x4f
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"ACGST8"
	.byte	0x3
	.byte	0x50
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"ACGST9"
	.byte	0x3
	.byte	0x51
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"ACGST10"
	.byte	0x3
	.byte	0x52
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.string	"ACGST11"
	.byte	0x3
	.byte	0x53
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"ACGST12"
	.byte	0x3
	.byte	0x54
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"ACGST13"
	.byte	0x3
	.byte	0x55
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"ACGST14"
	.byte	0x3
	.byte	0x56
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"ACGST15"
	.byte	0x3
	.byte	0x57
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_SBRCTR_Bits"
	.byte	0x3
	.byte	0x58
	.uaword	0x34d
	.uleb128 0x3
	.string	"_Ifx_EMEM_TILECC_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x5b
	.uaword	0x693
	.uleb128 0x4
	.string	"T0"
	.byte	0x3
	.byte	0x5d
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"T1"
	.byte	0x3
	.byte	0x5e
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.string	"T2"
	.byte	0x3
	.byte	0x5f
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.string	"T3"
	.byte	0x3
	.byte	0x60
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.string	"T4"
	.byte	0x3
	.byte	0x61
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.string	"T5"
	.byte	0x3
	.byte	0x62
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.string	"T6"
	.byte	0x3
	.byte	0x63
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x4
	.string	"T7"
	.byte	0x3
	.byte	0x64
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"T8"
	.byte	0x3
	.byte	0x65
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.string	"T9"
	.byte	0x3
	.byte	0x66
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"T10"
	.byte	0x3
	.byte	0x67
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"T11"
	.byte	0x3
	.byte	0x68
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"T12"
	.byte	0x3
	.byte	0x69
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.string	"T13"
	.byte	0x3
	.byte	0x6a
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"T14"
	.byte	0x3
	.byte	0x6b
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.string	"T15"
	.byte	0x3
	.byte	0x6c
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"XTM0"
	.byte	0x3
	.byte	0x6d
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"XTM1"
	.byte	0x3
	.byte	0x6e
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x3
	.byte	0x6f
	.uaword	0x2b0
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECC_Bits"
	.byte	0x3
	.byte	0x70
	.uaword	0x55f
	.uleb128 0x3
	.string	"_Ifx_EMEM_TILECONFIG_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x73
	.uaword	0x7b8
	.uleb128 0x4
	.string	"T0"
	.byte	0x3
	.byte	0x75
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.string	"T1"
	.byte	0x3
	.byte	0x76
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.string	"T2"
	.byte	0x3
	.byte	0x77
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.string	"T3"
	.byte	0x3
	.byte	0x78
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"T4"
	.byte	0x3
	.byte	0x79
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"T5"
	.byte	0x3
	.byte	0x7a
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"T6"
	.byte	0x3
	.byte	0x7b
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"T7"
	.byte	0x3
	.byte	0x7c
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"T8"
	.byte	0x3
	.byte	0x7d
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.string	"T9"
	.byte	0x3
	.byte	0x7e
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"T10"
	.byte	0x3
	.byte	0x7f
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.string	"T11"
	.byte	0x3
	.byte	0x80
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"T12"
	.byte	0x3
	.byte	0x81
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"T13"
	.byte	0x3
	.byte	0x82
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"T14"
	.byte	0x3
	.byte	0x83
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"T15"
	.byte	0x3
	.byte	0x84
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECONFIG_Bits"
	.byte	0x3
	.byte	0x85
	.uaword	0x6af
	.uleb128 0x3
	.string	"_Ifx_EMEM_TILECONFIGXM_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x88
	.uaword	0x84b
	.uleb128 0x4
	.string	"XCM0"
	.byte	0x3
	.byte	0x8a
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.byte	0x8b
	.uaword	0x2b0
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"XTM0"
	.byte	0x3
	.byte	0x8c
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.string	"XTM1"
	.byte	0x3
	.byte	0x8d
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x3
	.byte	0x8e
	.uaword	0x2b0
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECONFIGXM_Bits"
	.byte	0x3
	.byte	0x8f
	.uaword	0x7d8
	.uleb128 0x3
	.string	"_Ifx_EMEM_TILECT_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.uaword	0x9a1
	.uleb128 0x4
	.string	"T0"
	.byte	0x3
	.byte	0x94
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"T1"
	.byte	0x3
	.byte	0x95
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.string	"T2"
	.byte	0x3
	.byte	0x96
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.string	"T3"
	.byte	0x3
	.byte	0x97
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.string	"T4"
	.byte	0x3
	.byte	0x98
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.string	"T5"
	.byte	0x3
	.byte	0x99
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.string	"T6"
	.byte	0x3
	.byte	0x9a
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x4
	.string	"T7"
	.byte	0x3
	.byte	0x9b
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"T8"
	.byte	0x3
	.byte	0x9c
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.string	"T9"
	.byte	0x3
	.byte	0x9d
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"T10"
	.byte	0x3
	.byte	0x9e
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"T11"
	.byte	0x3
	.byte	0x9f
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"T12"
	.byte	0x3
	.byte	0xa0
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.string	"T13"
	.byte	0x3
	.byte	0xa1
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"T14"
	.byte	0x3
	.byte	0xa2
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.string	"T15"
	.byte	0x3
	.byte	0xa3
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"XTM0"
	.byte	0x3
	.byte	0xa4
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"XTM1"
	.byte	0x3
	.byte	0xa5
	.uaword	0x2b0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x3
	.byte	0xa6
	.uaword	0x2b0
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECT_Bits"
	.byte	0x3
	.byte	0xa7
	.uaword	0x86d
	.uleb128 0x3
	.string	"_Ifx_EMEM_TILESTATE_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xaa
	.uaword	0xaf5
	.uleb128 0x4
	.string	"TILE0"
	.byte	0x3
	.byte	0xac
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.string	"TILE1"
	.byte	0x3
	.byte	0xad
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.string	"TILE2"
	.byte	0x3
	.byte	0xae
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.string	"TILE3"
	.byte	0x3
	.byte	0xaf
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"TILE4"
	.byte	0x3
	.byte	0xb0
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"TILE5"
	.byte	0x3
	.byte	0xb1
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"TILE6"
	.byte	0x3
	.byte	0xb2
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"TILE7"
	.byte	0x3
	.byte	0xb3
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"TILE8"
	.byte	0x3
	.byte	0xb4
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.string	"TILE9"
	.byte	0x3
	.byte	0xb5
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"TILE10"
	.byte	0x3
	.byte	0xb6
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.string	"TILE11"
	.byte	0x3
	.byte	0xb7
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.string	"TILE12"
	.byte	0x3
	.byte	0xb8
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"TILE13"
	.byte	0x3
	.byte	0xb9
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"TILE14"
	.byte	0x3
	.byte	0xba
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"TILE15"
	.byte	0x3
	.byte	0xbb
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILESTATE_Bits"
	.byte	0x3
	.byte	0xbc
	.uaword	0x9bd
	.uleb128 0x3
	.string	"_Ifx_EMEM_TILESTATEXM_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xbf
	.uaword	0xb86
	.uleb128 0x4
	.string	"XCM0"
	.byte	0x3
	.byte	0xc1
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.byte	0xc2
	.uaword	0x2b0
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"XTM0"
	.byte	0x3
	.byte	0xc3
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.string	"XTM1"
	.byte	0x3
	.byte	0xc4
	.uaword	0x2b0
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x3
	.byte	0xc5
	.uaword	0x2b0
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILESTATEXM_Bits"
	.byte	0x3
	.byte	0xc6
	.uaword	0xb14
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xce
	.uaword	0xbcb
	.uleb128 0x9
	.string	"U"
	.byte	0x3
	.byte	0xd0
	.uaword	0x2b5
	.uleb128 0x9
	.string	"I"
	.byte	0x3
	.byte	0xd1
	.uaword	0x1d5
	.uleb128 0x9
	.string	"B"
	.byte	0x3
	.byte	0xd2
	.uaword	0x2c5
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_CLC"
	.byte	0x3
	.byte	0xd3
	.uaword	0xba7
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xd6
	.uaword	0xc03
	.uleb128 0x9
	.string	"U"
	.byte	0x3
	.byte	0xd8
	.uaword	0x2b5
	.uleb128 0x9
	.string	"I"
	.byte	0x3
	.byte	0xd9
	.uaword	0x1d5
	.uleb128 0x9
	.string	"B"
	.byte	0x3
	.byte	0xda
	.uaword	0x335
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_ID"
	.byte	0x3
	.byte	0xdb
	.uaword	0xbdf
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xde
	.uaword	0xc3a
	.uleb128 0x9
	.string	"U"
	.byte	0x3
	.byte	0xe0
	.uaword	0x2b5
	.uleb128 0x9
	.string	"I"
	.byte	0x3
	.byte	0xe1
	.uaword	0x1d5
	.uleb128 0x9
	.string	"B"
	.byte	0x3
	.byte	0xe2
	.uaword	0x543
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_SBRCTR"
	.byte	0x3
	.byte	0xe3
	.uaword	0xc16
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xe6
	.uaword	0xc75
	.uleb128 0x9
	.string	"U"
	.byte	0x3
	.byte	0xe8
	.uaword	0x2b5
	.uleb128 0x9
	.string	"I"
	.byte	0x3
	.byte	0xe9
	.uaword	0x1d5
	.uleb128 0x9
	.string	"B"
	.byte	0x3
	.byte	0xea
	.uaword	0x693
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECC"
	.byte	0x3
	.byte	0xeb
	.uaword	0xc51
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xee
	.uaword	0xcb0
	.uleb128 0x9
	.string	"U"
	.byte	0x3
	.byte	0xf0
	.uaword	0x2b5
	.uleb128 0x9
	.string	"I"
	.byte	0x3
	.byte	0xf1
	.uaword	0x1d5
	.uleb128 0x9
	.string	"B"
	.byte	0x3
	.byte	0xf2
	.uaword	0x7b8
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECONFIG"
	.byte	0x3
	.byte	0xf3
	.uaword	0xc8c
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xf6
	.uaword	0xcef
	.uleb128 0x9
	.string	"U"
	.byte	0x3
	.byte	0xf8
	.uaword	0x2b5
	.uleb128 0x9
	.string	"I"
	.byte	0x3
	.byte	0xf9
	.uaword	0x1d5
	.uleb128 0x9
	.string	"B"
	.byte	0x3
	.byte	0xfa
	.uaword	0x84b
	.byte	0
	.uleb128 0x7
	.string	"Ifx_EMEM_TILECONFIGXM"
	.byte	0x3
	.byte	0xfb
	.uaword	0xccb
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xfe
	.uaword	0xd33
	.uleb128 0xa
	.string	"U"
	.byte	0x3
	.uahalf	0x100
	.uaword	0x2b5
	.uleb128 0xa
	.string	"I"
	.byte	0x3
	.uahalf	0x101
	.uaword	0x1d5
	.uleb128 0xa
	.string	"B"
	.byte	0x3
	.uahalf	0x102
	.uaword	0x9a1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EMEM_TILECT"
	.byte	0x3
	.uahalf	0x103
	.uaword	0xd0c
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x106
	.uaword	0xd73
	.uleb128 0xa
	.string	"U"
	.byte	0x3
	.uahalf	0x108
	.uaword	0x2b5
	.uleb128 0xa
	.string	"I"
	.byte	0x3
	.uahalf	0x109
	.uaword	0x1d5
	.uleb128 0xa
	.string	"B"
	.byte	0x3
	.uahalf	0x10a
	.uaword	0xaf5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EMEM_TILESTATE"
	.byte	0x3
	.uahalf	0x10b
	.uaword	0xd4b
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uahalf	0x10e
	.uaword	0xdb6
	.uleb128 0xa
	.string	"U"
	.byte	0x3
	.uahalf	0x110
	.uaword	0x2b5
	.uleb128 0xa
	.string	"I"
	.byte	0x3
	.uahalf	0x111
	.uaword	0x1d5
	.uleb128 0xa
	.string	"B"
	.byte	0x3
	.uahalf	0x112
	.uaword	0xb86
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EMEM_TILESTATEXM"
	.byte	0x3
	.uahalf	0x113
	.uaword	0xd8e
	.uleb128 0xd
	.string	"_Ifx_EMEM"
	.uahalf	0x100
	.byte	0x3
	.uahalf	0x11e
	.uaword	0xeff
	.uleb128 0xe
	.string	"CLC"
	.byte	0x3
	.uahalf	0x120
	.uaword	0xbcb
	.byte	0
	.uleb128 0xe
	.string	"reserved_4"
	.byte	0x3
	.uahalf	0x121
	.uaword	0xeff
	.byte	0x4
	.uleb128 0xe
	.string	"ID"
	.byte	0x3
	.uahalf	0x122
	.uaword	0xc03
	.byte	0x8
	.uleb128 0xe
	.string	"reserved_C"
	.byte	0x3
	.uahalf	0x123
	.uaword	0xf1b
	.byte	0xc
	.uleb128 0xe
	.string	"TILECONFIG"
	.byte	0x3
	.uahalf	0x124
	.uaword	0xcb0
	.byte	0x20
	.uleb128 0xe
	.string	"TILECC"
	.byte	0x3
	.uahalf	0x125
	.uaword	0xc75
	.byte	0x24
	.uleb128 0xe
	.string	"TILECT"
	.byte	0x3
	.uahalf	0x126
	.uaword	0xd33
	.byte	0x28
	.uleb128 0xe
	.string	"TILESTATE"
	.byte	0x3
	.uahalf	0x127
	.uaword	0xd73
	.byte	0x2c
	.uleb128 0xe
	.string	"reserved_30"
	.byte	0x3
	.uahalf	0x128
	.uaword	0xeff
	.byte	0x30
	.uleb128 0xe
	.string	"SBRCTR"
	.byte	0x3
	.uahalf	0x129
	.uaword	0xc3a
	.byte	0x34
	.uleb128 0xe
	.string	"reserved_38"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0xf2b
	.byte	0x38
	.uleb128 0xe
	.string	"TILECONFIGXM"
	.byte	0x3
	.uahalf	0x12b
	.uaword	0xcef
	.byte	0x40
	.uleb128 0xe
	.string	"reserved_44"
	.byte	0x3
	.uahalf	0x12c
	.uaword	0xf2b
	.byte	0x44
	.uleb128 0xe
	.string	"TILESTATEXM"
	.byte	0x3
	.uahalf	0x12d
	.uaword	0xdb6
	.byte	0x4c
	.uleb128 0xe
	.string	"reserved_50"
	.byte	0x3
	.uahalf	0x12e
	.uaword	0xf3b
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.uaword	0x1eb
	.uaword	0xf0f
	.uleb128 0x10
	.uaword	0xf0f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xf
	.uaword	0x1eb
	.uaword	0xf2b
	.uleb128 0x10
	.uaword	0xf0f
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	0x1eb
	.uaword	0xf3b
	.uleb128 0x10
	.uaword	0xf0f
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.uaword	0x1eb
	.uaword	0xf4b
	.uleb128 0x10
	.uaword	0xf0f
	.byte	0xaf
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EMEM"
	.byte	0x3
	.uahalf	0x12f
	.uaword	0xf5c
	.uleb128 0x6
	.uaword	0xdd3
	.uleb128 0x11
	.byte	0x1
	.byte	0x4
	.byte	0x31
	.uaword	0xfa6
	.uleb128 0x12
	.string	"IfxEmem_LockedState_locked"
	.sleb128 0
	.uleb128 0x12
	.string	"IfxEmem_LockedState_unlocked"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.string	"IfxEmem_LockedState"
	.byte	0x4
	.byte	0x34
	.uaword	0xf61
	.uleb128 0x11
	.byte	0x1
	.byte	0x4
	.byte	0x39
	.uaword	0xffb
	.uleb128 0x12
	.string	"IfxEmem_State_disabled"
	.sleb128 0
	.uleb128 0x12
	.string	"IfxEmem_State_enabled"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.string	"IfxEmem_State"
	.byte	0x4
	.byte	0x3c
	.uaword	0xfc1
	.uleb128 0x13
	.string	"__nop"
	.byte	0x2
	.uahalf	0x59a
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.byte	0x1
	.string	"IfxEmem_getLockedState"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	0xfa6
	.uaword	.LFB175
	.uaword	.LFE175
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IfxEmem_setClockEnableState"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB176
	.uaword	.LFE176
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1096
	.uleb128 0x16
	.string	"state"
	.byte	0x1
	.byte	0x2a
	.uaword	0x1096
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	0x1010
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x18
	.uaword	0xffb
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LFB175
	.uaword	.LFE175
	.uaword	.LFB176
	.uaword	.LFE176
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_20"
.LASF1:
	.string	"reserved_18"
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
