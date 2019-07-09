	.file	"BasicLineScan.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BasicLineScan_run,"ax",@progbits
	.align 1
	.global	BasicLineScan_run
	.type	BasicLineScan_run, @function
BasicLineScan_run:
.LFB578:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.c"
	.loc 1 171 0
	.loc 1 175 0
	movh.a	%a2, hi:IfxPort_P14_0
	lea	%a14, [%a2] lo:IfxPort_P14_0
.LBB59:
.LBB60:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
	.loc 2 574 0
	ld.bu	%d2, [%a14] 4
	mov	%d15, 1
.LBE60:
.LBE59:
	.loc 1 175 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL0:
.LBB63:
.LBB61:
	.loc 2 574 0
	sh	%d15, %d15, %d2
.LBE61:
.LBE63:
	.loc 1 176 0
	movh	%d14, hi:IfxPort_P14_1
	.loc 1 177 0
	movh.a	%a12, hi:TimeConst
.LBB64:
.LBB62:
	.loc 2 574 0
	st.w	[%a15] 4, %d15
.LVL1:
.LBE62:
.LBE64:
	.loc 1 176 0
	mov.a	%a15, %d14
.LVL2:
.LBB65:
.LBB66:
	.loc 2 574 0
	movh	%d15, 1
.LBE66:
.LBE65:
	.loc 1 176 0
	lea	%a13, [%a15] lo:IfxPort_P14_1
.LBB70:
.LBB67:
	.loc 2 574 0
	ld.bu	%d2, [%a13] 4
.LBE67:
.LBE70:
	.loc 1 176 0
	ld.a	%a15, [%a15] lo:IfxPort_P14_1
.LVL3:
.LBB71:
.LBB68:
	.loc 2 574 0
	sh	%d2, %d15, %d2
.LBE68:
.LBE71:
	.loc 1 177 0
	lea	%a12, [%a12] lo:TimeConst
	movh	%d10, hi:g_VadcAutoScan
.LBB72:
.LBB69:
	.loc 2 574 0
	st.w	[%a15] 4, %d2
.LVL4:
.LBE69:
.LBE72:
	.loc 1 177 0
	ld.w	%d4, [%a12] 8
	ld.w	%d2, [%a12] 12
	mul.u	%e4, %d4, 5
	addi	%d10, %d10, lo:g_VadcAutoScan
	movh	%d12, hi:IR_LineScan
	madd	%d5, %d5, %d2, 5
	.loc 1 189 0
	mov	%d8, 0
	addi	%d12, %d12, lo:IR_LineScan
	.loc 1 177 0
	call	waitTime
.LVL5:
.LBB73:
.LBB74:
	.loc 2 574 0
	ld.bu	%d3, [%a14] 4
.LBE74:
.LBE73:
	.loc 1 179 0
	movh.a	%a2, hi:IfxPort_P14_0
.LBB78:
.LBB75:
	.loc 2 574 0
	mov	%d2, 1
.LBE75:
.LBE78:
	.loc 1 179 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL6:
.LBB79:
.LBB76:
	.loc 2 574 0
	sh	%d2, %d2, %d3
.LBE76:
.LBE79:
	.loc 1 180 0
	mov.a	%a2, %d14
.LBB80:
.LBB81:
	.loc 2 574 0
	movh	%d9, 1
.LBE81:
.LBE80:
.LBB84:
.LBB77:
	st.w	[%a15] 4, %d2
.LVL7:
.LBE77:
.LBE84:
.LBB85:
.LBB86:
	ld.bu	%d3, [%a13] 4
	mov	%d2, 1
.LBE86:
.LBE85:
	.loc 1 180 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_1
.LVL8:
.LBB89:
.LBB87:
	.loc 2 574 0
	sh	%d2, %d2, %d3
.LBE87:
.LBE89:
.LBB90:
	.loc 1 212 0
	mov	%d11, 2700
	.loc 1 213 0
	mov	%d13, 4096
.LBE90:
.LBB94:
.LBB88:
	.loc 2 574 0
	st.w	[%a15] 4, %d2
.LVL9:
.LBE88:
.LBE94:
	.loc 1 181 0
	ld.w	%d4, [%a12] 8
	ld.w	%d2, [%a12] 12
	mul.u	%e4, %d4, 5
	madd	%d5, %d5, %d2, 5
	call	waitTime
.LVL10:
.LBB95:
.LBB96:
	.loc 2 574 0
	ld.bu	%d2, [%a14] 4
.LBE96:
.LBE95:
	.loc 1 183 0
	movh.a	%a2, hi:IfxPort_P14_0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL11:
.LBB99:
.LBB97:
	.loc 2 574 0
	sh	%d15, %d15, %d2
.LBE97:
.LBE99:
	.loc 1 184 0
	mov.a	%a2, %d14
.LBB100:
.LBB98:
	.loc 2 574 0
	st.w	[%a15] 4, %d15
.LVL12:
.LBE98:
.LBE100:
.LBB101:
.LBB102:
	ld.bu	%d2, [%a13] 4
	mov	%d15, 1
.LBE102:
.LBE101:
	.loc 1 184 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_1
.LVL13:
.LBB104:
.LBB103:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a15] 4, %d15
.LVL14:
.LBE103:
.LBE104:
	.loc 1 185 0
	ld.w	%d4, [%a12] 8
	ld.w	%d15, [%a12] 12
	mul.u	%e4, %d4, 5
	madd	%d5, %d5, %d15, 5
	call	waitTime
.LVL15:
	mov.a	%a2, %d10
	ld.a	%a15, [%a2] 8
.LVL16:
.LBB105:
.LBB106:
.LBB107:
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Vadc/Std/IfxVadc.h"
	.loc 3 2415 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, 15, 9, 1
	st.w	[%a15] 164, %d15
.LVL17:
.L6:
.LBE107:
.LBE106:
.LBE105:
.LBB108:
.LBB82:
	.loc 2 574 0
	ld.bu	%d15, [%a14] 4
.LBE82:
.LBE108:
	.loc 1 192 0
	ld.a	%a15, [%a14]0
.LVL18:
.LBB109:
.LBB83:
	.loc 2 574 0
	sh	%d15, %d9, %d15
	st.w	[%a15] 4, %d15
.LVL19:
.LBE83:
.LBE109:
.LBB110:
.LBB111:
	ld.bu	%d15, [%a13] 4
.LBE111:
.LBE110:
	.loc 1 193 0
	ld.a	%a15, [%a13]0
.LVL20:
.LBB113:
.LBB112:
	.loc 2 574 0
	sh	%d15, %d9, %d15
	st.w	[%a15] 4, %d15
.LVL21:
.LBE112:
.LBE113:
	.loc 1 194 0
	ld.w	%d4, [%a12] 16
	ld.w	%d15, [%a12] 20
	mul.u	%e4, %d4, 3
	madd	%d5, %d5, %d15, 3
	call	waitTime
.LVL22:
.LBB114:
.LBB115:
	.loc 2 574 0
	ld.bu	%d15, [%a14] 4
.LBE115:
.LBE114:
	.loc 1 196 0
	ld.a	%a15, [%a14]0
.LVL23:
.LBB117:
.LBB116:
	.loc 2 574 0
	sh	%d15, %d9, %d15
	st.w	[%a15] 4, %d15
.LVL24:
.LBE116:
.LBE117:
.LBB118:
.LBB119:
	ld.bu	%d2, [%a13] 4
	mov	%d15, 1
.LBE119:
.LBE118:
	.loc 1 197 0
	ld.a	%a15, [%a13]0
.LVL25:
.LBB121:
.LBB120:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a15] 4, %d15
.LVL26:
.LBE120:
.LBE121:
	.loc 1 198 0
	ld.w	%d4, [%a12] 16
	ld.w	%d5, [%a12] 20
	dextr	%d5, %d5, %d4, 1
	sh	%d4, 1
	call	waitTime
.LVL27:
	.loc 1 201 0
	mov	%d3, 0
.LVL28:
.L5:
	mov.a	%a15, %d10
	add	%d15, %d3, 2
	addsc.a	%a2, %a15, %d15, 3
	ld.a	%a15, [%a2] 4
	ld.bu	%d15, [%a2] 1
	ld.a	%a3, [%a15] 4
	addi	%d15, %d15, 160
.LBB122:
.LBB91:
.LBB92:
.LBB93:
	.loc 3 2036 0
	addsc.a	%a15, %a3, %d15, 2
.L2:
.LVL29:
	.loc 3 2036 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL30:
	extr.u	%d2, %d15, 0, 16
.LVL31:
.LBE93:
.LBE92:
.LBE91:
	.loc 1 209 0 is_stmt 1 discriminator 1
	jgez	%d15, .L2
	.loc 1 213 0
	madd	%d15, %d8, %d3, 128
.LVL32:
	mov.a	%a2, %d12
.LVL33:
	addsc.a	%a15, %a2, %d15, 2
	.loc 1 212 0
	jge.u	%d2, %d11, .L3
	.loc 1 211 0
	st.w	[%a15]0, %d2
.L4:
.LBE122:
	.loc 1 201 0 discriminator 2
	add	%d3, 1
.LVL34:
	jne	%d3, 3, .L5
	.loc 1 189 0 discriminator 2
	add	%d8, 1
.LVL35:
	ne	%d15, %d8, 128
	jnz	%d15, .L6
.LBB123:
.LBB124:
	.loc 2 574 0
	ld.bu	%d2, [%a14] 4
.LVL36:
.LBE124:
.LBE123:
	.loc 1 219 0
	movh.a	%a2, hi:IfxPort_P14_0
.LBB128:
.LBB125:
	.loc 2 574 0
	movh	%d15, 1
.LBE125:
.LBE128:
	.loc 1 219 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL37:
.LBB129:
.LBB126:
	.loc 2 574 0
	sh	%d2, %d15, %d2
.LBE126:
.LBE129:
	.loc 1 220 0
	mov.a	%a2, %d14
.LBB130:
.LBB127:
	.loc 2 574 0
	st.w	[%a15] 4, %d2
.LVL38:
.LBE127:
.LBE130:
.LBB131:
.LBB132:
	ld.bu	%d2, [%a13] 4
.LBE132:
.LBE131:
	.loc 1 220 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_1
.LVL39:
.LBB134:
.LBB133:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a15] 4, %d15
.LVL40:
	ret
.LVL41:
.L3:
.LBE133:
.LBE134:
.LBB135:
	.loc 1 213 0
	st.w	[%a15]0, %d13
	j	.L4
.LBE135:
.LFE578:
	.size	BasicLineScan_run, .-BasicLineScan_run
.section .text.CopyPrevLine,"ax",@progbits
	.align 1
	.global	CopyPrevLine
	.type	CopyPrevLine, @function
CopyPrevLine:
.LFB579:
	.loc 1 235 0
.LVL42:
	lea	%SP, [%SP] -520
.LCFI0:
	.loc 1 235 0
	lea	%a6, [%SP] 4
	mov.aa	%a2, %a6
	ld.w	%d4, [%a5] 512
		# #chunks=64, chunksize=8, remains=4
	lea	%a15, 64-1
	0:
	ld.d	%e2, [%a5+]8
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	ld.w	%d2, [%a5+]4
	st.w	[%a2+]4, %d2
.LVL43:
	.loc 1 237 0
	mov	%d15, 0
	lea	%a15, 127
.LVL44:
.L13:
	.loc 1 238 0 discriminator 3
	sh	%d2, %d15, 2
	mov.a	%a2, %d2
	.loc 1 237 0 discriminator 3
	add	%d15, 1
.LVL45:
	.loc 1 238 0 discriminator 3
	add.a	%a3, %a4, %a2
	add.a	%a2, %a6
	ld.w	%d2, [%a2]0
	st.w	[%a3]0, %d2
	.loc 1 237 0 discriminator 3
	loop	%a15, .L13
	.loc 1 239 0
	st.w	[%a4] 512, %d4
	ret
.LFE579:
	.size	CopyPrevLine, .-CopyPrevLine
.section .text.GetMedian,"ax",@progbits
	.align 1
	.global	GetMedian
	.type	GetMedian, @function
GetMedian:
.LFB580:
	.loc 1 242 0
.LVL46:
	mov.aa	%a3, %a4
	.loc 1 244 0
	mov	%d3, 0
	mov.a	%a5, 4
.LVL47:
.L16:
	.loc 1 242 0
	rsub	%d15, %d3, 4
	mov.a	%a15, %d15
	mov.aa	%a2, %a3
.LVL48:
.L18:
	.loc 1 246 0
	ld.w	%d15, [%a3]0
	ld.w	%d2, [%a2]0
	jge	%d2, %d15, .L17
.LVL49:
	.loc 1 248 0
	st.w	[%a3]0, %d2
	.loc 1 249 0
	st.w	[%a2]0, %d15
.LVL50:
.L17:
	add.a	%a2, 4
	loop	%a15, .L18
	.loc 1 244 0 discriminator 2
	add	%d3, 1
.LVL51:
	add.a	%a3, 4
	loop	%a5, .L16
	.loc 1 254 0
	ld.w	%d2, [%a4] 8
	ret
.LFE580:
	.size	GetMedian, .-GetMedian
.section .text.GetMedianCenter,"ax",@progbits
	.align 1
	.global	GetMedianCenter
	.type	GetMedianCenter, @function
GetMedianCenter:
.LFB581:
	.loc 1 256 0
.LVL52:
	sub.a	%SP, 24
.LCFI1:
	.loc 1 260 0
	mov	%d15, 0
	mov.a	%a15, 4
.LVL53:
.L25:
	.loc 1 261 0 discriminator 3
	lea	%a3, [%SP] 24
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a4] 512
	st.w	[%a2] -20, %d2
	.loc 1 260 0 discriminator 3
	add	%d15, 1
.LVL54:
	lea	%a4, [%a4] 516
	loop	%a15, .L25
	mov	%d4, 0
	mov.a	%a4, 4
.LVL55:
.L26:
	.loc 1 265 0
	lea	%a15, [%SP] 24
	addsc.a	%a3, %a15, %d4, 2
	rsub	%d2, %d4, 4
	mov.a	%a15, %d2
	.loc 1 260 0
	mov	%d15, %d4
	.loc 1 265 0
	lea	%a3, [%a3] -20
.LVL56:
.L28:
	lea	%a5, [%SP] 24
	addsc.a	%a2, %a5, %d15, 2
	ld.w	%d2, [%a3]0
	ld.w	%d3, [%a2] -20
	jge	%d3, %d2, .L27
.LVL57:
	.loc 1 267 0
	st.w	[%a3]0, %d3
	.loc 1 268 0
	st.w	[%a2] -20, %d2
.LVL58:
.L27:
	.loc 1 264 0 discriminator 2
	add	%d15, 1
.LVL59:
	loop	%a15, .L28
	.loc 1 263 0 discriminator 2
	add	%d4, 1
.LVL60:
	loop	%a4, .L26
	.loc 1 273 0
	ld.w	%d2, [%SP] 12
	ret
.LFE581:
	.size	GetMedianCenter, .-GetMedianCenter
.section .text.Stretching,"ax",@progbits
	.align 1
	.global	Stretching
	.type	Stretching, @function
Stretching:
.LFB582:
	.loc 1 275 0
.LVL61:
	.loc 1 276 0
	ld.w	%d6, [%a4]0
.LVL62:
	.loc 1 278 0
	mov	%d5, 0
	.loc 1 276 0
	mov	%d2, %d6
	mov	%d15, %d6
	mov	%d3, %d6
	.loc 1 278 0
	lea	%a15, 127
.LVL63:
.L37:
	.loc 1 279 0 discriminator 3
	max	%d3, %d3, %d2
.LVL64:
	.loc 1 280 0 discriminator 3
	min	%d15, %d15, %d2
.LVL65:
	.loc 1 278 0 discriminator 3
	add	%d5, 1
.LVL66:
	loop	%a15, .L41
.LVL67:
	sub	%d3, %d15
.LVL68:
	itof	%d3, %d3
	itof	%d4, %d4
.LVL69:
	.loc 1 278 0 is_stmt 0
	mov	%d2, 0
	div.f	%d4, %d4, %d3
	lea	%a15, 127
	mov	%d3, %d6
.LVL70:
.L39:
	.loc 1 283 0 is_stmt 1 discriminator 3
	sub	%d3, %d15
	itof	%d3, %d3
	addsc.a	%a2, %a4, %d2, 2
	mul.f	%d3, %d3, %d4
	.loc 1 282 0 discriminator 3
	add	%d2, 1
.LVL71:
	.loc 1 283 0 discriminator 3
	ftoiz	%d3, %d3
	st.w	[%a2]0, %d3
	.loc 1 282 0 discriminator 3
	loop	%a15, .L40
	ret
.LVL72:
.L41:
	addsc.a	%a2, %a4, %d5, 2
	ld.w	%d2, [%a2]0
	j	.L37
.LVL73:
.L40:
	ld.w	%d3, [%a2] 4
	j	.L39
.LFE582:
	.size	Stretching, .-Stretching
.section .text.MedianFiltering,"ax",@progbits
	.align 1
	.global	MedianFiltering
	.type	MedianFiltering, @function
MedianFiltering:
.LFB583:
	.loc 1 286 0
.LVL74:
	sub.a	%SP, 24
.LCFI2:
	.loc 1 286 0
	mov.aa	%a12, %a4
	.loc 1 289 0
	mov	%d8, 2
.LVL75:
.L46:
	.loc 1 286 0
	mov	%d15, 0
	mov.a	%a15, 4
.LVL76:
.L47:
	.loc 1 291 0 discriminator 3
	add	%d2, %d15, %d8
	lea	%a2, [%SP] 24
	addsc.a	%a3, %a2, %d15, 2
	addsc.a	%a2, %a12, %d2, 2
	.loc 1 290 0 discriminator 3
	add	%d15, 1
.LVL77:
	.loc 1 291 0 discriminator 3
	ld.w	%d2, [%a2] -8
	st.w	[%a3] -20, %d2
	.loc 1 290 0 discriminator 3
	loop	%a15, .L47
	.loc 1 292 0 discriminator 2
	addsc.a	%a15, %a12, %d8, 2
	lea	%a4, [%SP] 4
	call	GetMedian
.LVL78:
	.loc 1 289 0 discriminator 2
	add	%d8, 1
.LVL79:
	.loc 1 292 0 discriminator 2
	st.w	[%a15]0, %d2
	.loc 1 289 0 discriminator 2
	eq	%d15, %d8, 126
.LVL80:
	jz	%d15, .L46
	ret
.LFE583:
	.size	MedianFiltering, .-MedianFiltering
.section .text.Sharpening,"ax",@progbits
	.align 1
	.global	Sharpening
	.type	Sharpening, @function
Sharpening:
.LFB584:
	.loc 1 295 0
.LVL81:
	lea	%SP, [%SP] -512
.LCFI3:
	.loc 1 300 0
	mov	%d15, 0
	.loc 1 301 0
	mov	%d4, 4096
	lea	%a15, 127
.LVL82:
.L51:
	sh	%d3, %d15, 2
	addsc.a	%a2, %a4, %d3, 0
	.loc 1 302 0 discriminator 3
	lea	%a3, [%SP] 512
	.loc 1 301 0 discriminator 3
	ld.w	%d2, [%a2]0
	.loc 1 300 0 discriminator 3
	add	%d15, 1
.LVL83:
	.loc 1 301 0 discriminator 3
	sub	%d2, %d4, %d2
	st.w	[%a2]0, %d2
	.loc 1 302 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 0
	st.w	[%a2] -512, %d2
	.loc 1 300 0 discriminator 3
	loop	%a15, .L51
	mov	%d4, 3
	.loc 1 300 0 is_stmt 0
	lea	%a2, 121
.LVL84:
.L52:
	sh	%d6, %d4, 2
	.loc 1 310 0 is_stmt 1
	addsc.a	%a3, %a4, %d6, 0
	addi	%d2, %d4, -3
	.loc 1 300 0
	mov	%d15, -2
	mov	%d7, 0
	mov	%d5, 0
	mov	%d0, 0
.LVL85:
.L58:
	.loc 1 308 0
	jge.u	%d15, 3, .L65
.LVL86:
.L53:
	.loc 1 309 0
	andn	%d3, %d15, ~(-3)
	jnz	%d3, .L54
	.loc 1 309 0 is_stmt 0 discriminator 1
	addsc.a	%a15, %a4, %d2, 2
	ld.w	%d3, [%a15]0
	madd	%d5, %d5, %d3, 3
.LVL87:
.L54:
	.loc 1 310 0 is_stmt 1
	jeq	%d2, %d4, .L66
.LVL88:
	.loc 1 307 0 discriminator 2
	jeq	%d15, 4, .L67
.L56:
	add	%d15, 1
.LVL89:
	add	%d2, 1
	j	.L58
.LVL90:
.L67:
	.loc 1 312 0
	add	%d5, %d0
.LVL91:
	lea	%a5, [%SP] 512
	add	%d5, %d7
	addsc.a	%a15, %a5, %d6, 0
	.loc 1 305 0
	add	%d4, 1
.LVL92:
	.loc 1 312 0
	st.w	[%a15] -512, %d5
	.loc 1 305 0
	loop	%a2, .L52
	mov	%d15, 0
.LVL93:
	lea	%a15, 127
.LVL94:
.L57:
	.loc 1 316 0 discriminator 3
	sh	%d2, %d15, 2
	mov.a	%a2, %d2
	lea	%a5, [%SP] 512
	add.a	%a3, %a4, %a2
	add.a	%a2, %a5
	ld.w	%d2, [%a2] -512
	st.w	[%a3]0, %d2
	.loc 1 315 0 discriminator 3
	add	%d15, 1
.LVL95:
	loop	%a15, .L57
	.loc 1 317 0
	ret
.LVL96:
.L66:
	.loc 1 310 0 discriminator 1
	ld.w	%d3, [%a3]0
	madd	%d7, %d7, %d3, 6
.LVL97:
	j	.L56
.LVL98:
.L65:
	.loc 1 308 0 discriminator 1
	addsc.a	%a15, %a4, %d2, 2
	ld.w	%d3, [%a15]0
	mul	%d3, %d3, -3
	add	%d0, %d3
.LVL99:
	j	.L53
.LFE584:
	.size	Sharpening, .-Sharpening
.section .text.IsNoise,"ax",@progbits
	.align 1
	.global	IsNoise
	.type	IsNoise, @function
IsNoise:
.LFB585:
	.loc 1 319 0
.LVL100:
	mov.aa	%a2, %a4
	.loc 1 320 0
	mov	%e2, 0
	.loc 1 323 0
	mov	%d7, 5
	mov	%d6, 516
	mov.a	%a15, 4
.LVL101:
.L70:
	add	%d3, 1
.LVL102:
	div	%e4, %d3, %d7
	ld.w	%d0, [%a2] 512
	mul	%d15, %d5, %d6
	addsc.a	%a3, %a4, %d15, 0
	ld.w	%d4, [%a3] 512
	sub	%d15, %d0, %d4
	jltz	%d15, .L72
.L69:
	.loc 1 323 0 is_stmt 0 discriminator 4
	add	%d2, %d15
.LVL103:
	lea	%a2, [%a2] 516
	loop	%a15, .L70
	.loc 1 328 0 is_stmt 1
	ge	%d2, %d2, 50
.LVL104:
	ret
.LVL105:
.L72:
	.loc 1 323 0 discriminator 1
	rsub	%d15, %d0, 0
	sub	%d15, %d4
	j	.L69
.LFE585:
	.size	IsNoise, .-IsNoise
.section .text.Camera_Initialization,"ax",@progbits
	.align 1
	.global	Camera_Initialization
	.type	Camera_Initialization, @function
Camera_Initialization:
.LFB586:
	.loc 1 330 0
.LVL106:
	movh.a	%a4, hi:cam_info
	.loc 1 332 0
	mov	%d6, 0
	lea	%a4, [%a4] lo:cam_info
	mov	%d7, 2580
	.loc 1 334 0
	mov	%d4, 516
	mov	%d5, 70
.LVL107:
.L74:
	mul	%d3, %d6, %d7
	.loc 1 330 0
	mov	%d15, 0
	.loc 1 334 0
	mov.a	%a15, 4
	addsc.a	%a2, %a4, %d3, 0
.LVL108:
.L75:
	.loc 1 334 0 is_stmt 0 discriminator 3
	madd	%d2, %d3, %d15, %d4
	.loc 1 333 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL109:
	.loc 1 334 0 discriminator 3
	addsc.a	%a3, %a4, %d2, 0
	st.w	[%a3] 512, %d5
	.loc 1 335 0 discriminator 3
	mov.aa	%a3, %a2
	mov	%e0, 0
	lea	%a5, 64-1
	0:
	st.d	[%a3+]8, %e0
	loop	%a5, 0b
	lea	%a2, [%a2] 516
	loop	%a15, .L75
	.loc 1 332 0 discriminator 2
	add	%d6, 1
.LVL110:
	jne	%d6, 3, .L74
	.loc 1 338 0
	movh.a	%a15, hi:FILTERED_CENTER_LINE
	.loc 1 340 0
	mov	%d15, 0
.LVL111:
	.loc 1 338 0
	lea	%a15, [%a15] lo:FILTERED_CENTER_LINE
	mov	%e0, 0
	lea	%a2, 64-1
	0:
	st.d	[%a15+]8, %e0
	loop	%a2, 0b
	.loc 1 340 0
	movh.a	%a15, hi:nowIndex
	st.w	[%a15] lo:nowIndex, %d15
	.loc 1 341 0
	movh.a	%a15, hi:cntTotal
	st.w	[%a15] lo:cntTotal, %d15
	.loc 1 342 0
	movh.a	%a15, hi:cntLeft
	st.w	[%a15] lo:cntLeft, %d15
.LVL112:
.LBB136:
.LBB137:
	.loc 1 591 0
	movh.a	%a15, hi:countPassedObject
	st.w	[%a15] lo:countPassedObject, %d15
.LVL113:
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	.loc 1 597 0
	movh.a	%a15, hi:dottedLine
	st.w	[%a15] lo:dottedLine, %d15
	ret
.LBE139:
.LBE138:
.LFE586:
	.size	Camera_Initialization, .-Camera_Initialization
.section .text.BasicLineScan_init,"ax",@progbits
	.align 1
	.global	BasicLineScan_init
	.type	BasicLineScan_init, @function
BasicLineScan_init:
.LFB577:
	.loc 1 70 0
	sub.a	%SP, 168
.LCFI4:
	.loc 1 75 0
	lea	%a4, [%SP] 4
	movh.a	%a5, 61442
	.loc 1 78 0
	movh.a	%a15, hi:g_VadcAutoScan
	lea	%a15, [%a15] lo:g_VadcAutoScan
	.loc 1 75 0
	call	IfxVadc_Adc_initModuleConfig
.LVL114:
	.loc 1 78 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	call	IfxVadc_Adc_initModule
.LVL115:
	.loc 1 82 0
	mov.aa	%a5, %a15
	lea	%a4, [%SP] 40
	call	IfxVadc_Adc_initGroupConfig
.LVL116:
	.loc 1 85 0
	mov	%d15, 0
	.loc 1 89 0
	mov	%d2, 1
	.loc 1 99 0
	lea	%a12, [%a15] 4
	mov.aa	%a4, %a12
	lea	%a5, [%SP] 40
	.loc 1 85 0
	st.b	[%SP] 44, %d15
	.loc 1 86 0
	st.b	[%SP] 45, %d15
	.loc 1 89 0
	st.b	[%SP] 92, %d2
	.loc 1 92 0
	st.b	[%SP] 64, %d2
	.loc 1 95 0
	st.b	[%SP] 68, %d2
	.loc 1 99 0
	call	IfxVadc_Adc_initGroup
.LVL117:
	.loc 1 109 0
	mov.aa	%a5, %a12
	lea	%a4, [%SP] 96
	call	IfxVadc_Adc_initChannelConfig
.LVL118:
	.loc 1 115 0
	lea	%a4, [%a15] 16
	lea	%a5, [%SP] 96
	.loc 1 111 0
	st.b	[%SP] 108, %d15
	.loc 1 112 0
	st.b	[%SP] 111, %d15
	.loc 1 115 0
	call	IfxVadc_Adc_initChannel
.LVL119:
	.loc 1 118 0
	ld.b	%d2, [%SP] 108
.LBB140:
.LBB141:
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Vadc/Adc/IfxVadc_Adc.h"
	.loc 4 1265 0
	ld.a	%a4, [%a15] 8
.LBE141:
.LBE140:
	.loc 1 118 0
	mov	%d4, 1
	sh	%d4, %d4, %d2
.LVL120:
.LBB143:
.LBB142:
	.loc 4 1265 0
	mov	%d5, %d4
	call	IfxVadc_setScan
.LVL121:
.LBE142:
.LBE143:
	.loc 1 118 0
	mov	%d15, 1
	.loc 1 123 0
	mov.aa	%a5, %a12
	lea	%a4, [%SP] 120
	call	IfxVadc_Adc_initChannelConfig
.LVL122:
	.loc 1 128 0
	lea	%a4, [%a15] 24
	lea	%a5, [%SP] 120
	.loc 1 124 0
	st.b	[%SP] 132, %d15
	.loc 1 125 0
	st.b	[%SP] 135, %d15
	.loc 1 128 0
	call	IfxVadc_Adc_initChannel
.LVL123:
	.loc 1 131 0
	ld.b	%d15, [%SP] 132
.LBB144:
.LBB145:
	.loc 4 1265 0
	ld.a	%a4, [%a15] 8
.LBE145:
.LBE144:
	.loc 1 131 0
	mov	%d4, 1
	sh	%d4, %d4, %d15
.LVL124:
.LBB147:
.LBB146:
	.loc 4 1265 0
	mov	%d5, %d4
	call	IfxVadc_setScan
.LVL125:
.LBE146:
.LBE147:
	.loc 1 136 0
	mov.aa	%a5, %a12
	.loc 1 137 0
	mov	%d15, 2
.LVL126:
	.loc 1 136 0
	lea	%a4, [%SP] 144
	call	IfxVadc_Adc_initChannelConfig
.LVL127:
	.loc 1 141 0
	lea	%a5, [%SP] 144
	lea	%a4, [%a15] 32
	.loc 1 137 0
	st.b	[%SP] 156, %d15
	.loc 1 138 0
	st.b	[%SP] 159, %d15
	.loc 1 141 0
	call	IfxVadc_Adc_initChannel
.LVL128:
	.loc 1 144 0
	ld.b	%d15, [%SP] 156
.LBB148:
.LBB149:
	.loc 4 1265 0
	ld.a	%a4, [%a15] 8
.LBE149:
.LBE148:
	.loc 1 144 0
	mov	%d4, 1
	sh	%d4, %d4, %d15
.LVL129:
.LBB151:
.LBB150:
	.loc 4 1265 0
	mov	%d5, %d4
	call	IfxVadc_setScan
.LVL130:
.LBE150:
.LBE151:
	.loc 1 153 0
	movh.a	%a12, hi:IfxPort_P14_0
	.loc 1 151 0
	call	initTime
.LVL131:
	.loc 1 153 0
	lea	%a15, [%a12] lo:IfxPort_P14_0
	ld.a	%a4, [%a12] lo:IfxPort_P14_0
	ld.bu	%d4, [%a15] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL132:
	.loc 1 154 0
	ld.a	%a4, [%a12] lo:IfxPort_P14_0
	ld.bu	%d4, [%a15] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL133:
.LBB152:
.LBB153:
	.loc 2 574 0
	ld.bu	%d2, [%a15] 4
	movh	%d15, 1
.LVL134:
.LBE153:
.LBE152:
	.loc 1 155 0
	ld.a	%a2, [%a12] lo:IfxPort_P14_0
.LVL135:
.LBB156:
.LBB154:
	.loc 2 574 0
	sh	%d2, %d15, %d2
.LBE154:
.LBE156:
	.loc 1 157 0
	movh.a	%a12, hi:IfxPort_P14_1
	lea	%a15, [%a12] lo:IfxPort_P14_1
.LBB157:
.LBB155:
	.loc 2 574 0
	st.w	[%a2] 4, %d2
.LVL136:
.LBE155:
.LBE157:
	.loc 1 157 0
	ld.a	%a4, [%a12] lo:IfxPort_P14_1
	ld.bu	%d4, [%a15] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL137:
	.loc 1 158 0
	ld.a	%a4, [%a12] lo:IfxPort_P14_1
	ld.bu	%d4, [%a15] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL138:
.LBB158:
.LBB159:
	.loc 2 574 0
	ld.bu	%d2, [%a15] 4
.LBE159:
.LBE158:
	.loc 1 159 0
	ld.a	%a2, [%a12] lo:IfxPort_P14_1
.LVL139:
.LBB161:
.LBB160:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a2] 4, %d15
.LVL140:
.LBE160:
.LBE161:
	.loc 1 163 0
	j	Camera_Initialization
.LVL141:
.LFE577:
	.size	BasicLineScan_init, .-BasicLineScan_init
.section .text.FindCenter,"ax",@progbits
	.align 1
	.global	FindCenter
	.type	FindCenter, @function
FindCenter:
.LFB588:
	.loc 1 436 0
.LVL142:
	.loc 1 443 0
	movh	%d3, 1
	.loc 1 437 0
	mov	%d5, 0
	.loc 1 440 0
	mov	%d15, 0
	.loc 1 445 0
	mov	%d4, 0
	.loc 1 443 0
	addi	%d3, %d3, 4464
	lea	%a15, 127
.LVL143:
.L82:
	addsc.a	%a2, %a4, %d15, 2
	.loc 1 441 0
	ld.w	%d2, [%a2]0
	jltz	%d2, .L80
	.loc 1 443 0
	jlt	%d2, %d3, .L80
.L81:
	.loc 1 440 0 discriminator 2
	add	%d15, 1
.LVL144:
	loop	%a15, .L82
.LVL145:
	movh	%d4, hi:Zero_center_line
	.loc 1 440 0 is_stmt 0
	mov	%d15, 0
	addi	%d4, %d4, lo:Zero_center_line
	lea	%a15, 127
.LVL146:
.L83:
	.loc 1 452 0 is_stmt 1 discriminator 3
	sh	%d2, %d15, 2
	addsc.a	%a2, %a4, %d2, 0
	mov.a	%a3, %d4
	ld.w	%d3, [%a2]0
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 451 0 discriminator 3
	add	%d15, 1
.LVL147:
	.loc 1 452 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 451 0 discriminator 3
	loop	%a15, .L83
	.loc 1 456 0
	ge	%d5, %d5, 121
.LVL148:
	mov	%d15, 68
.LVL149:
	mov	%e2, 127
	lea	%a15, 68
	jz	%d5, .L92
.LVL150:
.L105:
	.loc 1 460 0
	eq	%d4, %d3, 0
	and.ne	%d4, %d15, 0
	jz	%d4, .L86
.LVL151:
	add	%d3, %d15, 1
	.loc 1 460 0 is_stmt 0 discriminator 1
	addsc.a	%a2, %a4, %d3, 2
	ld.w	%d4, [%a2]0
	jz	%d4, .L97
	.loc 1 460 0 discriminator 2
	addsc.a	%a2, %a4, %d15, 2
	ld.w	%d4, [%a2]0
	seln	%d3, %d4, %d3, 0
.LVL152:
.L86:
	rsub	%d5, %d15, 69
	.loc 1 464 0 is_stmt 1
	eq	%d4, %d2, 127
	and.lt	%d4, %d5, 56
	jnz	%d4, .L112
.LVL153:
.L87:
	add	%d15, -1
.LVL154:
	loop	%a15, .L105
	.loc 1 469 0
	movh.a	%a15, hi:isLimitZone
	ld.w	%d15, [%a15] lo:isLimitZone
.LVL155:
	jeq	%d15, 1, .L113
.L88:
	.loc 1 478 0
	ne	%d15, %d2, 127
	jnz	%d15, .L94
.LVL156:
.L91:
	.loc 1 482 0
	add	%d15, %d3, -5
	lt.u	%d15, %d15, 50
	jz	%d15, .L92
.LVL157:
	.loc 1 483 0
	addi	%d2, %d3, 55
.LVL158:
.L93:
	.loc 1 490 0
	addi	%d15, %d2, -11
	ge.u	%d15, %d15, 107
	jnz	%d15, .L92
	ret
.LVL159:
.L80:
	.loc 1 444 0
	add	%d5, 1
.LVL160:
	.loc 1 445 0
	st.w	[%a2]0, %d4
	j	.L81
.LVL161:
.L112:
	rsub	%d2, %d15, 139
.LVL162:
	.loc 1 464 0 discriminator 1
	addsc.a	%a2, %a4, %d2, 2
	ld.w	%d4, [%a2]0
	jz	%d4, .L99
	rsub	%d4, %d15, 140
	.loc 1 464 0 is_stmt 0 discriminator 2
	addsc.a	%a2, %a4, %d4, 2
	ld.w	%d4, [%a2]0
	seln	%d2, %d4, %d2, 127
	j	.L87
.L99:
	mov	%d2, 127
	j	.L87
.LVL163:
.L92:
	.loc 1 456 0 is_stmt 1
	mov	%d2, -1
	ret
.LVL164:
.L113:
.LBB162:
.LBB163:
	.loc 1 588 0
	movh.a	%a15, hi:countPassedObject
.LBE163:
.LBE162:
	.loc 1 470 0
	ld.w	%d15, [%a15] lo:countPassedObject
	jnz	%d15, .L88
	.loc 1 471 0
	jnz	%d3, .L89
	.loc 1 472 0
	movh.a	%a15, hi:leftIndexCount
	ld.w	%d15, [%a15] lo:leftIndexCount
	add	%d15, 1
	st.w	[%a15] lo:leftIndexCount, %d15
.L89:
	.loc 1 473 0
	ne	%d15, %d2, 127
	.loc 1 479 0
	addi	%d2, %d2, -55
.LVL165:
	.loc 1 473 0
	jnz	%d15, .L93
	.loc 1 474 0
	movh.a	%a15, hi:rightIndexCount
	ld.w	%d15, [%a15] lo:rightIndexCount
	add	%d15, 1
	st.w	[%a15] lo:rightIndexCount, %d15
	j	.L91
.LVL166:
.L94:
	.loc 1 479 0
	addi	%d2, %d2, -55
.LVL167:
	j	.L93
.LVL168:
.L97:
	mov	%d3, 0
	j	.L86
.LFE588:
	.size	FindCenter, .-FindCenter
.section .text.FindOneLine,"ax",@progbits
	.align 1
	.global	FindOneLine
	.type	FindOneLine, @function
FindOneLine:
.LFB589:
	.loc 1 498 0
.LVL169:
	.loc 1 505 0
	mov.u	%d2, 60000
	mov.aa	%a2, %a4
	.loc 1 499 0
	mov	%e6, 0
	.loc 1 510 0
	mov	%d5, 0
	.loc 1 508 0
	addi	%d3, %d2, 30000
	lea	%a15, 127
.LVL170:
.L119:
	.loc 1 503 0
	ld.w	%d15, [%a2]0
	jltz	%d15, .L115
	.loc 1 505 0
	jlt	%d15, %d2, .L115
	.loc 1 508 0
	jlt	%d15, %d3, .L117
.L118:
	add.a	%a2, 4
	loop	%a15, .L119
	.loc 1 514 0
	movh.a	%a15, hi:indexWhite
	ld.w	%d15, [%a15] lo:indexWhite
	movh.a	%a2, hi:countWhite
	lea	%a2, [%a2] lo:countWhite
	addsc.a	%a2, %a2, %d15, 2
	.loc 1 515 0
	add	%d15, 1
	sh	%d2, %d15, -31
	xor.t	%d15, %d15,31, %d15,0
	sub	%d2, %d15, %d2
	.loc 1 518 0
	lt	%d15, %d6, 116
	.loc 1 514 0
	st.w	[%a2]0, %d6
	.loc 1 515 0
	st.w	[%a15] lo:indexWhite, %d2
	.loc 1 518 0
	or.lt	%d15, %d7, 125
	.loc 1 519 0
	mov	%d2, -1
	.loc 1 518 0
	jnz	%d15, .L120
	lea	%a3, [%a4] 24
	lea	%a2, [%a4] 20
	lea	%a5, [%a4] 492
	lea	%a6, [%a4] 488
	mov	%d2, 5
	mov	%d3, 123
	mov	%d7, -1
.LVL171:
	lea	%a15, 107
.LVL172:
.L125:
	.loc 1 522 0
	jeq	%d4, -1, .L142
	.loc 1 528 0
	jeq	%d4, 1, .L143
.LVL173:
.L123:
	add	%d3, -1
	add	%d2, 1
.LVL174:
	add.a	%a3, 4
	add.a	%a2, 4
	add.a	%a5, -4
	add.a	%a6, -4
	.loc 1 521 0 discriminator 2
	loop	%a15, .L125
	.loc 1 536 0
	addi	%d2, %d7, -4
.LVL175:
	ge.u	%d2, %d2, 120
	seln	%d2, %d2, %d7, -1
.LVL176:
.L120:
	.loc 1 540 0
	ret
.LVL177:
.L115:
	.loc 1 506 0
	add	%d6, 1
.LVL178:
.L117:
	.loc 1 509 0
	add	%d7, 1
.LVL179:
	.loc 1 510 0
	st.w	[%a2]0, %d5
	j	.L118
.LVL180:
.L142:
	.loc 1 523 0
	ld.w	%d5, [%a2]0
	jeq	%d7, -1, .L144
	.loc 1 525 0 discriminator 1
	jz	%d5, .L123
	.loc 1 525 0 is_stmt 0 discriminator 2
	ld.w	%d6, [%a3]0
	jnz	%d6, .L123
	.loc 1 525 0 discriminator 3
	addsc.a	%a7, %a4, %d7, 2
	ld.w	%d6, [%a7]0
	.loc 1 526 0 is_stmt 1 discriminator 3
	lt	%d5, %d5, %d6
	sel	%d7, %d5, %d7, %d2
.LVL181:
	j	.L123
.LVL182:
.L143:
	.loc 1 529 0
	ld.w	%d5, [%a5]0
	jeq	%d7, -1, .L145
	.loc 1 531 0 discriminator 1
	jz	%d5, .L123
	.loc 1 531 0 is_stmt 0 discriminator 2
	ld.w	%d6, [%a6]0
	jnz	%d6, .L123
	.loc 1 531 0 discriminator 3
	addsc.a	%a7, %a4, %d7, 2
	ld.w	%d6, [%a7]0
	.loc 1 532 0 is_stmt 1 discriminator 3
	lt	%d5, %d5, %d6
	sel	%d7, %d5, %d7, %d3
.LVL183:
	j	.L123
.LVL184:
.L144:
	.loc 1 523 0 discriminator 1
	jz	%d5, .L123
	.loc 1 524 0 discriminator 2
	ld.w	%d15, [%a3]0
	cmovn	%d7, %d15, %d2
	j	.L123
.LVL185:
.L145:
	.loc 1 529 0 discriminator 1
	jz	%d5, .L123
	.loc 1 530 0 discriminator 2
	ld.w	%d15, [%a6]0
	cmovn	%d7, %d15, %d3
	j	.L123
.LFE589:
	.size	FindOneLine, .-FindOneLine
.section .text.GetCameraCenter,"ax",@progbits
	.align 1
	.global	GetCameraCenter
	.type	GetCameraCenter, @function
GetCameraCenter:
.LFB587:
	.loc 1 348 0
.LVL186:
	.loc 1 354 0
	jlt	%d5, 2, .L147
	.loc 1 355 0
	lt	%d4, %d4, 60
.LVL187:
	jnz	%d4, .L148
	.loc 1 356 0
	mov	%d15, 0
	movh.a	%a15, hi:g_cameraDirection
	st.w	[%a15] lo:g_cameraDirection, %d15
.L147:
	movh.a	%a13, hi:nowIndex
	ld.w	%d5, [%a13] lo:nowIndex
.LVL188:
	movh	%d15, hi:cam_info
	mul	%d4, %d5, 129
	addi	%d15, %d15, lo:cam_info
	movh.a	%a2, hi:IR_LineScan
	.loc 1 348 0 discriminator 1
	mov	%d2, 0
	lea	%a2, [%a2] lo:IR_LineScan
	.loc 1 362 0 discriminator 1
	mov	%d6, %d15
	lea	%a15, 127
.LVL189:
.L149:
	.loc 1 362 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d15
	add	%d3, %d4, %d2
	addsc.a	%a4, %a3, %d3, 2
	addsc.a	%a3, %a2, %d2, 2
	ld.w	%d7, [%a3]0
	.loc 1 363 0 is_stmt 1 discriminator 3
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 362 0 discriminator 3
	st.w	[%a4]0, %d7
	.loc 1 363 0 discriminator 3
	ld.w	%d7, [%a3] 512
	.loc 1 364 0 discriminator 3
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 363 0 discriminator 3
	st.w	[%a4] 2580, %d7
	.loc 1 364 0 discriminator 3
	ld.w	%d3, [%a3] 1024
	st.w	[%a4] 5160, %d3
	.loc 1 361 0 discriminator 3
	add	%d2, 1
.LVL190:
	loop	%a15, .L149
	.loc 1 366 0
	mov	%d2, 516
.LVL191:
	madd	%d4, %d6, %d5, %d2
	mov	%d2, 70
	.loc 1 368 0
	mov	%d10, 0
	.loc 1 366 0
	mov.a	%a15, %d4
	.loc 1 369 0
	mov	%d9, 516
	.loc 1 366 0
	st.w	[%a15] 512, %d2
.LVL192:
	movh.a	%a15, hi:nowIndex
	lea	%a15, [%a15] lo:nowIndex
	.loc 1 369 0
	mov	%d13, 2580
	mov	%d12, %d15
	.loc 1 370 0
	mov.aa	%a12, %a15
.LVL193:
.L151:
	.loc 1 369 0 discriminator 3
	mul	%d8, %d10, %d13
	mov.a	%a2, %d15
	mov	%d4, 4096
	madd	%d5, %d8, %d5, %d9
	.loc 1 368 0 discriminator 3
	add	%d10, 1
.LVL194:
	.loc 1 369 0 discriminator 3
	mov	%d11, 516
	addsc.a	%a4, %a2, %d5, 0
	call	Stretching
.LVL195:
	.loc 1 370 0 discriminator 3
	ld.w	%d2, [%a15]0
	mov.a	%a3, %d15
	madd	%d2, %d8, %d2, %d9
	addsc.a	%a4, %a3, %d2, 0
	call	MedianFiltering
.LVL196:
	.loc 1 371 0 discriminator 3
	ld.w	%d2, [%a15]0
	mov.a	%a5, %d15
	madd	%d2, %d8, %d2, %d9
	addsc.a	%a4, %a5, %d2, 0
	call	Sharpening
.LVL197:
	.loc 1 372 0 discriminator 3
	ld.w	%d2, [%a15]0
	mov.a	%a2, %d15
	madd	%d8, %d8, %d2, %d9
	movh	%d4, 2
	addi	%d4, %d4, -31072
	addsc.a	%a4, %a2, %d8, 0
	call	Stretching
.LVL198:
	.loc 1 368 0 discriminator 3
	jeq	%d10, 3, .L150
	ld.w	%d5, [%a12]0
	j	.L151
.L150:
	.loc 1 376 0
	ld.w	%d2, [%a12]0
	.loc 1 383 0
	mov	%d10, %d15
.LVL199:
	.loc 1 376 0
	madd	%d3, %d12, %d2, %d11
	mov.a	%a4, %d3
	mov.a	%a15, %d3
	call	FindCenter
.LVL200:
	.loc 1 377 0
	ld.w	%d8, [%a12]0
	.loc 1 376 0
	st.w	[%a15] 512, %d2
	.loc 1 377 0
	mul	%d8, %d11
	mov	%d4, -1
	mov.a	%a2, %d8
	lea	%a4, [%a2] 2580
	addsc.a	%a4, %a4, %d12, 0
	call	FindOneLine
.LVL201:
	mov.a	%a3, %d12
	.loc 1 378 0
	mov	%d4, 1
	.loc 1 377 0
	addsc.a	%a15, %a3, %d8, 0
	st.w	[%a15] 3092, %d2
	.loc 1 378 0
	ld.w	%d2, [%a12]0
	mul	%d11, %d2
	mov.a	%a5, %d11
	lea	%a4, [%a5] 5160
	addsc.a	%a4, %a4, %d12, 0
	call	FindOneLine
.LVL202:
	mov.a	%a2, %d12
	ld.w	%d8, [%a12]0
	addsc.a	%a15, %a2, %d11, 0
	mul	%d7, %d8, 129
	movh.a	%a4, hi:speedLimitLine
	st.w	[%a15] 5672, %d2
.LVL203:
	.loc 1 381 0
	mov	%d6, 0
	lea	%a4, [%a4] lo:speedLimitLine
	.loc 1 383 0
	mov	%d0, 645
.LVL204:
.L152:
	madd	%d4, %d7, %d6, %d0
	.loc 1 368 0
	mov	%d2, 0
	sh	%d5, %d6, 7
	.loc 1 383 0
	lea	%a15, 127
.LVL205:
.L153:
	.loc 1 383 0 is_stmt 0 discriminator 3
	add	%d3, %d5, %d2
	mov.a	%a5, %d15
	addsc.a	%a3, %a4, %d3, 2
	add	%d3, %d4, %d2
	addsc.a	%a2, %a5, %d3, 2
	.loc 1 382 0 is_stmt 1 discriminator 3
	add	%d2, 1
.LVL206:
	.loc 1 383 0 discriminator 3
	ld.w	%d3, [%a2]0
	st.w	[%a3]0, %d3
	.loc 1 382 0 discriminator 3
	loop	%a15, .L153
	.loc 1 381 0 discriminator 2
	add	%d6, 1
.LVL207:
	jne	%d6, 3, .L152
	.loc 1 391 0
	mov	%d9, 516
	mul	%d2, %d8, %d9
.LVL208:
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 3092
	jeq	%d3, -1, .L187
.LVL209:
.L155:
	.loc 1 396 0
	mov	%d9, 516
	mul	%d2, %d8, %d9
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 5672
	jeq	%d3, -1, .L188
.L156:
	.loc 1 401 0
	movh.a	%a15, hi:cam_info+2580
	lea	%a15, [%a15] lo:cam_info+2580
	mov.aa	%a4, %a15
	call	GetMedianCenter
.LVL210:
	.loc 1 402 0
	lea	%a12, [%a15] 2580
	mov.aa	%a4, %a12
	.loc 1 401 0
	mov	%d10, %d2
.LVL211:
	.loc 1 402 0
	call	GetMedianCenter
.LVL212:
	.loc 1 404 0
	mov.aa	%a4, %a15
	.loc 1 402 0
	mov	%d9, %d2
.LVL213:
	.loc 1 404 0
	call	IsNoise
.LVL214:
	.loc 1 405 0
	mov.aa	%a4, %a12
	.loc 1 404 0
	mov	%d11, %d2
.LVL215:
	.loc 1 405 0
	call	IsNoise
.LVL216:
	.loc 1 407 0
	eq	%d7, %d11, 1
	eq	%d6, %d2, 1
	and	%d4, %d6, %d7
	mov	%d5, 0
	.loc 1 408 0
	mov	%d3, 70
	.loc 1 407 0
	jnz	%d4, .L174
	.loc 1 409 0
	eq	%d2, %d2, 0
.LVL217:
	and	%d7, %d2
	.loc 1 410 0
	addi	%d3, %d9, -35
	.loc 1 409 0
	jz	%d7, .L189
.LVL218:
.L159:
	addi	%d4, %d3, -70
	rsub	%d2, %d3, -70
	lt	%d5, %d3, 70
	sel	%d5, %d5, %d2, %d4
.LVL219:
.L174:
	.loc 1 429 0 discriminator 4
	mov	%d2, 516
	madd	%d4, %d15, %d8, %d2
	.loc 1 431 0 discriminator 4
	add	%d8, 1
	.loc 1 429 0 discriminator 4
	mov.a	%a15, %d4
	ld.w	%d15, [%a15] 512
	rsub	%d4, %d15, -70
	addi	%d2, %d15, -70
	ge	%d6, %d15, 70
	sel	%d2, %d6, %d2, %d4
	.loc 1 431 0 discriminator 4
	mov	%d4, 5
	div	%e8, %d8, %d4
	.loc 1 429 0 discriminator 4
	ge	%d2, %d2, %d5
.LVL220:
	.loc 1 434 0 discriminator 4
	sel	%d2, %d2, %d15, %d3
.LVL221:
	.loc 1 431 0 discriminator 4
	st.w	[%a13] lo:nowIndex, %d9
	.loc 1 434 0 discriminator 4
	ret
.LVL222:
.L148:
	.loc 1 358 0
	mov	%d15, 1
	movh.a	%a15, hi:g_cameraDirection
	st.w	[%a15] lo:g_cameraDirection, %d15
	j	.L147
.LVL223:
.L189:
	.loc 1 411 0
	eq	%d11, %d11, 0
.LVL224:
	and	%d6, %d11
	.loc 1 412 0
	addi	%d3, %d10, 35
	.loc 1 411 0
	jnz	%d6, .L159
	.loc 1 414 0
	mov	%d2, 516
	madd	%d7, %d15, %d8, %d2
	mov.a	%a15, %d7
	ld.w	%d4, [%a15] 3092
	sub	%d3, %d4, %d10
	ge	%d2, %d3, 30
	jltz	%d3, .L190
.L162:
	.loc 1 414 0 is_stmt 0 discriminator 4
	jz	%d2, .L163
	.loc 1 415 0 is_stmt 1
	mov	%d2, 516
	madd	%d3, %d15, %d8, %d2
	mov.a	%a15, %d3
	st.w	[%a15] 3092, %d10
.L163:
	.loc 1 416 0
	mov	%d2, 516
	madd	%d4, %d15, %d8, %d2
	mov.a	%a15, %d4
	ld.w	%d4, [%a15] 5672
	sub	%d3, %d4, %d9
	ge	%d2, %d3, 30
	jltz	%d3, .L191
.L165:
	.loc 1 416 0 is_stmt 0 discriminator 4
	jz	%d2, .L166
	.loc 1 417 0 is_stmt 1
	mov	%d2, 516
	madd	%d7, %d15, %d8, %d2
	mov.a	%a15, %d7
	st.w	[%a15] 5672, %d9
.L166:
	.loc 1 419 0
	sub	%d2, %d10, %d9
	jltz	%d2, .L192
	.loc 1 419 0 is_stmt 0 discriminator 5
	addi	%d2, %d2, -60
	ge.u	%d2, %d2, 21
	jnz	%d2, .L169
.L168:
	.loc 1 420 0 is_stmt 1
	add	%d9, %d10
.LVL225:
	.loc 1 421 0
	sh	%d3, %d9, -31
	add	%d9, %d3
.LVL226:
	sha	%d3, %d9, -1
.LVL227:
	j	.L159
.LVL228:
.L191:
	.loc 1 416 0 discriminator 1
	rsub	%d2, %d4, 0
	sub	%d2, %d9
	ge	%d2, %d2, 30
	j	.L165
.L190:
	.loc 1 414 0 discriminator 1
	rsub	%d2, %d4, 0
	sub	%d2, %d10
	ge	%d2, %d2, 30
	j	.L162
.LVL229:
.L188:
	.loc 1 397 0
	addi	%d4, %d8, 4
	mov	%d10, 5
	div	%e4, %d4, %d10
	mov.a	%a3, %d2
	madd	%d2, %d15, %d5, %d9
	lea	%a4, [%a3] 5160
	addsc.a	%a4, %a4, %d15, 0
	mov.a	%a5, %d2
	lea	%a5, [%a5] 5160
	call	CopyPrevLine
.LVL230:
	.loc 1 398 0
	ld.w	%d8, [%a13] lo:nowIndex
	addi	%d2, %d8, 4
	div	%e2, %d2, %d10
	madd	%d4, %d15, %d8, %d9
	madd	%d3, %d15, %d3, %d9
	mov.a	%a15, %d3
	ld.w	%d2, [%a15] 5672
	mov.a	%a15, %d4
	st.w	[%a15] 5672, %d2
	j	.L156
.LVL231:
.L187:
	.loc 1 392 0
	addi	%d4, %d8, 4
	mov	%d11, 5
	div	%e4, %d4, %d11
	mov.a	%a3, %d2
	madd	%d2, %d10, %d5, %d9
	lea	%a4, [%a3] 2580
	addsc.a	%a4, %a4, %d10, 0
	mov.a	%a5, %d2
	lea	%a5, [%a5] 2580
	call	CopyPrevLine
.LVL232:
	.loc 1 393 0
	ld.w	%d8, [%a13] lo:nowIndex
	addi	%d2, %d8, 4
	div	%e2, %d2, %d11
	madd	%d4, %d10, %d8, %d9
	madd	%d3, %d10, %d3, %d9
	mov.a	%a15, %d3
	ld.w	%d2, [%a15] 3092
	mov.a	%a15, %d4
	st.w	[%a15] 3092, %d2
	j	.L155
.LVL233:
.L192:
	.loc 1 419 0 discriminator 1
	rsub	%d2, %d9, -60
	sub	%d2, %d10
	lt.u	%d2, %d2, 21
	jnz	%d2, .L168
.L169:
	.loc 1 424 0
	rsub	%d2, %d10, 70
	rsub	%d3, %d10, -70
	lt	%d4, %d2, 0
	sel	%d2, %d4, %d3, %d2
	rsub	%d4, %d9, 70
	rsub	%d3, %d9, -70
	lt	%d5, %d4, 0
	sel	%d4, %d5, %d3, %d4
	.loc 1 425 0
	addi	%d10, %d10, 35
.LVL234:
	addi	%d9, %d9, -35
.LVL235:
	lt	%d3, %d4, %d2
	sel	%d3, %d3, %d9, %d10
	j	.L159
.LFE587:
	.size	GetCameraCenter, .-GetCameraCenter
.section .text.CheckLimitZone,"ax",@progbits
	.align 1
	.global	CheckLimitZone
	.type	CheckLimitZone, @function
CheckLimitZone:
.LFB590:
	.loc 1 542 0
.LVL236:
	movh.a	%a15, hi:nowIndex
	ld.w	%d7, [%a15] lo:nowIndex
	movh.a	%a3, hi:cam_info
	mul	%d7, %d7, 129
	lea	%a3, [%a3] lo:cam_info
	.loc 1 542 0
	mov	%d5, 1
	.loc 1 545 0
	mov	%d2, 0
	.loc 1 544 0
	mov	%d6, 0
	.loc 1 547 0
	mov.aa	%a4, %a3
	lea	%a15, 126
.LVL237:
.L197:
	add	%d15, %d7, %d5
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d3, [%a2] -4
	addsc.a	%a2, %a4, %d15, 2
	ld.w	%d15, [%a2]0
	jnz	%d3, .L209
	.loc 1 549 0 discriminator 1
	jz	%d15, .L196
.L195:
	.loc 1 553 0
	cadd	%d2, %d6, %d2, 1
.LVL238:
.L196:
	add	%d5, 1
	.loc 1 546 0 discriminator 2
	loop	%a15, .L197
	.loc 1 557 0
	jlt	%d2, 4, .L193
	.loc 1 558 0
	movh.a	%a15, hi:limitCount
	ld.w	%d15, [%a15] lo:limitCount
	jlt	%d15, 2, .L210
	.loc 1 562 0
	xor	%d4, %d4, 1
.LVL239:
	.loc 1 563 0
	mov	%d15, 0
	.loc 1 562 0
	movh.a	%a2, hi:isLimitZone
	st.w	[%a2] lo:isLimitZone, %d4
	.loc 1 563 0
	st.w	[%a15] lo:limitCount, %d15
.LVL240:
.L193:
	ret
.LVL241:
.L209:
	.loc 1 547 0 discriminator 1
	jz	%d15, .L195
	.loc 1 548 0
	add	%d6, 1
.LVL242:
	j	.L196
.LVL243:
.L210:
	.loc 1 559 0
	add	%d15, 1
	st.w	[%a15] lo:limitCount, %d15
	ret
.LFE590:
	.size	CheckLimitZone, .-CheckLimitZone
.section .text.IsLimitZone,"ax",@progbits
	.align 1
	.global	IsLimitZone
	.type	IsLimitZone, @function
IsLimitZone:
.LFB591:
	.loc 1 579 0
	.loc 1 581 0
	movh.a	%a15, hi:isLimitZone
	ld.w	%d2, [%a15] lo:isLimitZone
	ret
.LFE591:
	.size	IsLimitZone, .-IsLimitZone
.section .text.GetDashLine,"ax",@progbits
	.align 1
	.global	GetDashLine
	.type	GetDashLine, @function
GetDashLine:
.LFB592:
	.loc 1 583 0
	.loc 1 584 0
	movh.a	%a15, hi:leftIndexCount
	ld.w	%d2, [%a15] lo:leftIndexCount
	movh.a	%a15, hi:rightIndexCount
	ld.w	%d15, [%a15] lo:rightIndexCount
	ge	%d2, %d2, %d15
	.loc 1 585 0
	mov	%d15, -1
	sel	%d2, %d2, %d15, 1
	ret
.LFE592:
	.size	GetDashLine, .-GetDashLine
.section .text.GetCountPassedObject,"ax",@progbits
	.align 1
	.global	GetCountPassedObject
	.type	GetCountPassedObject, @function
GetCountPassedObject:
.LFB593:
	.loc 1 587 0
	.loc 1 589 0
	movh.a	%a15, hi:countPassedObject
	ld.w	%d2, [%a15] lo:countPassedObject
	ret
.LFE593:
	.size	GetCountPassedObject, .-GetCountPassedObject
.section .text.SetCountPassedObject,"ax",@progbits
	.align 1
	.global	SetCountPassedObject
	.type	SetCountPassedObject, @function
SetCountPassedObject:
.LFB594:
	.loc 1 590 0
.LVL244:
	.loc 1 591 0
	movh.a	%a15, hi:countPassedObject
	st.w	[%a15] lo:countPassedObject, %d4
	ret
.LFE594:
	.size	SetCountPassedObject, .-SetCountPassedObject
.section .text.GetDottedLine,"ax",@progbits
	.align 1
	.global	GetDottedLine
	.type	GetDottedLine, @function
GetDottedLine:
.LFB595:
	.loc 1 593 0
	.loc 1 595 0
	movh.a	%a15, hi:dottedLine
	ld.w	%d2, [%a15] lo:dottedLine
	ret
.LFE595:
	.size	GetDottedLine, .-GetDottedLine
.section .text.SetDottedLine,"ax",@progbits
	.align 1
	.global	SetDottedLine
	.type	SetDottedLine, @function
SetDottedLine:
.LFB596:
	.loc 1 596 0
.LVL245:
	.loc 1 597 0
	movh.a	%a15, hi:dottedLine
	st.w	[%a15] lo:dottedLine, %d4
	ret
.LFE596:
	.size	SetDottedLine, .-SetDottedLine
	.global	limitCount
.section .bss.limitCount,"aw",@nobits
	.align 2
	.type	limitCount, @object
	.size	limitCount, 4
limitCount:
	.zero	4
	.global	indexWhite
.section .bss.indexWhite,"aw",@nobits
	.align 2
	.type	indexWhite, @object
	.size	indexWhite, 4
indexWhite:
	.zero	4
	.global	countWhite
.section .bss.countWhite,"aw",@nobits
	.align 2
	.type	countWhite, @object
	.size	countWhite, 8
countWhite:
	.zero	8
	.global	cent
.section .bss.cent,"aw",@nobits
	.align 2
	.type	cent, @object
	.size	cent, 16
cent:
	.zero	16
	.global	g_cameraDirection
.section .bss.g_cameraDirection,"aw",@nobits
	.align 2
	.type	g_cameraDirection, @object
	.size	g_cameraDirection, 4
g_cameraDirection:
	.zero	4
	.global	zeroCnt
.section .bss.zeroCnt,"aw",@nobits
	.align 2
	.type	zeroCnt, @object
	.size	zeroCnt, 4
zeroCnt:
	.zero	4
	.global	rightIndexCount
.section .bss.rightIndexCount,"aw",@nobits
	.align 2
	.type	rightIndexCount, @object
	.size	rightIndexCount, 4
rightIndexCount:
	.zero	4
	.global	leftIndexCount
.section .bss.leftIndexCount,"aw",@nobits
	.align 2
	.type	leftIndexCount, @object
	.size	leftIndexCount, 4
leftIndexCount:
	.zero	4
	.global	dashLine
.section .bss.dashLine,"aw",@nobits
	.align 2
	.type	dashLine, @object
	.size	dashLine, 4
dashLine:
	.zero	4
	.global	isLimitZone
.section .bss.isLimitZone,"aw",@nobits
	.align 2
	.type	isLimitZone, @object
	.size	isLimitZone, 4
isLimitZone:
	.zero	4
	.global	cntLeft
.section .bss.cntLeft,"aw",@nobits
	.align 2
	.type	cntLeft, @object
	.size	cntLeft, 4
cntLeft:
	.zero	4
	.global	cntTotal
.section .bss.cntTotal,"aw",@nobits
	.align 2
	.type	cntTotal, @object
	.size	cntTotal, 4
cntTotal:
	.zero	4
	.global	nowIndex
.section .bss.nowIndex,"aw",@nobits
	.align 2
	.type	nowIndex, @object
	.size	nowIndex, 4
nowIndex:
	.zero	4
	.global	speedLimitLine
.section .bss.speedLimitLine,"aw",@nobits
	.align 2
	.type	speedLimitLine, @object
	.size	speedLimitLine, 1536
speedLimitLine:
	.zero	1536
	.global	debugLine
.section .bss.debugLine,"aw",@nobits
	.align 2
	.type	debugLine, @object
	.size	debugLine, 512
debugLine:
	.zero	512
	.global	cam_info
.section .bss.cam_info,"aw",@nobits
	.align 2
	.type	cam_info, @object
	.size	cam_info, 7740
cam_info:
	.zero	7740
	.global	dottedLine
.section .bss.dottedLine,"aw",@nobits
	.align 2
	.type	dottedLine, @object
	.size	dottedLine, 4
dottedLine:
	.zero	4
	.global	countPassedObject
.section .bss.countPassedObject,"aw",@nobits
	.align 2
	.type	countPassedObject, @object
	.size	countPassedObject, 4
countPassedObject:
	.zero	4
	.global	Zero_center_line
.section .bss.Zero_center_line,"aw",@nobits
	.align 2
	.type	Zero_center_line, @object
	.size	Zero_center_line, 512
Zero_center_line:
	.zero	512
	.global	FILTERED_CENTER_LINE
.section .bss.FILTERED_CENTER_LINE,"aw",@nobits
	.align 2
	.type	FILTERED_CENTER_LINE, @object
	.size	FILTERED_CENTER_LINE, 512
FILTERED_CENTER_LINE:
	.zero	512
	.global	IR_LineScan
.section .bss.IR_LineScan,"aw",@nobits
	.align 2
	.type	IR_LineScan, @object
	.size	IR_LineScan, 1536
IR_LineScan:
	.zero	1536
	.global	g_VadcAutoScan
.section .bss.g_VadcAutoScan,"aw",@nobits
	.align 2
	.type	g_VadcAutoScan, @object
	.size	g_VadcAutoScan, 40
g_VadcAutoScan:
	.zero	40
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
	.uaword	.LFB578
	.uaword	.LFE578-.LFB578
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB579
	.uaword	.LFE579-.LFB579
	.byte	0x4
	.uaword	.LCFI0-.LFB579
	.byte	0xe
	.uleb128 0x208
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB580
	.uaword	.LFE580-.LFB580
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB581
	.uaword	.LFE581-.LFB581
	.byte	0x4
	.uaword	.LCFI1-.LFB581
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB582
	.uaword	.LFE582-.LFB582
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB583
	.uaword	.LFE583-.LFB583
	.byte	0x4
	.uaword	.LCFI2-.LFB583
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB584
	.uaword	.LFE584-.LFB584
	.byte	0x4
	.uaword	.LCFI3-.LFB584
	.byte	0xe
	.uleb128 0x200
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB585
	.uaword	.LFE585-.LFB585
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB586
	.uaword	.LFE586-.LFB586
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.byte	0x4
	.uaword	.LCFI4-.LFB577
	.byte	0xe
	.uleb128 0xa8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB588
	.uaword	.LFE588-.LFB588
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB589
	.uaword	.LFE589-.LFB589
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB587
	.uaword	.LFE587-.LFB587
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB590
	.uaword	.LFE590-.LFB590
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB591
	.uaword	.LFE591-.LFB591
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB592
	.uaword	.LFE592-.LFB592
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB593
	.uaword	.LFE593-.LFB593
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB594
	.uaword	.LFE594-.LFB594
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB595
	.uaword	.LFE595-.LFB595
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB596
	.uaword	.LFE596-.LFB596
	.align 2
.LEFDE38:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxSrc_cfg.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxVadc_cfg.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxVadc_regdef.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 13 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxPort_PinMap.h"
	.file 15 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa980
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.c"
	.string	"C:\\\\Users\\\\kdh95\\\\Desktop\\\\SmartCarTest\\\\AurixRacer-master\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x210
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
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
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x26c
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x1da
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1f8
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x250
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x1b6
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x2c6
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x1da
	.uleb128 0x5
	.string	"sint64"
	.byte	0x6
	.byte	0x24
	.uaword	0x225
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2fc
	.uleb128 0x7
	.uleb128 0x5
	.string	"Ifx_TickTime"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2e8
	.uleb128 0x5
	.string	"Ifx_Priority"
	.byte	0x6
	.byte	0x56
	.uaword	0x28d
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x7e
	.uaword	0x348
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0x80
	.uaword	0x2f6
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x6
	.byte	0x81
	.uaword	0x29b
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x82
	.uaword	0x325
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x372
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x382
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x392
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x3a2
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x3b2
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x3c2
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0x76
	.uaword	0x412
	.uleb128 0xc
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x422
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x432
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x5f
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x442
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x654
	.uleb128 0xe
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x442
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x698
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x54
	.uaword	0x215
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x66d
	.uleb128 0xd
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x7cf
	.uleb128 0xe
	.string	"EN0"
	.byte	0x7
	.byte	0x5a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x7
	.byte	0x5b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x7
	.byte	0x5c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x7
	.byte	0x5d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x7
	.byte	0x5e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x7
	.byte	0x5f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x7
	.byte	0x60
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x7
	.byte	0x61
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x7
	.byte	0x62
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x7
	.byte	0x63
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x7
	.byte	0x64
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x7
	.byte	0x65
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x7
	.byte	0x66
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x7
	.byte	0x67
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x7
	.byte	0x68
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x7
	.byte	0x69
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x6a
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ESR_Bits"
	.byte	0x7
	.byte	0x6b
	.uaword	0x6b1
	.uleb128 0xd
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x6e
	.uaword	0x831
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x7
	.byte	0x70
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x7
	.byte	0x71
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.byte	0x72
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ID_Bits"
	.byte	0x7
	.byte	0x73
	.uaword	0x7e5
	.uleb128 0xd
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x76
	.uaword	0x953
	.uleb128 0xe
	.string	"P0"
	.byte	0x7
	.byte	0x78
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x7
	.byte	0x79
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0x7
	.byte	0x7a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0x7
	.byte	0x7b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0x7
	.byte	0x7c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0x7
	.byte	0x7d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0x7
	.byte	0x7e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0x7
	.byte	0x7f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0x7
	.byte	0x80
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0x7
	.byte	0x81
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0x7
	.byte	0x82
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0x7
	.byte	0x83
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0x7
	.byte	0x84
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0x7
	.byte	0x85
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0x7
	.byte	0x86
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0x7
	.byte	0x87
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x88
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0x7
	.byte	0x89
	.uaword	0x846
	.uleb128 0xd
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8c
	.uaword	0x9fb
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x8e
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x7
	.byte	0x8f
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0x90
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x7
	.byte	0x91
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x92
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC2"
	.byte	0x7
	.byte	0x93
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0x94
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC3"
	.byte	0x7
	.byte	0x95
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x7
	.byte	0x96
	.uaword	0x968
	.uleb128 0xd
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.uaword	0xaab
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x9b
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC12"
	.byte	0x7
	.byte	0x9c
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0x9d
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC13"
	.byte	0x7
	.byte	0x9e
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x9f
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC14"
	.byte	0x7
	.byte	0xa0
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa1
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC15"
	.byte	0x7
	.byte	0xa2
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x7
	.byte	0xa3
	.uaword	0xa13
	.uleb128 0xd
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.uaword	0xb57
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xa8
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC4"
	.byte	0x7
	.byte	0xa9
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0xaa
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC5"
	.byte	0x7
	.byte	0xab
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xac
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC6"
	.byte	0x7
	.byte	0xad
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0xae
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC7"
	.byte	0x7
	.byte	0xaf
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x7
	.byte	0xb0
	.uaword	0xac4
	.uleb128 0xd
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb3
	.uaword	0xc04
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xb5
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC8"
	.byte	0x7
	.byte	0xb6
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0xb7
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC9"
	.byte	0x7
	.byte	0xb8
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xb9
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC10"
	.byte	0x7
	.byte	0xba
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0xbb
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC11"
	.byte	0x7
	.byte	0xbc
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x7
	.byte	0xbd
	.uaword	0xb6f
	.uleb128 0xd
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc0
	.uaword	0xc64
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xc2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x7
	.byte	0xc3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc4
	.uaword	0x215
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x7
	.byte	0xc5
	.uaword	0xc1c
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc8
	.uaword	0xcc4
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xca
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x7
	.byte	0xcb
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.byte	0xcc
	.uaword	0x215
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x7
	.byte	0xcd
	.uaword	0xc7c
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd0
	.uaword	0xd54
	.uleb128 0xe
	.string	"RDIS_CTRL"
	.byte	0x7
	.byte	0xd2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RX_DIS"
	.byte	0x7
	.byte	0xd3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"TERM"
	.byte	0x7
	.byte	0xd4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"LRXTERM"
	.byte	0x7
	.byte	0xd5
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0xd6
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x7
	.byte	0xd7
	.uaword	0xcdc
	.uleb128 0xd
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xda
	.uaword	0xe27
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xdc
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"LVDSR"
	.byte	0x7
	.byte	0xdd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LVDSRL"
	.byte	0x7
	.byte	0xde
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x7
	.byte	0xdf
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"TDIS_CTRL"
	.byte	0x7
	.byte	0xe0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"TX_DIS"
	.byte	0x7
	.byte	0xe1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"TX_PD"
	.byte	0x7
	.byte	0xe2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"TX_PWDPD"
	.byte	0x7
	.byte	0xe3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xe4
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x7
	.byte	0xe5
	.uaword	0xd70
	.uleb128 0xd
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe8
	.uaword	0xeb8
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xea
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x7
	.byte	0xeb
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x7
	.byte	0xec
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x7
	.byte	0xed
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x7
	.byte	0xee
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.byte	0xef
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x7
	.byte	0xf0
	.uaword	0xe3f
	.uleb128 0xd
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf3
	.uaword	0xf3f
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xf5
	.uaword	0x215
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x7
	.byte	0xf6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x7
	.byte	0xf7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x7
	.byte	0xf8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x7
	.byte	0xf9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x7
	.byte	0xfa
	.uaword	0xed0
	.uleb128 0xd
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfd
	.uaword	0xfd6
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xff
	.uaword	0x215
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x104
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x7
	.uahalf	0x105
	.uaword	0xf58
	.uleb128 0x13
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x108
	.uaword	0x1071
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x7
	.uahalf	0x110
	.uaword	0xfef
	.uleb128 0x13
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x113
	.uaword	0x11cb
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x115
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x117
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x108a
	.uleb128 0x13
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1419
	.uleb128 0x10
	.string	"PS0"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR_Bits"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x11e3
	.uleb128 0x13
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x149c
	.uleb128 0x10
	.string	"PS0"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x154
	.uaword	0x215
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x1430
	.uleb128 0x13
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1536
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x7
	.uahalf	0x160
	.uaword	0x14b5
	.uleb128 0x13
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x163
	.uaword	0x15cc
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x165
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x1550
	.uleb128 0x13
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x1663
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x170
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x175
	.uaword	0x215
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x15e5
	.uleb128 0x13
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x179
	.uaword	0x17ad
	.uleb128 0x10
	.string	"PS0"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x7
	.uahalf	0x188
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x167c
	.uleb128 0x13
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x18e5
	.uleb128 0x10
	.string	"P0"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x7
	.uahalf	0x195
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x7
	.uahalf	0x197
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT_Bits"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x17c5
	.uleb128 0x13
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x19e2
	.uleb128 0x10
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SEL2"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"SEL3"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEL4"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"SEL5"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"SEL6"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SEL10"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"SEL11"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x215
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x18fc
	.uleb128 0x13
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x1b4c
	.uleb128 0x10
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PDIS2"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PDIS3"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PDIS4"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PDIS5"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PDIS6"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PDIS7"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PDIS8"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PDIS9"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PDIS10"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PDIS11"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PDIS12"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PDIS13"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PDIS14"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PDIS15"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x19fa
	.uleb128 0x13
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x1c80
	.uleb128 0x10
	.string	"PD0"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL0"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD1"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL1"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD2"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL2"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD3"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL3"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD4"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL4"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD5"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL5"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD6"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL6"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD7"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL7"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x1b65
	.uleb128 0x13
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x1dbf
	.uleb128 0x10
	.string	"PD8"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL8"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD9"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL9"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD10"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL10"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD11"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL11"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD12"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL12"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD13"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL13"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD14"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL14"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD15"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL15"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1c98
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x1dff
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x654
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN0"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x1dd7
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x203
	.uaword	0x1e3c
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x698
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN1"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x1e14
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x1e79
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x7cf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ESR"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x1e51
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x213
	.uaword	0x1eb3
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x215
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x831
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ID"
	.byte	0x7
	.uahalf	0x218
	.uaword	0x1e8b
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1eec
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x953
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IN"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x1ec4
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x223
	.uaword	0x1f25
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x9fb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR0"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x1efd
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x1f61
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0xaab
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR12"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x1f39
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x233
	.uaword	0x1f9e
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x237
	.uaword	0xb57
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR4"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x1f76
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1fda
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0xc04
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR8"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x1fb2
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x243
	.uaword	0x2016
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x247
	.uaword	0xc64
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR0"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x1fee
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x2060
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0xcc4
	.uleb128 0x15
	.string	"B_P21"
	.byte	0x7
	.uahalf	0x250
	.uaword	0xd54
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR1"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x202a
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x254
	.uaword	0x209c
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x258
	.uaword	0xe27
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR2"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x2074
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x20d8
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x11cb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x20b0
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2113
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x268
	.uaword	0xeb8
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR0"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x20eb
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x214f
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x270
	.uaword	0xf3f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR12"
	.byte	0x7
	.uahalf	0x271
	.uaword	0x2127
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x274
	.uaword	0x218c
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x278
	.uaword	0xfd6
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x2164
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x21c8
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x1071
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x21a0
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x284
	.uaword	0x2204
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x1419
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x21dc
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x223e
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x17ad
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x2216
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x294
	.uaword	0x2279
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x149c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0"
	.byte	0x7
	.uahalf	0x299
	.uaword	0x2251
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x22b5
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x1536
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x228d
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x22f2
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x15cc
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x22ca
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x232e
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x1663
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x2306
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x236a
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x18e5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x2342
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x23a4
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x19e2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x237c
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x23df
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x1b4c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC"
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0x23b7
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x241b
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1c80
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0"
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x23f3
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x2456
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x1dbf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x242e
	.uleb128 0x16
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x26a3
	.uleb128 0x17
	.string	"OUT"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x236a
	.byte	0
	.uleb128 0x17
	.string	"OMR"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x2204
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x1eb3
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x25c
	.byte	0xc
	.uleb128 0x17
	.string	"IOCR0"
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x1f25
	.byte	0x10
	.uleb128 0x17
	.string	"IOCR4"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x1f9e
	.byte	0x14
	.uleb128 0x17
	.string	"IOCR8"
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x1fda
	.byte	0x18
	.uleb128 0x17
	.string	"IOCR12"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x1f61
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x25c
	.byte	0x20
	.uleb128 0x17
	.string	"IN"
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x1eec
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x372
	.byte	0x28
	.uleb128 0x17
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0x241b
	.byte	0x40
	.uleb128 0x17
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2456
	.byte	0x44
	.uleb128 0x17
	.string	"reserved_48"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x362
	.byte	0x48
	.uleb128 0x17
	.string	"ESR"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1e79
	.byte	0x50
	.uleb128 0x17
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x392
	.byte	0x54
	.uleb128 0x17
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x23df
	.byte	0x60
	.uleb128 0x17
	.string	"PCSR"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x23a4
	.byte	0x64
	.uleb128 0x17
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x362
	.byte	0x68
	.uleb128 0x17
	.string	"OMSR0"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2279
	.byte	0x70
	.uleb128 0x17
	.string	"OMSR4"
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x22f2
	.byte	0x74
	.uleb128 0x17
	.string	"OMSR8"
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x232e
	.byte	0x78
	.uleb128 0x17
	.string	"OMSR12"
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x22b5
	.byte	0x7c
	.uleb128 0x17
	.string	"OMCR0"
	.byte	0x7
	.uahalf	0x2fd
	.uaword	0x2113
	.byte	0x80
	.uleb128 0x17
	.string	"OMCR4"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x218c
	.byte	0x84
	.uleb128 0x17
	.string	"OMCR8"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x21c8
	.byte	0x88
	.uleb128 0x17
	.string	"OMCR12"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x214f
	.byte	0x8c
	.uleb128 0x17
	.string	"OMSR"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x223e
	.byte	0x90
	.uleb128 0x17
	.string	"OMCR"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x20d8
	.byte	0x94
	.uleb128 0x17
	.string	"reserved_98"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x362
	.byte	0x98
	.uleb128 0x17
	.string	"LPCR0"
	.byte	0x7
	.uahalf	0x304
	.uaword	0x2016
	.byte	0xa0
	.uleb128 0x17
	.string	"LPCR1"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x2060
	.byte	0xa4
	.uleb128 0x17
	.string	"LPCR2"
	.byte	0x7
	.uahalf	0x306
	.uaword	0x209c
	.byte	0xa8
	.uleb128 0x17
	.string	"reserved_A4"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x26a3
	.byte	0xac
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x1e3c
	.byte	0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x309
	.uaword	0x1dff
	.byte	0xfc
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x26b3
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P"
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x26c1
	.uleb128 0x19
	.uaword	0x2469
	.uleb128 0x6
	.byte	0x4
	.uaword	0x26b3
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.byte	0x4c
	.uaword	0x296c
	.uleb128 0xc
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0xc
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0xc
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Mode"
	.byte	0x2
	.byte	0x60
	.uaword	0x26cc
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.byte	0x7d
	.uaword	0x2b21
	.uleb128 0xc
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0xc
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0xc
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0xc
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_PadDriver"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2980
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.byte	0x99
	.uaword	0x2ba3
	.uleb128 0xc
	.string	"IfxPort_State_notChanged"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxPort_State_high"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxPort_State_low"
	.sleb128 65536
	.uleb128 0xc
	.string	"IfxPort_State_toggled"
	.sleb128 65537
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_State"
	.byte	0x2
	.byte	0x9e
	.uaword	0x2b3a
	.uleb128 0x8
	.byte	0x8
	.byte	0x2
	.byte	0xaa
	.uaword	0x2bda
	.uleb128 0xa
	.string	"port"
	.byte	0x2
	.byte	0xac
	.uaword	0x26c6
	.byte	0
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x2
	.byte	0xad
	.uaword	0x280
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Pin"
	.byte	0x2
	.byte	0xae
	.uaword	0x2bb8
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.uaword	0x2c3d
	.uleb128 0xc
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxSrc_Tos"
	.byte	0x9
	.byte	0x37
	.uaword	0x2bed
	.uleb128 0xb
	.byte	0x1
	.byte	0xa
	.byte	0x64
	.uaword	0x2d2c
	.uleb128 0xc
	.string	"IfxVadc_GroupId_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_GroupId_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_GroupId_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_GroupId_3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_GroupId_4"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_GroupId_5"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_GroupId_6"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_GroupId_7"
	.sleb128 7
	.uleb128 0xc
	.string	"IfxVadc_GroupId_global0"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxVadc_GroupId_global1"
	.sleb128 9
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_GroupId"
	.byte	0xa
	.byte	0x6f
	.uaword	0x2c4f
	.uleb128 0xd
	.string	"_Ifx_VADC_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x31
	.uaword	0x2f58
	.uleb128 0xe
	.string	"EN0"
	.byte	0xb
	.byte	0x33
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0xb
	.byte	0x34
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0xb
	.byte	0x35
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0xb
	.byte	0x36
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0xb
	.byte	0x37
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0xb
	.byte	0x38
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0xb
	.byte	0x39
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0xb
	.byte	0x3a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0xb
	.byte	0x3b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0xb
	.byte	0x3c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0xb
	.byte	0x3d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0xb
	.byte	0x3e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0xb
	.byte	0x3f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0xb
	.byte	0x40
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0xb
	.byte	0x41
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0xb
	.byte	0x42
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0xb
	.byte	0x43
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0xb
	.byte	0x44
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0xb
	.byte	0x45
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0xb
	.byte	0x46
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0xb
	.byte	0x47
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0xb
	.byte	0x48
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0xb
	.byte	0x49
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0xb
	.byte	0x4a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0xb
	.byte	0x4b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0xb
	.byte	0x4c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0xb
	.byte	0x4d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0xb
	.byte	0x4e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0xb
	.byte	0x4f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0xb
	.byte	0x50
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0xb
	.byte	0x51
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0xb
	.byte	0x52
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCEN0_Bits"
	.byte	0xb
	.byte	0x53
	.uaword	0x2d43
	.uleb128 0xd
	.string	"_Ifx_VADC_ACCPROT0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.uaword	0x30d3
	.uleb128 0xe
	.string	"APC0"
	.byte	0xb
	.byte	0x58
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"APC1"
	.byte	0xb
	.byte	0x59
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"APC2"
	.byte	0xb
	.byte	0x5a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"APC3"
	.byte	0xb
	.byte	0x5b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"APC4"
	.byte	0xb
	.byte	0x5c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"APC5"
	.byte	0xb
	.byte	0x5d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"APC6"
	.byte	0xb
	.byte	0x5e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"APC7"
	.byte	0xb
	.byte	0x5f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0x60
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"APEM"
	.byte	0xb
	.byte	0x61
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"API0"
	.byte	0xb
	.byte	0x62
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"API1"
	.byte	0xb
	.byte	0x63
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"API2"
	.byte	0xb
	.byte	0x64
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"API3"
	.byte	0xb
	.byte	0x65
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"API4"
	.byte	0xb
	.byte	0x66
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"API5"
	.byte	0xb
	.byte	0x67
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"API6"
	.byte	0xb
	.byte	0x68
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"API7"
	.byte	0xb
	.byte	0x69
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0xb
	.byte	0x6a
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"APGC"
	.byte	0xb
	.byte	0x6b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT0_Bits"
	.byte	0xb
	.byte	0x6c
	.uaword	0x2f74
	.uleb128 0xd
	.string	"_Ifx_VADC_ACCPROT1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.uaword	0x3240
	.uleb128 0xe
	.string	"APS0"
	.byte	0xb
	.byte	0x71
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"APS1"
	.byte	0xb
	.byte	0x72
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"APS2"
	.byte	0xb
	.byte	0x73
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"APS3"
	.byte	0xb
	.byte	0x74
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"APS4"
	.byte	0xb
	.byte	0x75
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"APS5"
	.byte	0xb
	.byte	0x76
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"APS6"
	.byte	0xb
	.byte	0x77
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"APS7"
	.byte	0xb
	.byte	0x78
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0x79
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"APTF"
	.byte	0xb
	.byte	0x7a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"APR0"
	.byte	0xb
	.byte	0x7b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"APR1"
	.byte	0xb
	.byte	0x7c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"APR2"
	.byte	0xb
	.byte	0x7d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"APR3"
	.byte	0xb
	.byte	0x7e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"APR4"
	.byte	0xb
	.byte	0x7f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"APR5"
	.byte	0xb
	.byte	0x80
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"APR6"
	.byte	0xb
	.byte	0x81
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"APR7"
	.byte	0xb
	.byte	0x82
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0xb
	.byte	0x83
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT1_Bits"
	.byte	0xb
	.byte	0x84
	.uaword	0x30f1
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x87
	.uaword	0x332d
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0xb
	.byte	0x89
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xb
	.byte	0x8a
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"XTSEL"
	.byte	0xb
	.byte	0x8b
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"XTLVL"
	.byte	0xb
	.byte	0x8c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0xb
	.byte	0x8d
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"XTWC"
	.byte	0xb
	.byte	0x8e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GTSEL"
	.byte	0xb
	.byte	0x8f
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"GTLVL"
	.byte	0xb
	.byte	0x90
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF17
	.byte	0xb
	.byte	0x91
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"GTWC"
	.byte	0xb
	.byte	0x92
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0xb
	.byte	0x93
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSCTRL_Bits"
	.byte	0xb
	.byte	0x94
	.uaword	0x325e
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSMR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x97
	.uaword	0x3426
	.uleb128 0xe
	.string	"ENGT"
	.byte	0xb
	.byte	0x99
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ENTR"
	.byte	0xb
	.byte	0x9a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ENSI"
	.byte	0xb
	.byte	0x9b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SCAN"
	.byte	0xb
	.byte	0x9c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"LDM"
	.byte	0xb
	.byte	0x9d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0xb
	.byte	0x9e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"REQGT"
	.byte	0xb
	.byte	0x9f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CLRPND"
	.byte	0xb
	.byte	0xa0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LDEV"
	.byte	0xb
	.byte	0xa1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0xb
	.byte	0xa2
	.uaword	0x215
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF19
	.byte	0xb
	.byte	0xa3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.uaword	.LASF20
	.byte	0xb
	.byte	0xa4
	.uaword	0x215
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSMR_Bits"
	.byte	0xb
	.byte	0xa5
	.uaword	0x334a
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSPND_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa8
	.uaword	0x3473
	.uleb128 0xe
	.string	"CHPNDGy"
	.byte	0xb
	.byte	0xaa
	.uaword	0x215
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSPND_Bits"
	.byte	0xb
	.byte	0xab
	.uaword	0x3441
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xae
	.uaword	0x34c1
	.uleb128 0xe
	.string	"CHSELGy"
	.byte	0xb
	.byte	0xb0
	.uaword	0x215
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSSEL_Bits"
	.byte	0xb
	.byte	0xb1
	.uaword	0x348f
	.uleb128 0xd
	.string	"_Ifx_VADC_CLC_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb4
	.uaword	0x3547
	.uleb128 0xe
	.string	"DISR"
	.byte	0xb
	.byte	0xb6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"DISS"
	.byte	0xb
	.byte	0xb7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0xb
	.byte	0xb8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EDIS"
	.byte	0xb
	.byte	0xb9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xb
	.byte	0xba
	.uaword	0x215
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_CLC_Bits"
	.byte	0xb
	.byte	0xbb
	.uaword	0x34dd
	.uleb128 0xd
	.string	"_Ifx_VADC_EMUXSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xbe
	.uaword	0x35b7
	.uleb128 0xe
	.string	"EMUXGRP0"
	.byte	0xb
	.byte	0xc0
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EMUXGRP1"
	.byte	0xb
	.byte	0xc1
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0xc2
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_EMUXSEL_Bits"
	.byte	0xb
	.byte	0xc3
	.uaword	0x3560
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ALIAS_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc6
	.uaword	0x3636
	.uleb128 0xe
	.string	"ALIAS0"
	.byte	0xb
	.byte	0xc8
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.uaword	.LASF21
	.byte	0xb
	.byte	0xc9
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ALIAS1"
	.byte	0xb
	.byte	0xca
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF22
	.byte	0xb
	.byte	0xcb
	.uaword	0x215
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ALIAS_Bits"
	.byte	0xb
	.byte	0xcc
	.uaword	0x35d4
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ARBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xcf
	.uaword	0x376f
	.uleb128 0xe
	.string	"ANONC"
	.byte	0xb
	.byte	0xd1
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0xb
	.byte	0xd2
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"ARBRND"
	.byte	0xb
	.byte	0xd3
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0xb
	.byte	0xd4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ARBM"
	.byte	0xb
	.byte	0xd5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0xd6
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ANONS"
	.byte	0xb
	.byte	0xd7
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"CSRC"
	.byte	0xb
	.byte	0xd8
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CHNR"
	.byte	0xb
	.byte	0xd9
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"SYNRUN"
	.byte	0xb
	.byte	0xda
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"reserved_26"
	.byte	0xb
	.byte	0xdb
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CAL"
	.byte	0xb
	.byte	0xdc
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"CALS"
	.byte	0xb
	.byte	0xdd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"BUSY"
	.byte	0xb
	.byte	0xde
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SAMPLE"
	.byte	0xb
	.byte	0xdf
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBCFG_Bits"
	.byte	0xb
	.byte	0xe0
	.uaword	0x3653
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ARBPR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xe3
	.uaword	0x388e
	.uleb128 0xe
	.string	"PRIO0"
	.byte	0xb
	.byte	0xe5
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0xb
	.byte	0xe6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"CSM0"
	.byte	0xb
	.byte	0xe7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PRIO1"
	.byte	0xb
	.byte	0xe8
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0xb
	.byte	0xe9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"CSM1"
	.byte	0xb
	.byte	0xea
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PRIO2"
	.byte	0xb
	.byte	0xeb
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0xb
	.byte	0xec
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"CSM2"
	.byte	0xb
	.byte	0xed
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0xb
	.byte	0xee
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"ASEN0"
	.byte	0xb
	.byte	0xef
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"ASEN1"
	.byte	0xb
	.byte	0xf0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"ASEN2"
	.byte	0xb
	.byte	0xf1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0xb
	.byte	0xf2
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBPR_Bits"
	.byte	0xb
	.byte	0xf3
	.uaword	0x378d
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ASCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xf6
	.uaword	0x39b0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0xb
	.byte	0xf8
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xb
	.byte	0xf9
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"XTSEL"
	.byte	0xb
	.byte	0xfa
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"XTLVL"
	.byte	0xb
	.byte	0xfb
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0xb
	.byte	0xfc
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"XTWC"
	.byte	0xb
	.byte	0xfd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GTSEL"
	.byte	0xb
	.byte	0xfe
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"GTLVL"
	.byte	0xb
	.byte	0xff
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x100
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x102
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x103
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x104
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x105
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASCTRL_Bits"
	.byte	0xb
	.uahalf	0x106
	.uaword	0x38ab
	.uleb128 0x13
	.string	"_Ifx_VADC_G_ASMR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x109
	.uaword	0x3ab9
	.uleb128 0x10
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x10c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x10d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SCAN"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"LDM"
	.byte	0xb
	.uahalf	0x10f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x110
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x111
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CLRPND"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"LDEV"
	.byte	0xb
	.uahalf	0x113
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x114
	.uaword	0x215
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x115
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x116
	.uaword	0x215
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASMR_Bits"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x39cf
	.uleb128 0x13
	.string	"_Ifx_VADC_G_ASPND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x3b09
	.uleb128 0x10
	.string	"CHPND"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x215
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASPND_Bits"
	.byte	0xb
	.uahalf	0x11d
	.uaword	0x3ad6
	.uleb128 0x13
	.string	"_Ifx_VADC_G_ASSEL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x120
	.uaword	0x3b5a
	.uleb128 0x10
	.string	"CHSEL"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x215
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASSEL_Bits"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x3b27
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x126
	.uaword	0x3c93
	.uleb128 0x10
	.string	"BFL0"
	.byte	0xb
	.uahalf	0x128
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"BFL1"
	.byte	0xb
	.uahalf	0x129
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"BFL2"
	.byte	0xb
	.uahalf	0x12a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"BFL3"
	.byte	0xb
	.uahalf	0x12b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x12c
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"BFA0"
	.byte	0xb
	.uahalf	0x12d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"BFA1"
	.byte	0xb
	.uahalf	0x12e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"BFA2"
	.byte	0xb
	.uahalf	0x12f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"BFA3"
	.byte	0xb
	.uahalf	0x130
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x131
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"BFI0"
	.byte	0xb
	.uahalf	0x132
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"BFI1"
	.byte	0xb
	.uahalf	0x133
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"BFI2"
	.byte	0xb
	.uahalf	0x134
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"BFI3"
	.byte	0xb
	.uahalf	0x135
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x136
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFL_Bits"
	.byte	0xb
	.uahalf	0x137
	.uaword	0x3b78
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFLC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x13a
	.uaword	0x3d23
	.uleb128 0x10
	.string	"BFM0"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"BFM1"
	.byte	0xb
	.uahalf	0x13d
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"BFM2"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"BFM3"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x140
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLC_Bits"
	.byte	0xb
	.uahalf	0x141
	.uaword	0x3caf
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFLNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x144
	.uaword	0x3dbd
	.uleb128 0x10
	.string	"BFL0NP"
	.byte	0xb
	.uahalf	0x146
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"BFL1NP"
	.byte	0xb
	.uahalf	0x147
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"BFL2NP"
	.byte	0xb
	.uahalf	0x148
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"BFL3NP"
	.byte	0xb
	.uahalf	0x149
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x14a
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLNP_Bits"
	.byte	0xb
	.uahalf	0x14b
	.uaword	0x3d40
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFLS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x14e
	.uaword	0x3ea3
	.uleb128 0x10
	.string	"BFC0"
	.byte	0xb
	.uahalf	0x150
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"BFC1"
	.byte	0xb
	.uahalf	0x151
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"BFC2"
	.byte	0xb
	.uahalf	0x152
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"BFC3"
	.byte	0xb
	.uahalf	0x153
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x154
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"BFS0"
	.byte	0xb
	.uahalf	0x155
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"BFS1"
	.byte	0xb
	.uahalf	0x156
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"BFS2"
	.byte	0xb
	.uahalf	0x157
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"BFS3"
	.byte	0xb
	.uahalf	0x158
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x159
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLS_Bits"
	.byte	0xb
	.uahalf	0x15a
	.uaword	0x3ddb
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x15d
	.uaword	0x3f21
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x15f
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x160
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x161
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x162
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BOUND_Bits"
	.byte	0xb
	.uahalf	0x163
	.uaword	0x3ec0
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x166
	.uaword	0x3ff9
	.uleb128 0x10
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x168
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x169
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x16a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x16b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x16c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x16d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x16e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x16f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x170
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFCLR_Bits"
	.byte	0xb
	.uahalf	0x171
	.uaword	0x3f3f
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x174
	.uaword	0x40d2
	.uleb128 0x10
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x176
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x177
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x178
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x179
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x17a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x17b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x17e
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFLAG_Bits"
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x4018
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CEVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x182
	.uaword	0x41ab
	.uleb128 0x10
	.string	"CEV0NP"
	.byte	0xb
	.uahalf	0x184
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CEV1NP"
	.byte	0xb
	.uahalf	0x185
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CEV2NP"
	.byte	0xb
	.uahalf	0x186
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"CEV3NP"
	.byte	0xb
	.uahalf	0x187
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"CEV4NP"
	.byte	0xb
	.uahalf	0x188
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CEV5NP"
	.byte	0xb
	.uahalf	0x189
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"CEV6NP"
	.byte	0xb
	.uahalf	0x18a
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CEV7NP"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEVNP0_Bits"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0x40f1
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CHASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x18f
	.uaword	0x4461
	.uleb128 0x10
	.string	"ASSCH0"
	.byte	0xb
	.uahalf	0x191
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"ASSCH1"
	.byte	0xb
	.uahalf	0x192
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ASSCH2"
	.byte	0xb
	.uahalf	0x193
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"ASSCH3"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"ASSCH4"
	.byte	0xb
	.uahalf	0x195
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"ASSCH5"
	.byte	0xb
	.uahalf	0x196
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ASSCH6"
	.byte	0xb
	.uahalf	0x197
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"ASSCH7"
	.byte	0xb
	.uahalf	0x198
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"ASSCH8"
	.byte	0xb
	.uahalf	0x199
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"ASSCH9"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ASSCH10"
	.byte	0xb
	.uahalf	0x19b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"ASSCH11"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"ASSCH12"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"ASSCH13"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"ASSCH14"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"ASSCH15"
	.byte	0xb
	.uahalf	0x1a0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"ASSCH16"
	.byte	0xb
	.uahalf	0x1a1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"ASSCH17"
	.byte	0xb
	.uahalf	0x1a2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"ASSCH18"
	.byte	0xb
	.uahalf	0x1a3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"ASSCH19"
	.byte	0xb
	.uahalf	0x1a4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"ASSCH20"
	.byte	0xb
	.uahalf	0x1a5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"ASSCH21"
	.byte	0xb
	.uahalf	0x1a6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"ASSCH22"
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"ASSCH23"
	.byte	0xb
	.uahalf	0x1a8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"ASSCH24"
	.byte	0xb
	.uahalf	0x1a9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"ASSCH25"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"ASSCH26"
	.byte	0xb
	.uahalf	0x1ab
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"ASSCH27"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"ASSCH28"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"ASSCH29"
	.byte	0xb
	.uahalf	0x1ae
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"ASSCH30"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"ASSCH31"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHASS_Bits"
	.byte	0xb
	.uahalf	0x1b1
	.uaword	0x41ca
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CHCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1b4
	.uaword	0x45bd
	.uleb128 0x10
	.string	"ICLSEL"
	.byte	0xb
	.uahalf	0x1b6
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"BNDSELL"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"BNDSELU"
	.byte	0xb
	.uahalf	0x1b9
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CHEVMODE"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SYNC"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"REFSEL"
	.byte	0xb
	.uahalf	0x1bc
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"BNDSELX"
	.byte	0xb
	.uahalf	0x1bd
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RESREG"
	.byte	0xb
	.uahalf	0x1be
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RESTBS"
	.byte	0xb
	.uahalf	0x1bf
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"RESPOS"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x1c1
	.uaword	0x215
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"BWDCH"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"BWDEN"
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"reserved_31"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHCTR_Bits"
	.byte	0xb
	.uahalf	0x1c5
	.uaword	0x447f
	.uleb128 0x13
	.string	"_Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1c8
	.uaword	0x46b8
	.uleb128 0x10
	.string	"EMUXSET"
	.byte	0xb
	.uahalf	0x1ca
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x1cb
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EMUXACT"
	.byte	0xb
	.uahalf	0x1cc
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x1cd
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EMUXCH"
	.byte	0xb
	.uahalf	0x1ce
	.uaword	0x215
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EMUXMODE"
	.byte	0xb
	.uahalf	0x1cf
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EMXCOD"
	.byte	0xb
	.uahalf	0x1d0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EMXST"
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EMXCSS"
	.byte	0xb
	.uahalf	0x1d2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EMXWC"
	.byte	0xb
	.uahalf	0x1d3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x45db
	.uleb128 0x13
	.string	"_Ifx_VADC_G_Q0R0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d7
	.uaword	0x4757
	.uleb128 0x11
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RF"
	.byte	0xb
	.uahalf	0x1da
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1db
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"V"
	.byte	0xb
	.uahalf	0x1dd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x1de
	.uaword	0x215
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_Q0R0_Bits"
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x46d8
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QBUR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1e2
	.uaword	0x47f4
	.uleb128 0x11
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x1e4
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RF"
	.byte	0xb
	.uahalf	0x1e5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1e6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1e7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"V"
	.byte	0xb
	.uahalf	0x1e8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x1e9
	.uaword	0x215
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QBUR0_Bits"
	.byte	0xb
	.uahalf	0x1ea
	.uaword	0x4774
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QCTRL0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1ed
	.uaword	0x4920
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x1ef
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x1f0
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"XTSEL"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"XTLVL"
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"XTWC"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"GTSEL"
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"GTLVL"
	.byte	0xb
	.uahalf	0x1f6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x1f8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QCTRL0_Bits"
	.byte	0xb
	.uahalf	0x1fd
	.uaword	0x4812
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QINR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x200
	.uaword	0x49b1
	.uleb128 0x11
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x202
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RF"
	.byte	0xb
	.uahalf	0x203
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x204
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x205
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x206
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QINR0_Bits"
	.byte	0xb
	.uahalf	0x207
	.uaword	0x493f
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QMR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x20a
	.uaword	0x4a95
	.uleb128 0x10
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x20c
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x20d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x20e
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CLRV"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TREV"
	.byte	0xb
	.uahalf	0x210
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"FLUSH"
	.byte	0xb
	.uahalf	0x211
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"CEV"
	.byte	0xb
	.uahalf	0x212
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x213
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x214
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x215
	.uaword	0x215
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QMR0_Bits"
	.byte	0xb
	.uahalf	0x216
	.uaword	0x49cf
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QSR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x219
	.uaword	0x4b46
	.uleb128 0x10
	.string	"FILL"
	.byte	0xb
	.uahalf	0x21b
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x21c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EMPTY"
	.byte	0xb
	.uahalf	0x21d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x21e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x21f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EV"
	.byte	0xb
	.uahalf	0x220
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x221
	.uaword	0x215
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QSR0_Bits"
	.byte	0xb
	.uahalf	0x222
	.uaword	0x4ab2
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x225
	.uaword	0x4c06
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x227
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x228
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"DMM"
	.byte	0xb
	.uahalf	0x229
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x22a
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"WFR"
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"FEN"
	.byte	0xb
	.uahalf	0x22c
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x22d
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x22e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RCR_Bits"
	.byte	0xb
	.uahalf	0x22f
	.uaword	0x4b63
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x232
	.uaword	0x4d6a
	.uleb128 0x10
	.string	"REV0"
	.byte	0xb
	.uahalf	0x234
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"REV1"
	.byte	0xb
	.uahalf	0x235
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"REV2"
	.byte	0xb
	.uahalf	0x236
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"REV3"
	.byte	0xb
	.uahalf	0x237
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV4"
	.byte	0xb
	.uahalf	0x238
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"REV5"
	.byte	0xb
	.uahalf	0x239
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"REV6"
	.byte	0xb
	.uahalf	0x23a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REV7"
	.byte	0xb
	.uahalf	0x23b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV8"
	.byte	0xb
	.uahalf	0x23c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"REV9"
	.byte	0xb
	.uahalf	0x23d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"REV10"
	.byte	0xb
	.uahalf	0x23e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"REV11"
	.byte	0xb
	.uahalf	0x23f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV12"
	.byte	0xb
	.uahalf	0x240
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"REV13"
	.byte	0xb
	.uahalf	0x241
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"REV14"
	.byte	0xb
	.uahalf	0x242
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"REV15"
	.byte	0xb
	.uahalf	0x243
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x244
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFCLR_Bits"
	.byte	0xb
	.uahalf	0x245
	.uaword	0x4c22
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x248
	.uaword	0x4ed1
	.uleb128 0x10
	.string	"REV0"
	.byte	0xb
	.uahalf	0x24a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"REV1"
	.byte	0xb
	.uahalf	0x24b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"REV2"
	.byte	0xb
	.uahalf	0x24c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"REV3"
	.byte	0xb
	.uahalf	0x24d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV4"
	.byte	0xb
	.uahalf	0x24e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"REV5"
	.byte	0xb
	.uahalf	0x24f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"REV6"
	.byte	0xb
	.uahalf	0x250
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REV7"
	.byte	0xb
	.uahalf	0x251
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV8"
	.byte	0xb
	.uahalf	0x252
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"REV9"
	.byte	0xb
	.uahalf	0x253
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"REV10"
	.byte	0xb
	.uahalf	0x254
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"REV11"
	.byte	0xb
	.uahalf	0x255
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV12"
	.byte	0xb
	.uahalf	0x256
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"REV13"
	.byte	0xb
	.uahalf	0x257
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"REV14"
	.byte	0xb
	.uahalf	0x258
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"REV15"
	.byte	0xb
	.uahalf	0x259
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x25a
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFLAG_Bits"
	.byte	0xb
	.uahalf	0x25b
	.uaword	0x4d89
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x4f80
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x260
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRC"
	.byte	0xb
	.uahalf	0x261
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x262
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x263
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x264
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x265
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x266
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RES_Bits"
	.byte	0xb
	.uahalf	0x267
	.uaword	0x4ef0
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x26a
	.uaword	0x502d
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x26c
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRC"
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x26e
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x26f
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x270
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x271
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x272
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RESD_Bits"
	.byte	0xb
	.uahalf	0x273
	.uaword	0x4f9c
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x276
	.uaword	0x5104
	.uleb128 0x10
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x278
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV1NP"
	.byte	0xb
	.uahalf	0x279
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV2NP"
	.byte	0xb
	.uahalf	0x27a
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV3NP"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"REV4NP"
	.byte	0xb
	.uahalf	0x27c
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"REV5NP"
	.byte	0xb
	.uahalf	0x27d
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"REV6NP"
	.byte	0xb
	.uahalf	0x27e
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"REV7NP"
	.byte	0xb
	.uahalf	0x27f
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP0_Bits"
	.byte	0xb
	.uahalf	0x280
	.uaword	0x504a
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REVNP1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x283
	.uaword	0x51e3
	.uleb128 0x10
	.string	"REV8NP"
	.byte	0xb
	.uahalf	0x285
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV9NP"
	.byte	0xb
	.uahalf	0x286
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV10NP"
	.byte	0xb
	.uahalf	0x287
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV11NP"
	.byte	0xb
	.uahalf	0x288
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"REV12NP"
	.byte	0xb
	.uahalf	0x289
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"REV13NP"
	.byte	0xb
	.uahalf	0x28a
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"REV14NP"
	.byte	0xb
	.uahalf	0x28b
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"REV15NP"
	.byte	0xb
	.uahalf	0x28c
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP1_Bits"
	.byte	0xb
	.uahalf	0x28d
	.uaword	0x5123
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RRASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x290
	.uaword	0x5369
	.uleb128 0x10
	.string	"ASSRR0"
	.byte	0xb
	.uahalf	0x292
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"ASSRR1"
	.byte	0xb
	.uahalf	0x293
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ASSRR2"
	.byte	0xb
	.uahalf	0x294
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"ASSRR3"
	.byte	0xb
	.uahalf	0x295
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"ASSRR4"
	.byte	0xb
	.uahalf	0x296
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"ASSRR5"
	.byte	0xb
	.uahalf	0x297
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ASSRR6"
	.byte	0xb
	.uahalf	0x298
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"ASSRR7"
	.byte	0xb
	.uahalf	0x299
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"ASSRR8"
	.byte	0xb
	.uahalf	0x29a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"ASSRR9"
	.byte	0xb
	.uahalf	0x29b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ASSRR10"
	.byte	0xb
	.uahalf	0x29c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"ASSRR11"
	.byte	0xb
	.uahalf	0x29d
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"ASSRR12"
	.byte	0xb
	.uahalf	0x29e
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"ASSRR13"
	.byte	0xb
	.uahalf	0x29f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"ASSRR14"
	.byte	0xb
	.uahalf	0x2a0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"ASSRR15"
	.byte	0xb
	.uahalf	0x2a1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x2a2
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RRASS_Bits"
	.byte	0xb
	.uahalf	0x2a3
	.uaword	0x5202
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2a6
	.uaword	0x53db
	.uleb128 0x10
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x2a9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2aa
	.uaword	0x215
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFCLR_Bits"
	.byte	0xb
	.uahalf	0x2ab
	.uaword	0x5387
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ae
	.uaword	0x544e
	.uleb128 0x10
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x2b0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x2b1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2b2
	.uaword	0x215
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFLAG_Bits"
	.byte	0xb
	.uahalf	0x2b3
	.uaword	0x53fa
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2b6
	.uaword	0x54c4
	.uleb128 0x10
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x2b8
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEV1NP"
	.byte	0xb
	.uahalf	0x2b9
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x2ba
	.uaword	0x215
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEVNP_Bits"
	.byte	0xb
	.uahalf	0x2bb
	.uaword	0x546d
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SRACT_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2be
	.uaword	0x55b3
	.uleb128 0x10
	.string	"AGSR0"
	.byte	0xb
	.uahalf	0x2c0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"AGSR1"
	.byte	0xb
	.uahalf	0x2c1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"AGSR2"
	.byte	0xb
	.uahalf	0x2c2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"AGSR3"
	.byte	0xb
	.uahalf	0x2c3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x2c4
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"ASSR0"
	.byte	0xb
	.uahalf	0x2c5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"ASSR1"
	.byte	0xb
	.uahalf	0x2c6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ASSR2"
	.byte	0xb
	.uahalf	0x2c7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"ASSR3"
	.byte	0xb
	.uahalf	0x2c8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x2c9
	.uaword	0x215
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SRACT_Bits"
	.byte	0xb
	.uahalf	0x2ca
	.uaword	0x54e2
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SYNCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2cd
	.uaword	0x565e
	.uleb128 0x10
	.string	"STSEL"
	.byte	0xb
	.uahalf	0x2cf
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2d0
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EVALR1"
	.byte	0xb
	.uahalf	0x2d1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EVALR2"
	.byte	0xb
	.uahalf	0x2d2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EVALR3"
	.byte	0xb
	.uahalf	0x2d3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x2d4
	.uaword	0x215
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SYNCTR_Bits"
	.byte	0xb
	.uahalf	0x2d5
	.uaword	0x55d1
	.uleb128 0x13
	.string	"_Ifx_VADC_G_VFR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2d8
	.uaword	0x57b2
	.uleb128 0x10
	.string	"VF0"
	.byte	0xb
	.uahalf	0x2da
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"VF1"
	.byte	0xb
	.uahalf	0x2db
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"VF2"
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"VF3"
	.byte	0xb
	.uahalf	0x2dd
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"VF4"
	.byte	0xb
	.uahalf	0x2de
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"VF5"
	.byte	0xb
	.uahalf	0x2df
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"VF6"
	.byte	0xb
	.uahalf	0x2e0
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"VF7"
	.byte	0xb
	.uahalf	0x2e1
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"VF8"
	.byte	0xb
	.uahalf	0x2e2
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"VF9"
	.byte	0xb
	.uahalf	0x2e3
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"VF10"
	.byte	0xb
	.uahalf	0x2e4
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"VF11"
	.byte	0xb
	.uahalf	0x2e5
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"VF12"
	.byte	0xb
	.uahalf	0x2e6
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"VF13"
	.byte	0xb
	.uahalf	0x2e7
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"VF14"
	.byte	0xb
	.uahalf	0x2e8
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"VF15"
	.byte	0xb
	.uahalf	0x2e9
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x2ea
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_VFR_Bits"
	.byte	0xb
	.uahalf	0x2eb
	.uaword	0x567d
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBBOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x5831
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x2f1
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x2f2
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x2f3
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBBOUND_Bits"
	.byte	0xb
	.uahalf	0x2f4
	.uaword	0x57ce
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2f7
	.uaword	0x59c6
	.uleb128 0x10
	.string	"DIVA"
	.byte	0xb
	.uahalf	0x2f9
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x2fa
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"DCMSB"
	.byte	0xb
	.uahalf	0x2fb
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"DIVD"
	.byte	0xb
	.uahalf	0x2fc
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x2fd
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REFPC"
	.byte	0xb
	.uahalf	0x2fe
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"LOSUP"
	.byte	0xb
	.uahalf	0x300
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"DIVWC"
	.byte	0xb
	.uahalf	0x301
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DPCAL0"
	.byte	0xb
	.uahalf	0x302
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"DPCAL1"
	.byte	0xb
	.uahalf	0x303
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"DPCAL2"
	.byte	0xb
	.uahalf	0x304
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"DPCAL3"
	.byte	0xb
	.uahalf	0x305
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"DPCAL4"
	.byte	0xb
	.uahalf	0x306
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"DPCAL5"
	.byte	0xb
	.uahalf	0x307
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"DPCAL6"
	.byte	0xb
	.uahalf	0x308
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"DPCAL7"
	.byte	0xb
	.uahalf	0x309
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x30a
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"SUCAL"
	.byte	0xb
	.uahalf	0x30b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBCFG_Bits"
	.byte	0xb
	.uahalf	0x30c
	.uaword	0x5851
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x30f
	.uaword	0x5a99
	.uleb128 0x10
	.string	"SEVGLB"
	.byte	0xb
	.uahalf	0x311
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x312
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REVGLB"
	.byte	0xb
	.uahalf	0x313
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x314
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"SEVGLBCLR"
	.byte	0xb
	.uahalf	0x315
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x316
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"REVGLBCLR"
	.byte	0xb
	.uahalf	0x317
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x318
	.uaword	0x215
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0xb
	.uahalf	0x319
	.uaword	0x59e4
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x31c
	.uaword	0x5b21
	.uleb128 0x10
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x31e
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x31f
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x320
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x321
	.uaword	0x215
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEVNP_Bits"
	.byte	0xb
	.uahalf	0x322
	.uaword	0x5ab9
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBRCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x325
	.uaword	0x5bc5
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x327
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x328
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x329
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"WFR"
	.byte	0xb
	.uahalf	0x32a
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x215
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x32c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRCR_Bits"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x5b40
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBRES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x330
	.uaword	0x5c75
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x332
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"GNR"
	.byte	0xb
	.uahalf	0x333
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x334
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x335
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x336
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x337
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x338
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRES_Bits"
	.byte	0xb
	.uahalf	0x339
	.uaword	0x5be3
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBRESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x33c
	.uaword	0x5d26
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x33e
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"GNR"
	.byte	0xb
	.uahalf	0x33f
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x340
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x341
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x342
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x343
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x344
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRESD_Bits"
	.byte	0xb
	.uahalf	0x345
	.uaword	0x5c93
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBTF_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x348
	.uaword	0x5e36
	.uleb128 0x10
	.string	"CDCH"
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CDGR"
	.byte	0xb
	.uahalf	0x34b
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CDEN"
	.byte	0xb
	.uahalf	0x34c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"CDSEL"
	.byte	0xb
	.uahalf	0x34d
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x34e
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"CDWC"
	.byte	0xb
	.uahalf	0x34f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PDD"
	.byte	0xb
	.uahalf	0x350
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"MDPD"
	.byte	0xb
	.uahalf	0x351
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"MDPU"
	.byte	0xb
	.uahalf	0x352
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"reserved_19"
	.byte	0xb
	.uahalf	0x353
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"MDWC"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x355
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBTF_Bits"
	.byte	0xb
	.uahalf	0x356
	.uaword	0x5d45
	.uleb128 0x13
	.string	"_Ifx_VADC_ICLASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x359
	.uaword	0x5ef5
	.uleb128 0x10
	.string	"STCS"
	.byte	0xb
	.uahalf	0x35b
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x35c
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CMS"
	.byte	0xb
	.uahalf	0x35d
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x35e
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"STCE"
	.byte	0xb
	.uahalf	0x35f
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x360
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"CME"
	.byte	0xb
	.uahalf	0x361
	.uaword	0x215
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x362
	.uaword	0x215
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ICLASS_Bits"
	.byte	0xb
	.uahalf	0x363
	.uaword	0x5e53
	.uleb128 0x13
	.string	"_Ifx_VADC_ID_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x366
	.uaword	0x5f67
	.uleb128 0x10
	.string	"MOD_REV"
	.byte	0xb
	.uahalf	0x368
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"MOD_TYPE"
	.byte	0xb
	.uahalf	0x369
	.uaword	0x215
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x215
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ID_Bits"
	.byte	0xb
	.uahalf	0x36b
	.uaword	0x5f12
	.uleb128 0x13
	.string	"_Ifx_VADC_KRST0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x36e
	.uaword	0x5fd3
	.uleb128 0x10
	.string	"RST"
	.byte	0xb
	.uahalf	0x370
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RSTSTAT"
	.byte	0xb
	.uahalf	0x371
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x372
	.uaword	0x215
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST0_Bits"
	.byte	0xb
	.uahalf	0x373
	.uaword	0x5f80
	.uleb128 0x13
	.string	"_Ifx_VADC_KRST1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x376
	.uaword	0x602e
	.uleb128 0x10
	.string	"RST"
	.byte	0xb
	.uahalf	0x378
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x379
	.uaword	0x215
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST1_Bits"
	.byte	0xb
	.uahalf	0x37a
	.uaword	0x5fef
	.uleb128 0x13
	.string	"_Ifx_VADC_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x37d
	.uaword	0x608b
	.uleb128 0x10
	.string	"CLR"
	.byte	0xb
	.uahalf	0x37f
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x380
	.uaword	0x215
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRSTCLR_Bits"
	.byte	0xb
	.uahalf	0x381
	.uaword	0x604a
	.uleb128 0x13
	.string	"_Ifx_VADC_OCS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x384
	.uaword	0x6154
	.uleb128 0x10
	.string	"TGS"
	.byte	0xb
	.uahalf	0x386
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TGB"
	.byte	0xb
	.uahalf	0x387
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TG_P"
	.byte	0xb
	.uahalf	0x388
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x389
	.uaword	0x215
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"SUS"
	.byte	0xb
	.uahalf	0x38a
	.uaword	0x215
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"SUS_P"
	.byte	0xb
	.uahalf	0x38b
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"SUSSTA"
	.byte	0xb
	.uahalf	0x38c
	.uaword	0x215
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"reserved_30"
	.byte	0xb
	.uahalf	0x38d
	.uaword	0x215
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_OCS_Bits"
	.byte	0xb
	.uahalf	0x38e
	.uaword	0x60a9
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x396
	.uaword	0x6196
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x398
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x399
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x39a
	.uaword	0x2f58
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ACCEN0"
	.byte	0xb
	.uahalf	0x39b
	.uaword	0x616e
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x39e
	.uaword	0x61d6
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3a0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3a1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3a2
	.uaword	0x30d3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ACCPROT0"
	.byte	0xb
	.uahalf	0x3a3
	.uaword	0x61ae
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3a6
	.uaword	0x6218
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3a8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3a9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3aa
	.uaword	0x3240
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ACCPROT1"
	.byte	0xb
	.uahalf	0x3ab
	.uaword	0x61f0
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ae
	.uaword	0x625a
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3b0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3b2
	.uaword	0x332d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSCTRL"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x6232
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3b6
	.uaword	0x629b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3b8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3b9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3ba
	.uaword	0x3426
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSMR"
	.byte	0xb
	.uahalf	0x3bb
	.uaword	0x6273
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3be
	.uaword	0x62da
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3c0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3c1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3c2
	.uaword	0x3473
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSPND"
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x62b2
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3c6
	.uaword	0x631a
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3c8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3c9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3ca
	.uaword	0x34c1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSSEL"
	.byte	0xb
	.uahalf	0x3cb
	.uaword	0x62f2
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ce
	.uaword	0x635a
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3d0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3d2
	.uaword	0x3547
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_CLC"
	.byte	0xb
	.uahalf	0x3d3
	.uaword	0x6332
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3d6
	.uaword	0x6397
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3d8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3d9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3da
	.uaword	0x35b7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_EMUXSEL"
	.byte	0xb
	.uahalf	0x3db
	.uaword	0x636f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3de
	.uaword	0x63d8
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3e1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x3636
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ALIAS"
	.byte	0xb
	.uahalf	0x3e3
	.uaword	0x63b0
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3e6
	.uaword	0x6419
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3e8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3e9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3ea
	.uaword	0x376f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ARBCFG"
	.byte	0xb
	.uahalf	0x3eb
	.uaword	0x63f1
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ee
	.uaword	0x645b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3f0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3f1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3f2
	.uaword	0x388e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ARBPR"
	.byte	0xb
	.uahalf	0x3f3
	.uaword	0x6433
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3f6
	.uaword	0x649c
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3f8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3f9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3fa
	.uaword	0x39b0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASCTRL"
	.byte	0xb
	.uahalf	0x3fb
	.uaword	0x6474
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3fe
	.uaword	0x64de
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x400
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x401
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x402
	.uaword	0x3ab9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASMR"
	.byte	0xb
	.uahalf	0x403
	.uaword	0x64b6
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x406
	.uaword	0x651e
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x408
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x409
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x40a
	.uaword	0x3b09
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASPND"
	.byte	0xb
	.uahalf	0x40b
	.uaword	0x64f6
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x40e
	.uaword	0x655f
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x410
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x411
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x412
	.uaword	0x3b5a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASSEL"
	.byte	0xb
	.uahalf	0x413
	.uaword	0x6537
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x416
	.uaword	0x65a0
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x418
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x419
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x41a
	.uaword	0x3c93
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFL"
	.byte	0xb
	.uahalf	0x41b
	.uaword	0x6578
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x41e
	.uaword	0x65df
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x420
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x421
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x422
	.uaword	0x3d23
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLC"
	.byte	0xb
	.uahalf	0x423
	.uaword	0x65b7
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x426
	.uaword	0x661f
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x428
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x429
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x42a
	.uaword	0x3dbd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLNP"
	.byte	0xb
	.uahalf	0x42b
	.uaword	0x65f7
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x42e
	.uaword	0x6660
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x430
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x431
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x432
	.uaword	0x3ea3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLS"
	.byte	0xb
	.uahalf	0x433
	.uaword	0x6638
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x436
	.uaword	0x66a0
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x438
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x439
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x43a
	.uaword	0x3f21
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BOUND"
	.byte	0xb
	.uahalf	0x43b
	.uaword	0x6678
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x43e
	.uaword	0x66e1
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x440
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x441
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x442
	.uaword	0x3ff9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFCLR"
	.byte	0xb
	.uahalf	0x443
	.uaword	0x66b9
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x446
	.uaword	0x6723
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x448
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x449
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x44a
	.uaword	0x40d2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFLAG"
	.byte	0xb
	.uahalf	0x44b
	.uaword	0x66fb
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x44e
	.uaword	0x6765
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x450
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x451
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x452
	.uaword	0x41ab
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEVNP0"
	.byte	0xb
	.uahalf	0x453
	.uaword	0x673d
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x456
	.uaword	0x67a7
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x458
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x459
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x45a
	.uaword	0x4461
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHASS"
	.byte	0xb
	.uahalf	0x45b
	.uaword	0x677f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x45e
	.uaword	0x67e8
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x460
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x461
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x462
	.uaword	0x45bd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHCTR"
	.byte	0xb
	.uahalf	0x463
	.uaword	0x67c0
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x466
	.uaword	0x6829
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x468
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x469
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0x46b8
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_EMUXCTR"
	.byte	0xb
	.uahalf	0x46b
	.uaword	0x6801
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x46e
	.uaword	0x686c
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x470
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x471
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x472
	.uaword	0x4757
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_Q0R0"
	.byte	0xb
	.uahalf	0x473
	.uaword	0x6844
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x476
	.uaword	0x68ac
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x478
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x479
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x47a
	.uaword	0x47f4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QBUR0"
	.byte	0xb
	.uahalf	0x47b
	.uaword	0x6884
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x47e
	.uaword	0x68ed
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x480
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x481
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x482
	.uaword	0x4920
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QCTRL0"
	.byte	0xb
	.uahalf	0x483
	.uaword	0x68c5
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x486
	.uaword	0x692f
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x488
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x489
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x48a
	.uaword	0x49b1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QINR0"
	.byte	0xb
	.uahalf	0x48b
	.uaword	0x6907
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x48e
	.uaword	0x6970
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x490
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x491
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x492
	.uaword	0x4a95
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QMR0"
	.byte	0xb
	.uahalf	0x493
	.uaword	0x6948
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x496
	.uaword	0x69b0
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x498
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x499
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x49a
	.uaword	0x4b46
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QSR0"
	.byte	0xb
	.uahalf	0x49b
	.uaword	0x6988
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x49e
	.uaword	0x69f0
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4a0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4a1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4a2
	.uaword	0x4c06
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RCR"
	.byte	0xb
	.uahalf	0x4a3
	.uaword	0x69c8
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4a6
	.uaword	0x6a2f
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4a8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4a9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4aa
	.uaword	0x4d6a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFCLR"
	.byte	0xb
	.uahalf	0x4ab
	.uaword	0x6a07
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ae
	.uaword	0x6a71
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4b0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4b1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4b2
	.uaword	0x4ed1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFLAG"
	.byte	0xb
	.uahalf	0x4b3
	.uaword	0x6a49
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4b6
	.uaword	0x6ab3
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4b8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4b9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4ba
	.uaword	0x4f80
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RES"
	.byte	0xb
	.uahalf	0x4bb
	.uaword	0x6a8b
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4be
	.uaword	0x6af2
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4c0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4c1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4c2
	.uaword	0x502d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RESD"
	.byte	0xb
	.uahalf	0x4c3
	.uaword	0x6aca
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4c6
	.uaword	0x6b32
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4c8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4c9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4ca
	.uaword	0x5104
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP0"
	.byte	0xb
	.uahalf	0x4cb
	.uaword	0x6b0a
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ce
	.uaword	0x6b74
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4d0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4d1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4d2
	.uaword	0x51e3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP1"
	.byte	0xb
	.uahalf	0x4d3
	.uaword	0x6b4c
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4d6
	.uaword	0x6bb6
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4d8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4d9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4da
	.uaword	0x5369
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RRASS"
	.byte	0xb
	.uahalf	0x4db
	.uaword	0x6b8e
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4de
	.uaword	0x6bf7
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4e0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4e1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4e2
	.uaword	0x53db
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFCLR"
	.byte	0xb
	.uahalf	0x4e3
	.uaword	0x6bcf
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4e6
	.uaword	0x6c39
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4e8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4e9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4ea
	.uaword	0x544e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFLAG"
	.byte	0xb
	.uahalf	0x4eb
	.uaword	0x6c11
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ee
	.uaword	0x6c7b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4f0
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4f1
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4f2
	.uaword	0x54c4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEVNP"
	.byte	0xb
	.uahalf	0x4f3
	.uaword	0x6c53
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4f6
	.uaword	0x6cbc
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4f8
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4f9
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4fa
	.uaword	0x55b3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SRACT"
	.byte	0xb
	.uahalf	0x4fb
	.uaword	0x6c94
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4fe
	.uaword	0x6cfd
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x500
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x501
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x502
	.uaword	0x565e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SYNCTR"
	.byte	0xb
	.uahalf	0x503
	.uaword	0x6cd5
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x506
	.uaword	0x6d3f
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x508
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x509
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x50a
	.uaword	0x57b2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_VFR"
	.byte	0xb
	.uahalf	0x50b
	.uaword	0x6d17
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x50e
	.uaword	0x6d7e
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x510
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x511
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x512
	.uaword	0x5831
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBBOUND"
	.byte	0xb
	.uahalf	0x513
	.uaword	0x6d56
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x516
	.uaword	0x6dc1
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x518
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x519
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x51a
	.uaword	0x59c6
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBCFG"
	.byte	0xb
	.uahalf	0x51b
	.uaword	0x6d99
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x51e
	.uaword	0x6e02
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x520
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x521
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x522
	.uaword	0x5a99
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEFLAG"
	.byte	0xb
	.uahalf	0x523
	.uaword	0x6dda
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x526
	.uaword	0x6e45
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x528
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x529
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x52a
	.uaword	0x5b21
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEVNP"
	.byte	0xb
	.uahalf	0x52b
	.uaword	0x6e1d
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x52e
	.uaword	0x6e87
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x530
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x531
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x532
	.uaword	0x5bc5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRCR"
	.byte	0xb
	.uahalf	0x533
	.uaword	0x6e5f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x536
	.uaword	0x6ec8
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x538
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x539
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x53a
	.uaword	0x5c75
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRES"
	.byte	0xb
	.uahalf	0x53b
	.uaword	0x6ea0
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x53e
	.uaword	0x6f09
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x540
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x541
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x542
	.uaword	0x5d26
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRESD"
	.byte	0xb
	.uahalf	0x543
	.uaword	0x6ee1
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x546
	.uaword	0x6f4b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x548
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x549
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x54a
	.uaword	0x5e36
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBTF"
	.byte	0xb
	.uahalf	0x54b
	.uaword	0x6f23
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x54e
	.uaword	0x6f8b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x550
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x551
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x552
	.uaword	0x5ef5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ICLASS"
	.byte	0xb
	.uahalf	0x553
	.uaword	0x6f63
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x556
	.uaword	0x6fcb
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x558
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x559
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x55a
	.uaword	0x5f67
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ID"
	.byte	0xb
	.uahalf	0x55b
	.uaword	0x6fa3
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x55e
	.uaword	0x7007
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x560
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x561
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x562
	.uaword	0x5fd3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST0"
	.byte	0xb
	.uahalf	0x563
	.uaword	0x6fdf
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x566
	.uaword	0x7046
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x568
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x569
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x56a
	.uaword	0x602e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST1"
	.byte	0xb
	.uahalf	0x56b
	.uaword	0x701e
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x56e
	.uaword	0x7085
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x570
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x571
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x572
	.uaword	0x608b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRSTCLR"
	.byte	0xb
	.uahalf	0x573
	.uaword	0x705d
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x576
	.uaword	0x70c6
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x578
	.uaword	0x215
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x579
	.uaword	0x20e
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x57a
	.uaword	0x6154
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_OCS"
	.byte	0xb
	.uahalf	0x57b
	.uaword	0x709e
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x59e
	.uaword	0x7101
	.uleb128 0x15
	.string	"QBUR0"
	.byte	0xb
	.uahalf	0x5a0
	.uaword	0x68ac
	.uleb128 0x15
	.string	"QINR0"
	.byte	0xb
	.uahalf	0x5a1
	.uaword	0x692f
	.byte	0
	.uleb128 0x16
	.string	"_Ifx_VADC_G"
	.uahalf	0x400
	.byte	0xb
	.uahalf	0x586
	.uaword	0x74f5
	.uleb128 0x17
	.string	"ARBCFG"
	.byte	0xb
	.uahalf	0x588
	.uaword	0x6419
	.byte	0
	.uleb128 0x17
	.string	"ARBPR"
	.byte	0xb
	.uahalf	0x589
	.uaword	0x645b
	.byte	0x4
	.uleb128 0x17
	.string	"CHASS"
	.byte	0xb
	.uahalf	0x58a
	.uaword	0x67a7
	.byte	0x8
	.uleb128 0x17
	.string	"RRASS"
	.byte	0xb
	.uahalf	0x58b
	.uaword	0x6bb6
	.byte	0xc
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x58c
	.uaword	0x3a2
	.byte	0x10
	.uleb128 0x17
	.string	"ICLASS"
	.byte	0xb
	.uahalf	0x58d
	.uaword	0x74f5
	.byte	0x20
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x58e
	.uaword	0x362
	.byte	0x28
	.uleb128 0x17
	.string	"ALIAS"
	.byte	0xb
	.uahalf	0x58f
	.uaword	0x63d8
	.byte	0x30
	.uleb128 0x17
	.string	"reserved_34"
	.byte	0xb
	.uahalf	0x590
	.uaword	0x25c
	.byte	0x34
	.uleb128 0x17
	.string	"BOUND"
	.byte	0xb
	.uahalf	0x591
	.uaword	0x66a0
	.byte	0x38
	.uleb128 0x17
	.string	"reserved_3C"
	.byte	0xb
	.uahalf	0x592
	.uaword	0x25c
	.byte	0x3c
	.uleb128 0x17
	.string	"SYNCTR"
	.byte	0xb
	.uahalf	0x593
	.uaword	0x6cfd
	.byte	0x40
	.uleb128 0x17
	.string	"reserved_44"
	.byte	0xb
	.uahalf	0x594
	.uaword	0x25c
	.byte	0x44
	.uleb128 0x17
	.string	"BFL"
	.byte	0xb
	.uahalf	0x595
	.uaword	0x65a0
	.byte	0x48
	.uleb128 0x17
	.string	"BFLS"
	.byte	0xb
	.uahalf	0x596
	.uaword	0x6660
	.byte	0x4c
	.uleb128 0x17
	.string	"BFLC"
	.byte	0xb
	.uahalf	0x597
	.uaword	0x65df
	.byte	0x50
	.uleb128 0x17
	.string	"BFLNP"
	.byte	0xb
	.uahalf	0x598
	.uaword	0x661f
	.byte	0x54
	.uleb128 0x17
	.string	"reserved_58"
	.byte	0xb
	.uahalf	0x599
	.uaword	0x412
	.byte	0x58
	.uleb128 0x17
	.string	"QCTRL0"
	.byte	0xb
	.uahalf	0x59a
	.uaword	0x68ed
	.byte	0x80
	.uleb128 0x17
	.string	"QMR0"
	.byte	0xb
	.uahalf	0x59b
	.uaword	0x6970
	.byte	0x84
	.uleb128 0x17
	.string	"QSR0"
	.byte	0xb
	.uahalf	0x59c
	.uaword	0x69b0
	.byte	0x88
	.uleb128 0x17
	.string	"Q0R0"
	.byte	0xb
	.uahalf	0x59d
	.uaword	0x686c
	.byte	0x8c
	.uleb128 0x1a
	.uaword	0x70db
	.byte	0x90
	.uleb128 0x17
	.string	"reserved_94"
	.byte	0xb
	.uahalf	0x5a4
	.uaword	0x392
	.byte	0x94
	.uleb128 0x17
	.string	"ASCTRL"
	.byte	0xb
	.uahalf	0x5a5
	.uaword	0x649c
	.byte	0xa0
	.uleb128 0x17
	.string	"ASMR"
	.byte	0xb
	.uahalf	0x5a6
	.uaword	0x64de
	.byte	0xa4
	.uleb128 0x17
	.string	"ASSEL"
	.byte	0xb
	.uahalf	0x5a7
	.uaword	0x655f
	.byte	0xa8
	.uleb128 0x17
	.string	"ASPND"
	.byte	0xb
	.uahalf	0x5a8
	.uaword	0x651e
	.byte	0xac
	.uleb128 0x17
	.string	"reserved_B0"
	.byte	0xb
	.uahalf	0x5a9
	.uaword	0x7505
	.byte	0xb0
	.uleb128 0x1b
	.string	"CEFLAG"
	.byte	0xb
	.uahalf	0x5aa
	.uaword	0x6723
	.uahalf	0x100
	.uleb128 0x1b
	.string	"REFLAG"
	.byte	0xb
	.uahalf	0x5ab
	.uaword	0x6a71
	.uahalf	0x104
	.uleb128 0x1b
	.string	"SEFLAG"
	.byte	0xb
	.uahalf	0x5ac
	.uaword	0x6c39
	.uahalf	0x108
	.uleb128 0x1b
	.string	"reserved_10C"
	.byte	0xb
	.uahalf	0x5ad
	.uaword	0x25c
	.uahalf	0x10c
	.uleb128 0x1b
	.string	"CEFCLR"
	.byte	0xb
	.uahalf	0x5ae
	.uaword	0x66e1
	.uahalf	0x110
	.uleb128 0x1b
	.string	"REFCLR"
	.byte	0xb
	.uahalf	0x5af
	.uaword	0x6a2f
	.uahalf	0x114
	.uleb128 0x1b
	.string	"SEFCLR"
	.byte	0xb
	.uahalf	0x5b0
	.uaword	0x6bf7
	.uahalf	0x118
	.uleb128 0x1b
	.string	"reserved_11C"
	.byte	0xb
	.uahalf	0x5b1
	.uaword	0x25c
	.uahalf	0x11c
	.uleb128 0x1b
	.string	"CEVNP0"
	.byte	0xb
	.uahalf	0x5b2
	.uaword	0x6765
	.uahalf	0x120
	.uleb128 0x1b
	.string	"reserved_124"
	.byte	0xb
	.uahalf	0x5b3
	.uaword	0x392
	.uahalf	0x124
	.uleb128 0x1b
	.string	"REVNP0"
	.byte	0xb
	.uahalf	0x5b4
	.uaword	0x6b32
	.uahalf	0x130
	.uleb128 0x1b
	.string	"REVNP1"
	.byte	0xb
	.uahalf	0x5b5
	.uaword	0x6b74
	.uahalf	0x134
	.uleb128 0x1b
	.string	"reserved_138"
	.byte	0xb
	.uahalf	0x5b6
	.uaword	0x362
	.uahalf	0x138
	.uleb128 0x1b
	.string	"SEVNP"
	.byte	0xb
	.uahalf	0x5b7
	.uaword	0x6c7b
	.uahalf	0x140
	.uleb128 0x1c
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x5b8
	.uaword	0x25c
	.uahalf	0x144
	.uleb128 0x1b
	.string	"SRACT"
	.byte	0xb
	.uahalf	0x5b9
	.uaword	0x6cbc
	.uahalf	0x148
	.uleb128 0x1b
	.string	"reserved_14C"
	.byte	0xb
	.uahalf	0x5ba
	.uaword	0x7515
	.uahalf	0x14c
	.uleb128 0x1b
	.string	"EMUXCTR"
	.byte	0xb
	.uahalf	0x5bb
	.uaword	0x6829
	.uahalf	0x170
	.uleb128 0x1b
	.string	"reserved_174"
	.byte	0xb
	.uahalf	0x5bc
	.uaword	0x25c
	.uahalf	0x174
	.uleb128 0x1b
	.string	"VFR"
	.byte	0xb
	.uahalf	0x5bd
	.uaword	0x6d3f
	.uahalf	0x178
	.uleb128 0x1b
	.string	"reserved_17C"
	.byte	0xb
	.uahalf	0x5be
	.uaword	0x25c
	.uahalf	0x17c
	.uleb128 0x1b
	.string	"CHCTR"
	.byte	0xb
	.uahalf	0x5bf
	.uaword	0x7525
	.uahalf	0x180
	.uleb128 0x1c
	.uaword	.LASF36
	.byte	0xb
	.uahalf	0x5c0
	.uaword	0x422
	.uahalf	0x1a0
	.uleb128 0x1b
	.string	"RCR"
	.byte	0xb
	.uahalf	0x5c1
	.uaword	0x7535
	.uahalf	0x200
	.uleb128 0x1b
	.string	"reserved_240"
	.byte	0xb
	.uahalf	0x5c2
	.uaword	0x3b2
	.uahalf	0x240
	.uleb128 0x1b
	.string	"RES"
	.byte	0xb
	.uahalf	0x5c3
	.uaword	0x7545
	.uahalf	0x280
	.uleb128 0x1b
	.string	"reserved_2C0"
	.byte	0xb
	.uahalf	0x5c4
	.uaword	0x3b2
	.uahalf	0x2c0
	.uleb128 0x1b
	.string	"RESD"
	.byte	0xb
	.uahalf	0x5c5
	.uaword	0x7555
	.uahalf	0x300
	.uleb128 0x1b
	.string	"reserved_340"
	.byte	0xb
	.uahalf	0x5c6
	.uaword	0x7565
	.uahalf	0x340
	.byte	0
	.uleb128 0x3
	.uaword	0x6f8b
	.uaword	0x7505
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x7515
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x4f
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x7525
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.uaword	0x67e8
	.uaword	0x7535
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x69f0
	.uaword	0x7545
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x6ab3
	.uaword	0x7555
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x6af2
	.uaword	0x7565
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x7575
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xbf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G"
	.byte	0xb
	.uahalf	0x5c7
	.uaword	0x7588
	.uleb128 0x19
	.uaword	0x7101
	.uleb128 0x16
	.string	"_Ifx_VADC"
	.uahalf	0x4000
	.byte	0xb
	.uahalf	0x5d4
	.uaword	0x78b5
	.uleb128 0x17
	.string	"CLC"
	.byte	0xb
	.uahalf	0x5d6
	.uaword	0x635a
	.byte	0
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x5d7
	.uaword	0x25c
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0xb
	.uahalf	0x5d8
	.uaword	0x6fcb
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x5d9
	.uaword	0x382
	.byte	0xc
	.uleb128 0x17
	.string	"OCS"
	.byte	0xb
	.uahalf	0x5da
	.uaword	0x70c6
	.byte	0x28
	.uleb128 0x17
	.string	"KRSTCLR"
	.byte	0xb
	.uahalf	0x5db
	.uaword	0x7085
	.byte	0x2c
	.uleb128 0x17
	.string	"KRST1"
	.byte	0xb
	.uahalf	0x5dc
	.uaword	0x7046
	.byte	0x30
	.uleb128 0x17
	.string	"KRST0"
	.byte	0xb
	.uahalf	0x5dd
	.uaword	0x7007
	.byte	0x34
	.uleb128 0x17
	.string	"reserved_38"
	.byte	0xb
	.uahalf	0x5de
	.uaword	0x25c
	.byte	0x38
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x5df
	.uaword	0x6196
	.byte	0x3c
	.uleb128 0x17
	.string	"reserved_40"
	.byte	0xb
	.uahalf	0x5e0
	.uaword	0x3b2
	.byte	0x40
	.uleb128 0x17
	.string	"GLOBCFG"
	.byte	0xb
	.uahalf	0x5e1
	.uaword	0x6dc1
	.byte	0x80
	.uleb128 0x17
	.string	"reserved_84"
	.byte	0xb
	.uahalf	0x5e2
	.uaword	0x25c
	.byte	0x84
	.uleb128 0x17
	.string	"ACCPROT0"
	.byte	0xb
	.uahalf	0x5e3
	.uaword	0x61d6
	.byte	0x88
	.uleb128 0x17
	.string	"ACCPROT1"
	.byte	0xb
	.uahalf	0x5e4
	.uaword	0x6218
	.byte	0x8c
	.uleb128 0x17
	.string	"reserved_90"
	.byte	0xb
	.uahalf	0x5e5
	.uaword	0x3a2
	.byte	0x90
	.uleb128 0x17
	.string	"GLOBICLASS"
	.byte	0xb
	.uahalf	0x5e6
	.uaword	0x74f5
	.byte	0xa0
	.uleb128 0x17
	.string	"reserved_A8"
	.byte	0xb
	.uahalf	0x5e7
	.uaword	0x3a2
	.byte	0xa8
	.uleb128 0x17
	.string	"GLOBBOUND"
	.byte	0xb
	.uahalf	0x5e8
	.uaword	0x6d7e
	.byte	0xb8
	.uleb128 0x17
	.string	"reserved_BC"
	.byte	0xb
	.uahalf	0x5e9
	.uaword	0x7515
	.byte	0xbc
	.uleb128 0x17
	.string	"GLOBEFLAG"
	.byte	0xb
	.uahalf	0x5ea
	.uaword	0x6e02
	.byte	0xe0
	.uleb128 0x17
	.string	"reserved_E4"
	.byte	0xb
	.uahalf	0x5eb
	.uaword	0x78b5
	.byte	0xe4
	.uleb128 0x1b
	.string	"GLOBEVNP"
	.byte	0xb
	.uahalf	0x5ec
	.uaword	0x6e45
	.uahalf	0x140
	.uleb128 0x1c
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x5ed
	.uaword	0x382
	.uahalf	0x144
	.uleb128 0x1b
	.string	"GLOBTF"
	.byte	0xb
	.uahalf	0x5ee
	.uaword	0x6f4b
	.uahalf	0x160
	.uleb128 0x1b
	.string	"reserved_164"
	.byte	0xb
	.uahalf	0x5ef
	.uaword	0x382
	.uahalf	0x164
	.uleb128 0x1b
	.string	"BRSSEL"
	.byte	0xb
	.uahalf	0x5f0
	.uaword	0x78c5
	.uahalf	0x180
	.uleb128 0x1c
	.uaword	.LASF36
	.byte	0xb
	.uahalf	0x5f1
	.uaword	0x432
	.uahalf	0x1a0
	.uleb128 0x1b
	.string	"BRSPND"
	.byte	0xb
	.uahalf	0x5f2
	.uaword	0x78d5
	.uahalf	0x1c0
	.uleb128 0x1b
	.string	"reserved_1E0"
	.byte	0xb
	.uahalf	0x5f3
	.uaword	0x432
	.uahalf	0x1e0
	.uleb128 0x1b
	.string	"BRSCTRL"
	.byte	0xb
	.uahalf	0x5f4
	.uaword	0x625a
	.uahalf	0x200
	.uleb128 0x1b
	.string	"BRSMR"
	.byte	0xb
	.uahalf	0x5f5
	.uaword	0x629b
	.uahalf	0x204
	.uleb128 0x1b
	.string	"reserved_208"
	.byte	0xb
	.uahalf	0x5f6
	.uaword	0x78e5
	.uahalf	0x208
	.uleb128 0x1b
	.string	"GLOBRCR"
	.byte	0xb
	.uahalf	0x5f7
	.uaword	0x6e87
	.uahalf	0x280
	.uleb128 0x1b
	.string	"reserved_284"
	.byte	0xb
	.uahalf	0x5f8
	.uaword	0x78f5
	.uahalf	0x284
	.uleb128 0x1b
	.string	"GLOBRES"
	.byte	0xb
	.uahalf	0x5f9
	.uaword	0x6ec8
	.uahalf	0x300
	.uleb128 0x1b
	.string	"reserved_304"
	.byte	0xb
	.uahalf	0x5fa
	.uaword	0x78f5
	.uahalf	0x304
	.uleb128 0x1b
	.string	"GLOBRESD"
	.byte	0xb
	.uahalf	0x5fb
	.uaword	0x6f09
	.uahalf	0x380
	.uleb128 0x1b
	.string	"reserved_384"
	.byte	0xb
	.uahalf	0x5fc
	.uaword	0x7905
	.uahalf	0x384
	.uleb128 0x1b
	.string	"EMUXSEL"
	.byte	0xb
	.uahalf	0x5fd
	.uaword	0x6397
	.uahalf	0x3f0
	.uleb128 0x1b
	.string	"reserved_3F4"
	.byte	0xb
	.uahalf	0x5fe
	.uaword	0x7915
	.uahalf	0x3f4
	.uleb128 0x1b
	.string	"G"
	.byte	0xb
	.uahalf	0x5ff
	.uaword	0x7935
	.uahalf	0x480
	.uleb128 0x1b
	.string	"reserved_2480"
	.byte	0xb
	.uahalf	0x600
	.uaword	0x793a
	.uahalf	0x2480
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x78c5
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x5b
	.byte	0
	.uleb128 0x3
	.uaword	0x631a
	.uaword	0x78d5
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x62da
	.uaword	0x78e5
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x78f5
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x77
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x7905
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7b
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x7915
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x6b
	.byte	0
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x7925
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x8b
	.byte	0
	.uleb128 0x3
	.uaword	0x7575
	.uaword	0x7935
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.uaword	0x7925
	.uleb128 0x3
	.uaword	0x1da
	.uaword	0x794b
	.uleb128 0x1d
	.uaword	0x26c
	.uahalf	0x1b7f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC"
	.byte	0xb
	.uahalf	0x601
	.uaword	0x795c
	.uleb128 0x19
	.uaword	0x758d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x794b
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x51
	.uaword	0x7a02
	.uleb128 0xc
	.string	"IfxVadc_ArbitrationRounds_4_slots"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_ArbitrationRounds_8_slots"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_ArbitrationRounds_16_slots"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_ArbitrationRounds_20_slots"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ArbitrationRounds"
	.byte	0x3
	.byte	0x56
	.uaword	0x7967
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x5b
	.uaword	0x7d18
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_standard"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult4"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult5"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult6"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult7"
	.sleb128 7
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult8"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult9"
	.sleb128 9
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult10"
	.sleb128 10
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult11"
	.sleb128 11
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult12"
	.sleb128 12
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult13"
	.sleb128 13
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult14"
	.sleb128 14
	.uleb128 0xc
	.string	"IfxVadc_BoundaryExtension_fastCompareResult15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_BoundaryExtension"
	.byte	0x3
	.byte	0x6c
	.uaword	0x7a23
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x71
	.uaword	0x7dd0
	.uleb128 0xc
	.string	"IfxVadc_BoundarySelection_group0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_BoundarySelection_group1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_BoundarySelection_global0"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_BoundarySelection_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_BoundarySelection"
	.byte	0x3
	.byte	0x76
	.uaword	0x7d39
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x7b
	.uaword	0x7ec3
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_none"
	.sleb128 -1
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_4"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_5"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_6"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_ChannelId_7"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelId"
	.byte	0x3
	.byte	0x85
	.uaword	0x7df1
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x8a
	.uaword	0x7f2d
	.uleb128 0xc
	.string	"IfxVadc_ChannelReference_standard"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_ChannelReference_channel0"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelReference"
	.byte	0x3
	.byte	0x8d
	.uaword	0x7edc
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x92
	.uaword	0x7fe1
	.uleb128 0xc
	.string	"IfxVadc_ChannelResolution_12bit"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_ChannelResolution_10bit"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_ChannelResolution_8bit"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_ChannelResolution_10bitFast"
	.sleb128 5
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelResolution"
	.byte	0x3
	.byte	0x97
	.uaword	0x7f4d
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x9c
	.uaword	0x81b1
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_4"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_5"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_6"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_7"
	.sleb128 7
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_8"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_9"
	.sleb128 9
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_10"
	.sleb128 10
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_11"
	.sleb128 11
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_12"
	.sleb128 12
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_13"
	.sleb128 13
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_14"
	.sleb128 14
	.uleb128 0xc
	.string	"IfxVadc_ChannelResult_15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelResult"
	.byte	0x3
	.byte	0xad
	.uaword	0x8002
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x101
	.uaword	0x8251
	.uleb128 0xc
	.string	"IfxVadc_GatingMode_disabled"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_GatingMode_always"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_GatingMode_gatingHigh"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_GatingMode_gatingLow"
	.sleb128 3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_GatingMode"
	.byte	0x3
	.uahalf	0x106
	.uaword	0x81ce
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x10b
	.uaword	0x840c
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_4"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_5"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_6"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_7"
	.sleb128 7
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_8"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_9"
	.sleb128 9
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_10"
	.sleb128 10
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_11"
	.sleb128 11
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_12"
	.sleb128 12
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_13"
	.sleb128 13
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_14"
	.sleb128 14
	.uleb128 0xc
	.string	"IfxVadc_GatingSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_GatingSource"
	.byte	0x3
	.uahalf	0x11c
	.uaword	0x826c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x121
	.uaword	0x84ad
	.uleb128 0xc
	.string	"IfxVadc_InputClasses_group0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_InputClasses_group1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_InputClasses_global0"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_InputClasses_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_InputClasses"
	.byte	0x3
	.uahalf	0x126
	.uaword	0x8429
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x12b
	.uaword	0x8558
	.uleb128 0xc
	.string	"IfxVadc_LimitCheck_noCheck"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_LimitCheck_eventIfInArea"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_LimitCheck_eventIfOutsideArea"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_LimitCheck_always"
	.sleb128 3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_LimitCheck"
	.byte	0x3
	.uahalf	0x130
	.uaword	0x84ca
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x135
	.uaword	0x85c5
	.uleb128 0xc
	.string	"IfxVadc_LowSupplyVoltageSelect_5V"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_LowSupplyVoltageSelect_3V"
	.sleb128 1
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_LowSupplyVoltageSelect"
	.byte	0x3
	.uahalf	0x138
	.uaword	0x8573
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x182
	.uaword	0x8686
	.uleb128 0xc
	.string	"IfxVadc_RequestSlotPriority_lowest"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_RequestSlotPriority_low"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_RequestSlotPriority_high"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_RequestSlotPriority_highest"
	.sleb128 3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_RequestSlotPriority"
	.byte	0x3
	.uahalf	0x187
	.uaword	0x85ec
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x18c
	.uaword	0x8712
	.uleb128 0xc
	.string	"IfxVadc_RequestSlotStartMode_waitForStart"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_RequestSlotStartMode_cancelInjectRepeat"
	.sleb128 1
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_RequestSlotStartMode"
	.byte	0x3
	.uahalf	0x18f
	.uaword	0x86aa
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0x87fd
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_group0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_group1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_group2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_group3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_shared0"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_shared1"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_shared2"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_SrcNr_shared3"
	.sleb128 7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_SrcNr"
	.byte	0x3
	.uahalf	0x1af
	.uaword	0x8737
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x88ef
	.uleb128 0xc
	.string	"IfxVadc_Status_noError"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_Status_notInitialised"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_Status_invalidGroup"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_Status_invalidChannel"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_Status_queueFull"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_Status_noAccess"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_Status_channelsStillPending"
	.sleb128 6
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Status"
	.byte	0x3
	.uahalf	0x1be
	.uaword	0x8813
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x89a5
	.uleb128 0xc
	.string	"IfxVadc_TriggerMode_noExternalTrigger"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_TriggerMode_uponFallingEdge"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_TriggerMode_uponRisingEdge"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_TriggerMode_uponAnyEdge"
	.sleb128 3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_TriggerMode"
	.byte	0x3
	.uahalf	0x1c8
	.uaword	0x8906
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1cd
	.uaword	0x8b71
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_0"
	.sleb128 0
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_1"
	.sleb128 1
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_2"
	.sleb128 2
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_3"
	.sleb128 3
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_4"
	.sleb128 4
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_5"
	.sleb128 5
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_6"
	.sleb128 6
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_7"
	.sleb128 7
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_8"
	.sleb128 8
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_9"
	.sleb128 9
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_10"
	.sleb128 10
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_11"
	.sleb128 11
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_12"
	.sleb128 12
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_13"
	.sleb128 13
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_14"
	.sleb128 14
	.uleb128 0xc
	.string	"IfxVadc_TriggerSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_TriggerSource"
	.byte	0x3
	.uahalf	0x1de
	.uaword	0x89c1
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.uahalf	0x168
	.uaword	0x8ba7
	.uleb128 0x17
	.string	"vadc"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x7961
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc"
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x8b8f
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x8c1b
	.uleb128 0x17
	.string	"gatingSource"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x840c
	.byte	0
	.uleb128 0x17
	.string	"triggerSource"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x8b71
	.byte	0x1
	.uleb128 0x17
	.string	"gatingMode"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x8251
	.byte	0x2
	.uleb128 0x17
	.string	"triggerMode"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x89a5
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_GatingTriggerConfig"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x8bbb
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x8cd4
	.uleb128 0x17
	.string	"arbiterRoundLength"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x7a02
	.byte	0
	.uleb128 0x17
	.string	"requestSlotQueueEnabled"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x2d9
	.byte	0x1
	.uleb128 0x17
	.string	"requestSlotScanEnabled"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x2d9
	.byte	0x2
	.uleb128 0x17
	.string	"requestSlotBackgroundScanEnabled"
	.byte	0x4
	.uahalf	0x182
	.uaword	0x2d9
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ArbiterConfig"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x8c43
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x187
	.uaword	0x8d4a
	.uleb128 0x17
	.string	"autoBackgroundScanEnabled"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x2d9
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x8c1b
	.byte	0x2
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x8686
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x8712
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_BackgroundScanConfig"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x8cf6
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x191
	.uaword	0x8da5
	.uleb128 0x17
	.string	"sampleTime"
	.byte	0x4
	.uahalf	0x193
	.uaword	0x2b7
	.byte	0
	.uleb128 0x17
	.string	"resolution"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x7fe1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ClassConfig"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x8d73
	.uleb128 0x1f
	.byte	0xc
	.byte	0x4
	.uahalf	0x199
	.uaword	0x8dfa
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x8ba7
	.byte	0
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x8dfa
	.byte	0x4
	.uleb128 0x17
	.string	"groupId"
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x2d2c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7575
	.uleb128 0x12
	.string	"IfxVadc_Adc_Group"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x8dc5
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x8e68
	.uleb128 0x17
	.string	"flushQueueAfterInit"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x2d9
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x8c1b
	.byte	0x2
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x8686
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x8712
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_QueueConfig"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x8e1a
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x8ed2
	.uleb128 0x17
	.string	"autoscanEnabled"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x2d9
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x8c1b
	.byte	0x2
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x8686
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x8712
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ScanConfig"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x8e88
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x8f2c
	.uleb128 0x17
	.string	"channel"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x7ec3
	.byte	0
	.uleb128 0x17
	.string	"resultreg"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x81b1
	.byte	0x1
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x8f2c
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8f32
	.uleb128 0x20
	.uaword	0x8e00
	.uleb128 0x12
	.string	"IfxVadc_Adc_Channel"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x8ef1
	.uleb128 0x1f
	.byte	0x18
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x9109
	.uleb128 0x17
	.string	"globalResultUsage"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x2d9
	.byte	0
	.uleb128 0x17
	.string	"synchonize"
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x2d9
	.byte	0x1
	.uleb128 0x17
	.string	"backgroundChannel"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x2d9
	.byte	0x2
	.uleb128 0x17
	.string	"rightAlignedStorage"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x2d9
	.byte	0x3
	.uleb128 0x17
	.string	"resultPriority"
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x311
	.byte	0x4
	.uleb128 0x17
	.string	"channelPriority"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x311
	.byte	0x6
	.uleb128 0x17
	.string	"resultServProvider"
	.byte	0x4
	.uahalf	0x1d2
	.uaword	0x2c3d
	.byte	0x8
	.uleb128 0x17
	.string	"channelServProvider"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x2c3d
	.byte	0x9
	.uleb128 0x17
	.string	"resultSrcNr"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x87fd
	.byte	0xa
	.uleb128 0x17
	.string	"channelSrcNr"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x87fd
	.byte	0xb
	.uleb128 0x17
	.string	"channelId"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x7ec3
	.byte	0xc
	.uleb128 0x18
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x84ad
	.byte	0xd
	.uleb128 0x17
	.string	"reference"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x7f2d
	.byte	0xe
	.uleb128 0x17
	.string	"resultRegister"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x81b1
	.byte	0xf
	.uleb128 0x17
	.string	"lowerBoundary"
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x7dd0
	.byte	0x10
	.uleb128 0x17
	.string	"upperBoundary"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x7dd0
	.byte	0x11
	.uleb128 0x17
	.string	"boundaryMode"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x7d18
	.byte	0x12
	.uleb128 0x17
	.string	"limitCheck"
	.byte	0x4
	.uahalf	0x1dd
	.uaword	0x8558
	.byte	0x13
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x8f2c
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ChannelConfig"
	.byte	0x4
	.uahalf	0x1df
	.uaword	0x8f53
	.uleb128 0x1f
	.byte	0x24
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x91dc
	.uleb128 0x17
	.string	"vadc"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x7961
	.byte	0
	.uleb128 0x17
	.string	"globalInputClass"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x91dc
	.byte	0x4
	.uleb128 0x17
	.string	"digitalFrequency"
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x2b7
	.byte	0x14
	.uleb128 0x17
	.string	"analogFrequency"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x2b7
	.byte	0x18
	.uleb128 0x17
	.string	"moduleFrequency"
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x2b7
	.byte	0x1c
	.uleb128 0x17
	.string	"startupCalibration"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x2d9
	.byte	0x20
	.uleb128 0x17
	.string	"supplyVoltage"
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x85c5
	.byte	0x21
	.byte	0
	.uleb128 0x3
	.uaword	0x8da5
	.uaword	0x91ec
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_Config"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x912b
	.uleb128 0x1f
	.byte	0x38
	.byte	0x4
	.uahalf	0x203
	.uaword	0x92c7
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x205
	.uaword	0x92c7
	.byte	0
	.uleb128 0x17
	.string	"groupId"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x2d2c
	.byte	0x4
	.uleb128 0x17
	.string	"master"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x2d2c
	.byte	0x5
	.uleb128 0x18
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x208
	.uaword	0x91dc
	.byte	0x8
	.uleb128 0x17
	.string	"scanRequest"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x8ed2
	.byte	0x18
	.uleb128 0x17
	.string	"queueRequest"
	.byte	0x4
	.uahalf	0x20a
	.uaword	0x8e68
	.byte	0x20
	.uleb128 0x17
	.string	"backgroundScanRequest"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x8d4a
	.byte	0x28
	.uleb128 0x17
	.string	"disablePostCalibration"
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x2d9
	.byte	0x30
	.uleb128 0x17
	.string	"arbiter"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x8cd4
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x92cd
	.uleb128 0x20
	.uaword	0x8ba7
	.uleb128 0x12
	.string	"IfxVadc_Adc_GroupConfig"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x9207
	.uleb128 0x21
	.uahalf	0x600
	.byte	0xc
	.byte	0x1d
	.uaword	0x930e
	.uleb128 0xa
	.string	"adcResult"
	.byte	0xc
	.byte	0x1e
	.uaword	0x930e
	.byte	0
	.byte	0
	.uleb128 0x3
	.uaword	0x2a9
	.uaword	0x9324
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x2
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.string	"IR_LineScan_t"
	.byte	0xc
	.byte	0x1f
	.uaword	0x92f2
	.uleb128 0x22
	.string	"CAM_INFORMATION"
	.uahalf	0x204
	.byte	0xc
	.byte	0x3f
	.uaword	0x9374
	.uleb128 0xa
	.string	"cam_scan"
	.byte	0xc
	.byte	0x40
	.uaword	0x9374
	.byte	0
	.uleb128 0x23
	.string	"center"
	.byte	0xc
	.byte	0x41
	.uaword	0x20e
	.uahalf	0x200
	.byte	0
	.uleb128 0x3
	.uaword	0x20e
	.uaword	0x9384
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.string	"cam_information"
	.byte	0xc
	.byte	0x42
	.uaword	0x9339
	.uleb128 0x8
	.byte	0x28
	.byte	0x1
	.byte	0x21
	.uaword	0x93d5
	.uleb128 0xa
	.string	"vadc"
	.byte	0x1
	.byte	0x23
	.uaword	0x8ba7
	.byte	0
	.uleb128 0xa
	.string	"adcGroup"
	.byte	0x1
	.byte	0x24
	.uaword	0x8e00
	.byte	0x4
	.uleb128 0xa
	.string	"adcChannel"
	.byte	0x1
	.byte	0x25
	.uaword	0x93d5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.uaword	0x8f37
	.uaword	0x93e5
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"Basic_VadcAutoScan"
	.byte	0x1
	.byte	0x26
	.uaword	0x939b
	.uleb128 0x24
	.string	"IfxVadc_getResult"
	.byte	0x3
	.uahalf	0x7f0
	.byte	0x1
	.uaword	0x6ab3
	.byte	0x3
	.uaword	0x9450
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x3
	.uahalf	0x7f0
	.uaword	0x8dfa
	.uleb128 0x26
	.string	"resultIdx"
	.byte	0x3
	.uahalf	0x7f0
	.uaword	0x2a9
	.uleb128 0x27
	.string	"tmpResult"
	.byte	0x3
	.uahalf	0x7f2
	.uaword	0x6ab3
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_Adc_getResult"
	.byte	0x4
	.uahalf	0x4d1
	.byte	0x1
	.uaword	0x6ab3
	.byte	0x3
	.uaword	0x9485
	.uleb128 0x26
	.string	"channel"
	.byte	0x4
	.uahalf	0x4d1
	.uaword	0x9485
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8f37
	.uleb128 0x28
	.string	"IfxVadc_Adc_setScan"
	.byte	0x4
	.uahalf	0x4ef
	.byte	0x1
	.byte	0x3
	.uaword	0x94cf
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x94cf
	.uleb128 0x25
	.uaword	.LASF42
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x2a9
	.uleb128 0x26
	.string	"mask"
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x2a9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8e00
	.uleb128 0x28
	.string	"IfxVadc_startScan"
	.byte	0x3
	.uahalf	0x96d
	.byte	0x1
	.byte	0x3
	.uaword	0x94fe
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x3
	.uahalf	0x96d
	.uaword	0x8dfa
	.byte	0
	.uleb128 0x28
	.string	"IfxVadc_Adc_startScan"
	.byte	0x4
	.uahalf	0x501
	.byte	0x1
	.byte	0x3
	.uaword	0x952b
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x501
	.uaword	0x94cf
	.byte	0
	.uleb128 0x28
	.string	"IfxPort_setPinState"
	.byte	0x2
	.uahalf	0x23c
	.byte	0x1
	.byte	0x3
	.uaword	0x9572
	.uleb128 0x26
	.string	"port"
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x26c6
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x280
	.uleb128 0x26
	.string	"action"
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x2ba3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"GetCountPassedObject"
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x20e
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"SetCountPassedObject"
	.byte	0x1
	.uahalf	0x24e
	.byte	0x1
	.byte	0x1
	.uaword	0x95be
	.uleb128 0x26
	.string	"cpo"
	.byte	0x1
	.uahalf	0x24e
	.uaword	0x20e
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"SetDottedLine"
	.byte	0x1
	.uahalf	0x254
	.byte	0x1
	.byte	0x1
	.uaword	0x95e3
	.uleb128 0x26
	.string	"dl"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x20e
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x98fa
	.uleb128 0x2c
	.string	"chnIx"
	.byte	0x1
	.byte	0xac
	.uaword	0x2a9
	.uaword	.LLST0
	.uleb128 0x2d
	.string	"idx"
	.byte	0x1
	.byte	0xad
	.uaword	0x2a9
	.byte	0x1
	.byte	0x58
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xaf
	.uaword	0x964f
	.uleb128 0x2f
	.uaword	0x9562
	.byte	0x1
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST1
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB65
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xb0
	.uaword	0x967a
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST2
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB73
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xb3
	.uaword	0x96a2
	.uleb128 0x2f
	.uaword	0x9562
	.byte	0x1
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST3
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xc0
	.uaword	0x96cd
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST4
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB85
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xb4
	.uaword	0x96f5
	.uleb128 0x2f
	.uaword	0x9562
	.byte	0x1
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST5
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xb0
	.uaword	0x976b
	.uleb128 0x2c
	.string	"conversionResult"
	.byte	0x1
	.byte	0xcc
	.uaword	0x6ab3
	.uaword	.LLST6
	.uleb128 0x34
	.uaword	0x9450
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x1
	.byte	0xd0
	.uleb128 0x31
	.uaword	0x9474
	.uaword	.LLST7
	.uleb128 0x31
	.uaword	0x9474
	.uaword	.LLST7
	.uleb128 0x35
	.uaword	0x93ff
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x4
	.uahalf	0x4d3
	.uleb128 0x31
	.uaword	0x942b
	.uaword	.LLST9
	.uleb128 0x30
	.uaword	0x941f
	.uleb128 0x36
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x37
	.uaword	0x943d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB95
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xb7
	.uaword	0x9796
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST10
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB101
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0xb8
	.uaword	0x97be
	.uleb128 0x2f
	.uaword	0x9562
	.byte	0x1
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST11
	.byte	0
	.uleb128 0x38
	.uaword	0x94fe
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.byte	0xba
	.uaword	0x97f8
	.uleb128 0x39
	.uaword	0x951e
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x35
	.uaword	0x94d5
	.uaword	.LBB106
	.uaword	.LBE106
	.byte	0x4
	.uahalf	0x503
	.uleb128 0x31
	.uaword	0x94f1
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB110
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0xc1
	.uaword	0x9823
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST13
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xc4
	.uaword	0x984e
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0xc5
	.uaword	0x9876
	.uleb128 0x2f
	.uaword	0x9562
	.byte	0x1
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST15
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB123
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0xdb
	.uaword	0x98a1
	.uleb128 0x31
	.uaword	0x9562
	.uaword	.LLST16
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST17
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB131
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0xdc
	.uaword	0x98cc
	.uleb128 0x31
	.uaword	0x9562
	.uaword	.LLST18
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST19
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL5
	.uaword	0xa76e
	.uleb128 0x3a
	.uaword	.LVL10
	.uaword	0xa76e
	.uleb128 0x3a
	.uaword	.LVL15
	.uaword	0xa76e
	.uleb128 0x3a
	.uaword	.LVL22
	.uaword	0xa76e
	.uleb128 0x3a
	.uaword	.LVL27
	.uaword	0xa76e
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"CopyPrevLine"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x994b
	.uleb128 0x3b
	.uaword	.LASF43
	.byte	0x1
	.byte	0xeb
	.uaword	0x994b
	.byte	0x1
	.byte	0x64
	.uleb128 0x3c
	.string	"_prev_info"
	.byte	0x1
	.byte	0xeb
	.uaword	0x9384
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xec
	.uaword	0x20e
	.uaword	.LLST20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9384
	.uleb128 0x3d
	.byte	0x1
	.string	"GetMedian"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x99ae
	.uleb128 0x3c
	.string	"_array"
	.byte	0x1
	.byte	0xf2
	.uaword	0x99ae
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xf3
	.uaword	0x20e
	.uaword	.LLST21
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0xf3
	.uaword	0x20e
	.uaword	.LLST22
	.uleb128 0x2c
	.string	"temp"
	.byte	0x1
	.byte	0xf3
	.uaword	0x20e
	.uaword	.LLST23
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x20e
	.uleb128 0x3e
	.byte	0x1
	.string	"GetMedianCenter"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9a2d
	.uleb128 0x3f
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x100
	.uaword	0x994b
	.uaword	.LLST24
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20e
	.uaword	.LLST25
	.uleb128 0x40
	.string	"j"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20e
	.uaword	.LLST26
	.uleb128 0x40
	.string	"temp"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20e
	.uaword	.LLST27
	.uleb128 0x41
	.string	"_array"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x9a2d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.uaword	0x20e
	.uaword	0x9a3d
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x4
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Stretching"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9aab
	.uleb128 0x43
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x113
	.uaword	0x9aab
	.byte	0x1
	.byte	0x64
	.uleb128 0x44
	.string	"_max"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x20e
	.uaword	.LLST28
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x20e
	.uaword	.LLST29
	.uleb128 0x40
	.string	"max"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x20e
	.uaword	.LLST30
	.uleb128 0x40
	.string	"min"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x20e
	.uaword	.LLST31
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9374
	.uleb128 0x42
	.byte	0x1
	.string	"MedianFiltering"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	.LFB583
	.uaword	.LFE583
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9b32
	.uleb128 0x3f
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x9aab
	.uaword	.LLST32
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x20e
	.uaword	.LLST33
	.uleb128 0x40
	.string	"j"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x20e
	.uaword	.LLST34
	.uleb128 0x40
	.string	"t"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x20e
	.uaword	.LLST35
	.uleb128 0x41
	.string	"array"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x9a2d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.uaword	.LVL78
	.uaword	0x9951
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Sharpening"
	.byte	0x1
	.uahalf	0x127
	.byte	0x1
	.uaword	.LFB584
	.uaword	.LFE584
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9bc3
	.uleb128 0x43
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x127
	.uaword	0x9aab
	.byte	0x1
	.byte	0x64
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x20e
	.uaword	.LLST36
	.uleb128 0x40
	.string	"j"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x20e
	.uaword	.LLST37
	.uleb128 0x40
	.string	"minus"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x20e
	.uaword	.LLST38
	.uleb128 0x40
	.string	"add"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x20e
	.uaword	.LLST39
	.uleb128 0x40
	.string	"square"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x20e
	.uaword	.LLST40
	.uleb128 0x41
	.string	"temp"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x9374
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IsNoise"
	.byte	0x1
	.uahalf	0x13f
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB585
	.uaword	.LFE585
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9c13
	.uleb128 0x43
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x994b
	.byte	0x1
	.byte	0x64
	.uleb128 0x40
	.string	"noise"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x20e
	.uaword	.LLST41
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x20e
	.uaword	.LLST42
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"Camera_Initialization"
	.byte	0x1
	.uahalf	0x14a
	.uaword	.LFB586
	.uaword	.LFE586
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9c8c
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x20e
	.uaword	.LLST43
	.uleb128 0x40
	.string	"j"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x20e
	.uaword	.LLST44
	.uleb128 0x48
	.uaword	0x9591
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x158
	.uaword	0x9c74
	.uleb128 0x2f
	.uaword	0x95b1
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x95be
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x159
	.uleb128 0x2f
	.uaword	0x95d7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	.LFB577
	.uaword	.LFE577
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9fc7
	.uleb128 0x2d
	.string	"adcConfig"
	.byte	0x1
	.byte	0x4a
	.uaword	0x91ec
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"adcGroupConfig"
	.byte	0x1
	.byte	0x51
	.uaword	0x92d2
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.string	"chnIx"
	.byte	0x1
	.byte	0x65
	.uaword	0x2a9
	.uaword	.LLST45
	.uleb128 0x49
	.uaword	.LASF42
	.byte	0x1
	.byte	0x66
	.uaword	0x215
	.uaword	.LLST46
	.uleb128 0x2c
	.string	"mask"
	.byte	0x1
	.byte	0x67
	.uaword	0x215
	.uaword	.LLST46
	.uleb128 0x2d
	.string	"adcChannelConfig"
	.byte	0x1
	.byte	0x69
	.uaword	0x9fc7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.uaword	0x948b
	.uaword	.LBB140
	.uaword	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x78
	.uaword	0x9d69
	.uleb128 0x39
	.uaword	0x94a9
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x31
	.uaword	0x94c1
	.uaword	.LLST48
	.uleb128 0x31
	.uaword	0x94b5
	.uaword	.LLST48
	.uleb128 0x3a
	.uaword	.LVL121
	.uaword	0xa787
	.byte	0
	.uleb128 0x2e
	.uaword	0x948b
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.byte	0x85
	.uaword	0x9db5
	.uleb128 0x39
	.uaword	0x94a9
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x31
	.uaword	0x94c1
	.uaword	.LLST50
	.uleb128 0x31
	.uaword	0x94b5
	.uaword	.LLST50
	.uleb128 0x45
	.uaword	.LVL125
	.uaword	0xa787
	.uleb128 0x46
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.uleb128 0x46
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x948b
	.uaword	.LBB148
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0x92
	.uaword	0x9e01
	.uleb128 0x39
	.uaword	0x94a9
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x31
	.uaword	0x94c1
	.uaword	.LLST52
	.uleb128 0x31
	.uaword	0x94b5
	.uaword	.LLST52
	.uleb128 0x45
	.uaword	.LVL130
	.uaword	0xa787
	.uleb128 0x46
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.uleb128 0x46
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB152
	.uaword	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.byte	0x9b
	.uaword	0x9e2c
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST54
	.byte	0
	.uleb128 0x2e
	.uaword	0x952b
	.uaword	.LBB158
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.byte	0x9f
	.uaword	0x9e57
	.uleb128 0x32
	.uaword	0x9562
	.uaword	0x10000
	.uleb128 0x30
	.uaword	0x9556
	.uleb128 0x31
	.uaword	0x9549
	.uaword	.LLST55
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL114
	.uaword	0xa7b2
	.uaword	0x9e76
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.byte	0x11
	.sleb128 -268304384
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL115
	.uaword	0xa7eb
	.uaword	0x9e91
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL116
	.uaword	0xa82d
	.uaword	0x9eac
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL117
	.uaword	0xa865
	.uaword	0x9ec7
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL118
	.uaword	0xa8a0
	.uaword	0x9ee2
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL119
	.uaword	0xa8da
	.uaword	0x9efd
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL122
	.uaword	0xa8a0
	.uaword	0x9f17
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL123
	.uaword	0xa8da
	.uaword	0x9f31
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 24
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL127
	.uaword	0xa8a0
	.uaword	0x9f4b
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL128
	.uaword	0xa8da
	.uaword	0x9f65
	.uleb128 0x46
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 32
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL131
	.uaword	0xa917
	.uleb128 0x4a
	.uaword	.LVL132
	.uaword	0xa926
	.uaword	0x9f82
	.uleb128 0x46
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL133
	.uaword	0xa954
	.uaword	0x9f95
	.uleb128 0x46
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL137
	.uaword	0xa926
	.uaword	0x9fa9
	.uleb128 0x46
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL138
	.uaword	0xa954
	.uaword	0x9fbc
	.uleb128 0x46
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL141
	.byte	0x1
	.uaword	0x9c13
	.byte	0
	.uleb128 0x3
	.uaword	0x9109
	.uaword	0x9fd7
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x2
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"FindCenter"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB588
	.uaword	.LFE588
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa084
	.uleb128 0x43
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x9aab
	.byte	0x1
	.byte	0x64
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x20e
	.uaword	.LLST56
	.uleb128 0x40
	.string	"index"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x20e
	.uaword	.LLST57
	.uleb128 0x40
	.string	"leftIndex"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x20e
	.uaword	.LLST58
	.uleb128 0x40
	.string	"rightIndex"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x20e
	.uaword	.LLST59
	.uleb128 0x4c
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x20e
	.uaword	.LLST60
	.uleb128 0x4d
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x20e
	.byte	0
	.uleb128 0x4e
	.uaword	0x9572
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.uahalf	0x1d6
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"FindOneLine"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB589
	.uaword	.LFE589
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa10b
	.uleb128 0x4f
	.string	"line"
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x99ae
	.byte	0x1
	.byte	0x64
	.uleb128 0x4f
	.string	"dir"
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x20e
	.uaword	.LLST61
	.uleb128 0x4c
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x20e
	.uaword	.LLST62
	.uleb128 0x4c
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x20e
	.uaword	.LLST63
	.uleb128 0x40
	.string	"lineIndex"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x20e
	.uaword	.LLST64
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"GetCameraCenter"
	.byte	0x1
	.uahalf	0x15c
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB587
	.uaword	.LFE587
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa31a
	.uleb128 0x44
	.string	"prevServo"
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x20e
	.uaword	.LLST65
	.uleb128 0x44
	.string	"cntDiff"
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x20e
	.uaword	.LLST66
	.uleb128 0x40
	.string	"result"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x20e
	.uaword	.LLST67
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x20e
	.uaword	.LLST68
	.uleb128 0x40
	.string	"j"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x20e
	.uaword	.LLST69
	.uleb128 0x40
	.string	"medianLeftCenter"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x20e
	.uaword	.LLST70
	.uleb128 0x40
	.string	"medianRightCenter"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x20e
	.uaword	.LLST71
	.uleb128 0x40
	.string	"isLeftNoise"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x20e
	.uaword	.LLST72
	.uleb128 0x40
	.string	"isRightNoise"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x20e
	.uaword	.LLST73
	.uleb128 0x4a
	.uaword	.LVL195
	.uaword	0x9a3d
	.uaword	0xa20e
	.uleb128 0x46
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1000
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL196
	.uaword	0x9ab1
	.uleb128 0x3a
	.uaword	.LVL197
	.uaword	0x9b32
	.uleb128 0x4a
	.uaword	.LVL198
	.uaword	0x9a3d
	.uaword	0xa240
	.uleb128 0x46
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x186a0
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL200
	.uaword	0x9fd7
	.uaword	0xa254
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL201
	.uaword	0xa084
	.uaword	0xa274
	.uleb128 0x46
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa14
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL202
	.uaword	0xa084
	.uaword	0xa293
	.uleb128 0x46
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1428
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL210
	.uaword	0x99b4
	.uaword	0xa2a7
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL212
	.uaword	0x99b4
	.uaword	0xa2bb
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL214
	.uaword	0x9bc3
	.uaword	0xa2cf
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL216
	.uaword	0x9bc3
	.uaword	0xa2e3
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL230
	.uaword	0x98fa
	.uaword	0xa300
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1428
	.byte	0
	.uleb128 0x45
	.uaword	.LVL232
	.uaword	0x98fa
	.uleb128 0x46
	.byte	0x1
	.byte	0x64
	.byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa14
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"CheckLimitZone"
	.byte	0x1
	.uahalf	0x21e
	.byte	0x1
	.uaword	.LFB590
	.uaword	.LFE590
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa393
	.uleb128 0x44
	.string	"nowState"
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x20e
	.uaword	.LLST74
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x20e
	.uaword	.LLST75
	.uleb128 0x40
	.string	"countiousLineCnt"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x20e
	.uaword	.LLST76
	.uleb128 0x40
	.string	"lineCnt"
	.byte	0x1
	.uahalf	0x221
	.uaword	0x20e
	.uaword	.LLST77
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IsLimitZone"
	.byte	0x1
	.uahalf	0x243
	.uaword	0x20e
	.uaword	.LFB591
	.uaword	.LFE591
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x50
	.byte	0x1
	.string	"GetDashLine"
	.byte	0x1
	.uahalf	0x247
	.uaword	0x20e
	.uaword	.LFB592
	.uaword	.LFE592
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x51
	.uaword	0x9572
	.uaword	.LFB593
	.uaword	.LFE593
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x52
	.uaword	0x9591
	.uaword	.LFB594
	.uaword	.LFE594
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa3ff
	.uleb128 0x39
	.uaword	0x95b1
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"GetDottedLine"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x20e
	.uaword	.LFB595
	.uaword	.LFE595
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x52
	.uaword	0x95be
	.uaword	.LFB596
	.uaword	.LFE596
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa43d
	.uleb128 0x39
	.uaword	0x95d7
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.uaword	0x348
	.uaword	0xa44d
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x2
	.byte	0
	.uleb128 0x53
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0xa46a
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0xa43d
	.uleb128 0x53
	.string	"Assert_verboseLevel"
	.byte	0xd
	.byte	0x79
	.uaword	0x2a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"IfxPort_P14_0"
	.byte	0xe
	.byte	0x62
	.uaword	0x2bda
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"IfxPort_P14_1"
	.byte	0xe
	.byte	0x63
	.uaword	0x2bda
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.uaword	0x2fd
	.uaword	0xa4ca
	.uleb128 0x4
	.uaword	0x26c
	.byte	0xa
	.byte	0
	.uleb128 0x53
	.string	"TimeConst"
	.byte	0xf
	.byte	0x94
	.uaword	0xa4ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.string	"IR_LineScan"
	.byte	0x1
	.byte	0x2d
	.uaword	0x9324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_LineScan
	.uleb128 0x54
	.string	"g_VadcAutoScan"
	.byte	0x1
	.byte	0x2b
	.uaword	0x93e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_VadcAutoScan
	.uleb128 0x54
	.string	"FILTERED_CENTER_LINE"
	.byte	0x1
	.byte	0x3f
	.uaword	0x9374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FILTERED_CENTER_LINE
	.uleb128 0x54
	.string	"Zero_center_line"
	.byte	0x1
	.byte	0x40
	.uaword	0x9374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Zero_center_line
	.uleb128 0x54
	.string	"countPassedObject"
	.byte	0x1
	.byte	0x42
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	countPassedObject
	.uleb128 0x54
	.string	"dottedLine"
	.byte	0x1
	.byte	0x43
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	dottedLine
	.uleb128 0x3
	.uaword	0x9384
	.uaword	0xa5a5
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x2
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x4
	.byte	0
	.uleb128 0x54
	.string	"cam_info"
	.byte	0x1
	.byte	0xe1
	.uaword	0xa58f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cam_info
	.uleb128 0x54
	.string	"debugLine"
	.byte	0x1
	.byte	0xe2
	.uaword	0x9374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	debugLine
	.uleb128 0x3
	.uaword	0x20e
	.uaword	0xa5ea
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x2
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x7f
	.byte	0
	.uleb128 0x54
	.string	"speedLimitLine"
	.byte	0x1
	.byte	0xe2
	.uaword	0xa5d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speedLimitLine
	.uleb128 0x54
	.string	"nowIndex"
	.byte	0x1
	.byte	0xe3
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	nowIndex
	.uleb128 0x54
	.string	"cntTotal"
	.byte	0x1
	.byte	0xe4
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cntTotal
	.uleb128 0x54
	.string	"cntLeft"
	.byte	0x1
	.byte	0xe4
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cntLeft
	.uleb128 0x54
	.string	"isLimitZone"
	.byte	0x1
	.byte	0xe5
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	isLimitZone
	.uleb128 0x54
	.string	"dashLine"
	.byte	0x1
	.byte	0xe5
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	dashLine
	.uleb128 0x54
	.string	"leftIndexCount"
	.byte	0x1
	.byte	0xe6
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	leftIndexCount
	.uleb128 0x54
	.string	"rightIndexCount"
	.byte	0x1
	.byte	0xe6
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	rightIndexCount
	.uleb128 0x54
	.string	"zeroCnt"
	.byte	0x1
	.byte	0xe7
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	zeroCnt
	.uleb128 0x54
	.string	"g_cameraDirection"
	.byte	0x1
	.byte	0xe8
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_cameraDirection
	.uleb128 0x3
	.uaword	0x20e
	.uaword	0xa6fd
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x3
	.byte	0
	.uleb128 0x54
	.string	"cent"
	.byte	0x1
	.byte	0xe9
	.uaword	0xa6ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cent
	.uleb128 0x3
	.uaword	0x20e
	.uaword	0xa720
	.uleb128 0x4
	.uaword	0x26c
	.byte	0x1
	.byte	0
	.uleb128 0x55
	.string	"countWhite"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0xa710
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	countWhite
	.uleb128 0x55
	.string	"indexWhite"
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	indexWhite
	.uleb128 0x55
	.string	"limitCount"
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	limitCount
	.uleb128 0x56
	.byte	0x1
	.string	"waitTime"
	.byte	0xf
	.byte	0xaa
	.byte	0x1
	.byte	0x1
	.uaword	0xa787
	.uleb128 0x57
	.uaword	0x2fd
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_setScan"
	.byte	0x3
	.uahalf	0x39d
	.byte	0x1
	.byte	0x1
	.uaword	0xa7b2
	.uleb128 0x57
	.uaword	0x8dfa
	.uleb128 0x57
	.uaword	0x2a9
	.uleb128 0x57
	.uaword	0x2a9
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_Adc_initModuleConfig"
	.byte	0x4
	.uahalf	0x28c
	.byte	0x1
	.byte	0x1
	.uaword	0xa7e5
	.uleb128 0x57
	.uaword	0xa7e5
	.uleb128 0x57
	.uaword	0x7961
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x91ec
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_Adc_initModule"
	.byte	0x4
	.uahalf	0x282
	.byte	0x1
	.uaword	0x88ef
	.byte	0x1
	.uaword	0xa81c
	.uleb128 0x57
	.uaword	0xa81c
	.uleb128 0x57
	.uaword	0xa822
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8ba7
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa828
	.uleb128 0x20
	.uaword	0x91ec
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_Adc_initGroupConfig"
	.byte	0x4
	.uahalf	0x33d
	.byte	0x1
	.byte	0x1
	.uaword	0xa85f
	.uleb128 0x57
	.uaword	0xa85f
	.uleb128 0x57
	.uaword	0xa81c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x92d2
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_Adc_initGroup"
	.byte	0x4
	.uahalf	0x333
	.byte	0x1
	.uaword	0x88ef
	.byte	0x1
	.uaword	0xa895
	.uleb128 0x57
	.uaword	0x94cf
	.uleb128 0x57
	.uaword	0xa895
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa89b
	.uleb128 0x20
	.uaword	0x92d2
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_Adc_initChannelConfig"
	.byte	0x4
	.uahalf	0x388
	.byte	0x1
	.byte	0x1
	.uaword	0xa8d4
	.uleb128 0x57
	.uaword	0xa8d4
	.uleb128 0x57
	.uaword	0x8f2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9109
	.uleb128 0x59
	.byte	0x1
	.string	"IfxVadc_Adc_initChannel"
	.byte	0x4
	.uahalf	0x37e
	.byte	0x1
	.uaword	0x88ef
	.byte	0x1
	.uaword	0xa90c
	.uleb128 0x57
	.uaword	0x9485
	.uleb128 0x57
	.uaword	0xa90c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa912
	.uleb128 0x20
	.uaword	0x9109
	.uleb128 0x5a
	.byte	0x1
	.string	"initTime"
	.byte	0xf
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x2
	.uahalf	0x163
	.byte	0x1
	.byte	0x1
	.uaword	0xa954
	.uleb128 0x57
	.uaword	0x26c6
	.uleb128 0x57
	.uaword	0x280
	.uleb128 0x57
	.uaword	0x296c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x2
	.uahalf	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x57
	.uaword	0x26c6
	.uleb128 0x57
	.uaword	0x280
	.uleb128 0x57
	.uaword	0x2b21
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x34
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
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
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x48
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x53
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE578
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL31
	.uaword	.LVL36
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL41
	.uaword	.LFE578
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL29
	.uaword	.LVL34
	.uahalf	0x8
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL41
	.uahalf	0x8
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE578
	.uahalf	0x8
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0xf
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0xf
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE578
	.uahalf	0xf
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25
	.uaword	.LVL27-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LFE579
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE580
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53
	.uaword	.LFE581
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LFE581
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LFE581
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL61
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73
	.uaword	.LFE582
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL67
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL73
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL63
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL63
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL75
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LFE584
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL96
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL105
	.uaword	.LFE585
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL105
	.uaword	.LFE585
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LFE586
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL117
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LFE577
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL120
	.uaword	.LVL121-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL124
	.uaword	.LVL125-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125-1
	.uaword	.LVL126
	.uahalf	0x5
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL130-1
	.uaword	.LVL134
	.uahalf	0x5
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL120
	.uaword	.LVL121-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL124
	.uaword	.LVL125-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125-1
	.uaword	.LVL126
	.uahalf	0x5
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL129
	.uaword	.LVL130-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL130-1
	.uaword	.LVL134
	.uahalf	0x5
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL135
	.uaword	.LVL137-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL139
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL150
	.uaword	.LVL153
	.uahalf	0x6
	.byte	0x8
	.byte	0x45
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x6
	.byte	0x8
	.byte	0x46
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x6
	.byte	0x8
	.byte	0x45
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0x6
	.byte	0x8
	.byte	0x45
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LFE588
	.uahalf	0x6
	.byte	0x8
	.byte	0x45
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL142
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x3
	.byte	0x73
	.sleb128 55
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL159
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL168
	.uaword	.LFE588
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL142
	.uaword	.LVL150
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL164
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL168
	.uaword	.LFE588
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL142
	.uaword	.LVL150
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x3
	.byte	0x72
	.sleb128 55
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x3
	.byte	0x72
	.sleb128 55
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LFE588
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LFE589
	.uahalf	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL177
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL177
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL169
	.uaword	.LVL172
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL177
	.uaword	.LVL180
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL184
	.uaword	.LFE589
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL187
	.uaword	.LFE587
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL186
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL188
	.uaword	.LVL222
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL223
	.uaword	.LFE587
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL186
	.uaword	.LVL218
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0xe
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL222
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL228
	.uaword	.LFE587
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL186
	.uaword	.LVL189
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL194
	.uaword	.LVL198
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL232-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL186
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL186
	.uaword	.LVL211
	.uahalf	0x3
	.byte	0x8
	.byte	0x46
	.byte	0x9f
	.uaword	.LVL211
	.uaword	.LVL212-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL212-1
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x3
	.byte	0x8
	.byte	0x46
	.byte	0x9f
	.uaword	.LVL223
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL229
	.uaword	.LVL233
	.uahalf	0x3
	.byte	0x8
	.byte	0x46
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL234
	.uaword	.LFE587
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL186
	.uaword	.LVL213
	.uahalf	0x3
	.byte	0x8
	.byte	0x46
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL214-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL214-1
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x3
	.byte	0x8
	.byte	0x46
	.byte	0x9f
	.uaword	.LVL223
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL229
	.uaword	.LVL233
	.uahalf	0x3
	.byte	0x8
	.byte	0x46
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL235
	.uaword	.LFE587
	.uahalf	0x3
	.byte	0x79
	.sleb128 35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL186
	.uaword	.LVL215
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL215
	.uaword	.LVL216-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL216-1
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL229
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL186
	.uaword	.LVL216
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL236
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL241
	.uaword	.LFE590
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL241
	.uaword	.LVL243
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LFE590
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LFE590
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xb4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB578
	.uaword	.LFE578-.LFB578
	.uaword	.LFB579
	.uaword	.LFE579-.LFB579
	.uaword	.LFB580
	.uaword	.LFE580-.LFB580
	.uaword	.LFB581
	.uaword	.LFE581-.LFB581
	.uaword	.LFB582
	.uaword	.LFE582-.LFB582
	.uaword	.LFB583
	.uaword	.LFE583-.LFB583
	.uaword	.LFB584
	.uaword	.LFE584-.LFB584
	.uaword	.LFB585
	.uaword	.LFE585-.LFB585
	.uaword	.LFB586
	.uaword	.LFE586-.LFB586
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.uaword	.LFB588
	.uaword	.LFE588-.LFB588
	.uaword	.LFB589
	.uaword	.LFE589-.LFB589
	.uaword	.LFB587
	.uaword	.LFE587-.LFB587
	.uaword	.LFB590
	.uaword	.LFE590-.LFB590
	.uaword	.LFB591
	.uaword	.LFE591-.LFB591
	.uaword	.LFB592
	.uaword	.LFE592-.LFB592
	.uaword	.LFB593
	.uaword	.LFE593-.LFB593
	.uaword	.LFB594
	.uaword	.LFE594-.LFB594
	.uaword	.LFB595
	.uaword	.LFE595-.LFB595
	.uaword	.LFB596
	.uaword	.LFE596-.LFB596
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0
	.uaword	0
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	0
	.uaword	0
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	0
	.uaword	0
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	0
	.uaword	0
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0
	.uaword	0
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	0
	.uaword	0
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	0
	.uaword	0
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	0
	.uaword	0
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	0
	.uaword	0
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	0
	.uaword	0
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	0
	.uaword	0
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	0
	.uaword	0
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	0
	.uaword	0
	.uaword	.LFB578
	.uaword	.LFE578
	.uaword	.LFB579
	.uaword	.LFE579
	.uaword	.LFB580
	.uaword	.LFE580
	.uaword	.LFB581
	.uaword	.LFE581
	.uaword	.LFB582
	.uaword	.LFE582
	.uaword	.LFB583
	.uaword	.LFE583
	.uaword	.LFB584
	.uaword	.LFE584
	.uaword	.LFB585
	.uaword	.LFE585
	.uaword	.LFB586
	.uaword	.LFE586
	.uaword	.LFB577
	.uaword	.LFE577
	.uaword	.LFB588
	.uaword	.LFE588
	.uaword	.LFB589
	.uaword	.LFE589
	.uaword	.LFB587
	.uaword	.LFE587
	.uaword	.LFB590
	.uaword	.LFE590
	.uaword	.LFB591
	.uaword	.LFE591
	.uaword	.LFB592
	.uaword	.LFE592
	.uaword	.LFB593
	.uaword	.LFE593
	.uaword	.LFB594
	.uaword	.LFE594
	.uaword	.LFB595
	.uaword	.LFE595
	.uaword	.LFB596
	.uaword	.LFE596
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"MODNUMBER"
.LASF21:
	.string	"reserved_5"
.LASF18:
	.string	"reserved_6"
.LASF13:
	.string	"reserved_C"
.LASF43:
	.string	"_cam_info"
.LASF14:
	.string	"pinIndex"
.LASF40:
	.string	"group"
.LASF42:
	.string	"channels"
.LASF38:
	.string	"requestSlotPrio"
.LASF41:
	.string	"inputClass"
.LASF7:
	.string	"reserved_10"
.LASF29:
	.string	"reserved_11"
.LASF11:
	.string	"reserved_12"
.LASF22:
	.string	"reserved_13"
.LASF2:
	.string	"reserved_16"
.LASF20:
	.string	"reserved_17"
.LASF37:
	.string	"triggerConfig"
.LASF16:
	.string	"XTMODE"
.LASF19:
	.string	"RPTDIS"
.LASF8:
	.string	"reserved_20"
.LASF17:
	.string	"reserved_21"
.LASF27:
	.string	"reserved_22"
.LASF5:
	.string	"reserved_24"
.LASF34:
	.string	"reserved_25"
.LASF23:
	.string	"reserved_27"
.LASF9:
	.string	"reserved_28"
.LASF24:
	.string	"reserved_29"
.LASF36:
	.string	"reserved_1A0"
.LASF45:
	.string	"zeroCount"
.LASF30:
	.string	"REQCHNR"
.LASF46:
	.string	"whiteCount"
.LASF1:
	.string	"reserved_0"
.LASF33:
	.string	"reserved_1"
.LASF6:
	.string	"reserved_2"
.LASF28:
	.string	"reserved_3"
.LASF10:
	.string	"reserved_4"
.LASF12:
	.string	"reserved_7"
.LASF4:
	.string	"reserved_8"
.LASF31:
	.string	"reserved_9"
.LASF15:
	.string	"SRCRESREG"
.LASF0:
	.string	"module"
.LASF25:
	.string	"BOUNDARY0"
.LASF26:
	.string	"BOUNDARY1"
.LASF39:
	.string	"requestSlotStartMode"
.LASF35:
	.string	"reserved_144"
.LASF44:
	.string	"_line"
.LASF32:
	.string	"RESULT"
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	initTime,STT_FUNC,0
	.extern	IfxVadc_setScan,STT_FUNC,0
	.extern	IfxVadc_Adc_initChannel,STT_FUNC,0
	.extern	IfxVadc_Adc_initChannelConfig,STT_FUNC,0
	.extern	IfxVadc_Adc_initGroup,STT_FUNC,0
	.extern	IfxVadc_Adc_initGroupConfig,STT_FUNC,0
	.extern	IfxVadc_Adc_initModule,STT_FUNC,0
	.extern	IfxVadc_Adc_initModuleConfig,STT_FUNC,0
	.extern	waitTime,STT_FUNC,0
	.extern	TimeConst,STT_OBJECT,88
	.extern	IfxPort_P14_1,STT_OBJECT,8
	.extern	IfxPort_P14_0,STT_OBJECT,8
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
