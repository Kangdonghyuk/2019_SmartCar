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
	movh	%d13, hi:IfxPort_P14_0
	mov.a	%a2, %d13
.LBB61:
.LBB62:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
	.loc 2 574 0
	mov	%d15, 1
.LBE62:
.LBE61:
	.loc 1 175 0
	lea	%a14, [%a2] lo:IfxPort_P14_0
.LBB66:
.LBB63:
	.loc 2 574 0
	ld.bu	%d2, [%a14] 4
.LBE63:
.LBE66:
	.loc 1 175 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL0:
.LBB67:
.LBB64:
	.loc 2 574 0
	sh	%d15, %d15, %d2
.LBE64:
.LBE67:
	.loc 1 176 0
	movh	%d12, hi:IfxPort_P14_1
	.loc 1 177 0
	movh.a	%a12, hi:TimeConst
.LBB68:
.LBB65:
	.loc 2 574 0
	st.w	[%a15] 4, %d15
.LVL1:
.LBE65:
.LBE68:
	.loc 1 176 0
	mov.a	%a15, %d12
.LVL2:
.LBB69:
.LBB70:
	.loc 2 574 0
	movh	%d15, 1
.LBE70:
.LBE69:
	.loc 1 176 0
	lea	%a13, [%a15] lo:IfxPort_P14_1
.LBB74:
.LBB71:
	.loc 2 574 0
	ld.bu	%d2, [%a13] 4
.LBE71:
.LBE74:
	.loc 1 176 0
	ld.a	%a15, [%a15] lo:IfxPort_P14_1
.LVL3:
.LBB75:
.LBB72:
	.loc 2 574 0
	sh	%d2, %d15, %d2
.LBE72:
.LBE75:
	.loc 1 177 0
	lea	%a12, [%a12] lo:TimeConst
	movh	%d10, hi:g_VadcAutoScan
.LBB76:
.LBB73:
	.loc 2 574 0
	st.w	[%a15] 4, %d2
.LVL4:
.LBE73:
.LBE76:
	.loc 1 177 0
	ld.w	%d4, [%a12] 8
	ld.w	%d2, [%a12] 12
	mul.u	%e4, %d4, 5
	addi	%d10, %d10, lo:g_VadcAutoScan
	movh	%d11, hi:IR_LineScan
	madd	%d5, %d5, %d2, 5
	.loc 1 189 0
	mov	%d8, 0
	addi	%d11, %d11, lo:IR_LineScan
	.loc 1 177 0
	call	waitTime
.LVL5:
.LBB77:
.LBB78:
	.loc 2 574 0
	ld.bu	%d3, [%a14] 4
.LBE78:
.LBE77:
	.loc 1 179 0
	mov.a	%a2, %d13
.LBB82:
.LBB79:
	.loc 2 574 0
	mov	%d2, 1
.LBE79:
.LBE82:
	.loc 1 179 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL6:
.LBB83:
.LBB80:
	.loc 2 574 0
	sh	%d2, %d2, %d3
.LBE80:
.LBE83:
	.loc 1 180 0
	mov.a	%a2, %d12
.LBB84:
.LBB85:
	.loc 2 574 0
	movh	%d9, 1
.LBE85:
.LBE84:
.LBB88:
.LBB81:
	st.w	[%a15] 4, %d2
.LVL7:
.LBE81:
.LBE88:
.LBB89:
.LBB90:
	ld.bu	%d3, [%a13] 4
	mov	%d2, 1
.LBE90:
.LBE89:
	.loc 1 180 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_1
.LVL8:
.LBB92:
.LBB91:
	.loc 2 574 0
	sh	%d2, %d2, %d3
	st.w	[%a15] 4, %d2
.LVL9:
.LBE91:
.LBE92:
	.loc 1 181 0
	ld.w	%d4, [%a12] 8
	ld.w	%d2, [%a12] 12
	mul.u	%e4, %d4, 5
	madd	%d5, %d5, %d2, 5
	call	waitTime
.LVL10:
.LBB93:
.LBB94:
	.loc 2 574 0
	ld.bu	%d2, [%a14] 4
.LBE94:
.LBE93:
	.loc 1 183 0
	mov.a	%a2, %d13
.LBB97:
.LBB95:
	.loc 2 574 0
	sh	%d15, %d15, %d2
.LBE95:
.LBE97:
	.loc 1 183 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL11:
	.loc 1 184 0
	mov.a	%a2, %d12
.LBB98:
.LBB96:
	.loc 2 574 0
	st.w	[%a15] 4, %d15
.LVL12:
.LBE96:
.LBE98:
.LBB99:
.LBB100:
	ld.bu	%d2, [%a13] 4
	mov	%d15, 1
.LBE100:
.LBE99:
	.loc 1 184 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_1
.LVL13:
.LBB102:
.LBB101:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a15] 4, %d15
.LVL14:
.LBE101:
.LBE102:
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
.LBB103:
.LBB104:
.LBB105:
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Vadc/Std/IfxVadc.h"
	.loc 3 2415 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, 15, 9, 1
	st.w	[%a15] 164, %d15
.LVL17:
.L4:
.LBE105:
.LBE104:
.LBE103:
.LBB106:
.LBB86:
	.loc 2 574 0
	ld.bu	%d15, [%a14] 4
.LBE86:
.LBE106:
	.loc 1 192 0
	ld.a	%a15, [%a14]0
.LVL18:
.LBB107:
.LBB87:
	.loc 2 574 0
	sh	%d15, %d9, %d15
	st.w	[%a15] 4, %d15
.LVL19:
.LBE87:
.LBE107:
.LBB108:
.LBB109:
	ld.bu	%d15, [%a13] 4
.LBE109:
.LBE108:
	.loc 1 193 0
	ld.a	%a15, [%a13]0
.LVL20:
.LBB111:
.LBB110:
	.loc 2 574 0
	sh	%d15, %d9, %d15
	st.w	[%a15] 4, %d15
.LVL21:
.LBE110:
.LBE111:
	.loc 1 194 0
	ld.w	%d4, [%a12] 16
	ld.w	%d15, [%a12] 20
	mul.u	%e4, %d4, 3
	madd	%d5, %d5, %d15, 3
	call	waitTime
.LVL22:
.LBB112:
.LBB113:
	.loc 2 574 0
	ld.bu	%d15, [%a14] 4
.LBE113:
.LBE112:
	.loc 1 196 0
	ld.a	%a15, [%a14]0
.LVL23:
.LBB115:
.LBB114:
	.loc 2 574 0
	sh	%d15, %d9, %d15
	st.w	[%a15] 4, %d15
.LVL24:
.LBE114:
.LBE115:
.LBB116:
.LBB117:
	ld.bu	%d2, [%a13] 4
	mov	%d15, 1
.LBE117:
.LBE116:
	.loc 1 197 0
	ld.a	%a15, [%a13]0
.LVL25:
.LBB119:
.LBB118:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a15] 4, %d15
.LVL26:
.LBE118:
.LBE119:
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
.L3:
	mov.a	%a15, %d10
	add	%d15, %d3, 2
	addsc.a	%a2, %a15, %d15, 3
	ld.a	%a15, [%a2] 4
	ld.bu	%d15, [%a2] 1
	ld.a	%a3, [%a15] 4
	addi	%d15, %d15, 160
.LBB120:
.LBB121:
.LBB122:
.LBB123:
	.loc 3 2036 0
	addsc.a	%a15, %a3, %d15, 2
.L2:
.LVL29:
	.loc 3 2036 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL30:
	extr.u	%d2, %d15, 0, 16
.LVL31:
.LBE123:
.LBE122:
.LBE121:
	.loc 1 209 0 is_stmt 1 discriminator 1
	jgez	%d15, .L2
	.loc 1 211 0
	madd	%d15, %d8, %d3, 128
.LVL32:
	mov.a	%a2, %d11
.LVL33:
.LBE120:
	.loc 1 201 0
	add	%d3, 1
.LVL34:
.LBB124:
	.loc 1 211 0
	addsc.a	%a15, %a2, %d15, 2
	st.w	[%a15]0, %d2
.LBE124:
	.loc 1 201 0
	jne	%d3, 3, .L3
	.loc 1 189 0 discriminator 2
	add	%d8, 1
.LVL35:
	ne	%d15, %d8, 128
	jnz	%d15, .L4
.LBB125:
.LBB126:
	.loc 2 574 0
	ld.bu	%d2, [%a14] 4
.LVL36:
.LBE126:
.LBE125:
	.loc 1 216 0
	mov.a	%a2, %d13
.LBB130:
.LBB127:
	.loc 2 574 0
	movh	%d15, 1
.LBE127:
.LBE130:
	.loc 1 216 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_0
.LVL37:
.LBB131:
.LBB128:
	.loc 2 574 0
	sh	%d2, %d15, %d2
.LBE128:
.LBE131:
	.loc 1 217 0
	mov.a	%a2, %d12
.LBB132:
.LBB129:
	.loc 2 574 0
	st.w	[%a15] 4, %d2
.LVL38:
.LBE129:
.LBE132:
.LBB133:
.LBB134:
	ld.bu	%d2, [%a13] 4
.LBE134:
.LBE133:
	.loc 1 217 0
	ld.a	%a15, [%a2] lo:IfxPort_P14_1
.LVL39:
.LBB136:
.LBB135:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a15] 4, %d15
.LVL40:
	ret
.LBE135:
.LBE136:
.LFE578:
	.size	BasicLineScan_run, .-BasicLineScan_run
.section .text.CopyPrevLine,"ax",@progbits
	.align 1
	.global	CopyPrevLine
	.type	CopyPrevLine, @function
CopyPrevLine:
.LFB579:
	.loc 1 231 0
.LVL41:
	lea	%SP, [%SP] -520
.LCFI0:
	.loc 1 231 0
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
.LVL42:
	.loc 1 233 0
	mov	%d15, 0
	lea	%a15, 127
.LVL43:
.L11:
	.loc 1 234 0 discriminator 3
	sh	%d2, %d15, 2
	mov.a	%a2, %d2
	.loc 1 233 0 discriminator 3
	add	%d15, 1
.LVL44:
	.loc 1 234 0 discriminator 3
	add.a	%a3, %a4, %a2
	add.a	%a2, %a6
	ld.w	%d2, [%a2]0
	st.w	[%a3]0, %d2
	.loc 1 233 0 discriminator 3
	loop	%a15, .L11
	.loc 1 235 0
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
	.loc 1 238 0
.LVL45:
	mov.aa	%a3, %a4
	.loc 1 240 0
	mov	%d3, 0
	mov.a	%a5, 4
.LVL46:
.L14:
	.loc 1 238 0
	rsub	%d15, %d3, 4
	mov.a	%a15, %d15
	mov.aa	%a2, %a3
.LVL47:
.L16:
	.loc 1 242 0
	ld.w	%d15, [%a3]0
	ld.w	%d2, [%a2]0
	jge	%d2, %d15, .L15
.LVL48:
	.loc 1 244 0
	st.w	[%a3]0, %d2
	.loc 1 245 0
	st.w	[%a2]0, %d15
.LVL49:
.L15:
	add.a	%a2, 4
	loop	%a15, .L16
	.loc 1 240 0 discriminator 2
	add	%d3, 1
.LVL50:
	add.a	%a3, 4
	loop	%a5, .L14
	.loc 1 250 0
	ld.w	%d2, [%a4] 8
	ret
.LFE580:
	.size	GetMedian, .-GetMedian
.section .text.Stretching,"ax",@progbits
	.align 1
	.global	Stretching
	.type	Stretching, @function
Stretching:
.LFB581:
	.loc 1 252 0
.LVL51:
	.loc 1 253 0
	ld.w	%d6, [%a4]0
.LVL52:
	.loc 1 255 0
	mov	%d5, 0
	.loc 1 253 0
	mov	%d2, %d6
	mov	%d15, %d6
	mov	%d3, %d6
	.loc 1 255 0
	lea	%a15, 127
.LVL53:
.L24:
	.loc 1 256 0 discriminator 3
	max	%d3, %d3, %d2
.LVL54:
	.loc 1 257 0 discriminator 3
	min	%d15, %d15, %d2
.LVL55:
	.loc 1 255 0 discriminator 3
	add	%d5, 1
.LVL56:
	loop	%a15, .L28
.LVL57:
	sub	%d3, %d15
.LVL58:
	itof	%d3, %d3
	itof	%d4, %d4
.LVL59:
	.loc 1 255 0 is_stmt 0
	mov	%d2, 0
	div.f	%d4, %d4, %d3
	lea	%a15, 127
	mov	%d3, %d6
.LVL60:
.L26:
	.loc 1 260 0 is_stmt 1 discriminator 3
	sub	%d3, %d15
	itof	%d3, %d3
	addsc.a	%a2, %a4, %d2, 2
	mul.f	%d3, %d3, %d4
	.loc 1 259 0 discriminator 3
	add	%d2, 1
.LVL61:
	.loc 1 260 0 discriminator 3
	ftoiz	%d3, %d3
	st.w	[%a2]0, %d3
	.loc 1 259 0 discriminator 3
	loop	%a15, .L27
	ret
.LVL62:
.L28:
	addsc.a	%a2, %a4, %d5, 2
	ld.w	%d2, [%a2]0
	j	.L24
.LVL63:
.L27:
	ld.w	%d3, [%a2] 4
	j	.L26
.LFE581:
	.size	Stretching, .-Stretching
.section .text.MedianFiltering,"ax",@progbits
	.align 1
	.global	MedianFiltering
	.type	MedianFiltering, @function
MedianFiltering:
.LFB582:
	.loc 1 263 0
.LVL64:
	sub.a	%SP, 24
.LCFI1:
	.loc 1 263 0
	mov.aa	%a12, %a4
	.loc 1 266 0
	mov	%d8, 2
.LVL65:
.L33:
	.loc 1 263 0
	mov	%d15, 0
	mov.a	%a15, 4
.LVL66:
.L34:
	.loc 1 268 0 discriminator 3
	add	%d2, %d15, %d8
	lea	%a2, [%SP] 24
	addsc.a	%a3, %a2, %d15, 2
	addsc.a	%a2, %a12, %d2, 2
	.loc 1 267 0 discriminator 3
	add	%d15, 1
.LVL67:
	.loc 1 268 0 discriminator 3
	ld.w	%d2, [%a2] -8
	st.w	[%a3] -20, %d2
	.loc 1 267 0 discriminator 3
	loop	%a15, .L34
	.loc 1 269 0 discriminator 2
	addsc.a	%a15, %a12, %d8, 2
	lea	%a4, [%SP] 4
	call	GetMedian
.LVL68:
	.loc 1 266 0 discriminator 2
	add	%d8, 1
.LVL69:
	.loc 1 269 0 discriminator 2
	st.w	[%a15]0, %d2
	.loc 1 266 0 discriminator 2
	eq	%d15, %d8, 126
.LVL70:
	jz	%d15, .L33
	ret
.LFE582:
	.size	MedianFiltering, .-MedianFiltering
.section .text.Sharpening,"ax",@progbits
	.align 1
	.global	Sharpening
	.type	Sharpening, @function
Sharpening:
.LFB583:
	.loc 1 272 0
.LVL71:
	lea	%SP, [%SP] -512
.LCFI2:
	.loc 1 277 0
	mov	%d15, 0
	.loc 1 278 0
	mov	%d4, 4096
	lea	%a15, 127
.LVL72:
.L38:
	sh	%d3, %d15, 2
	addsc.a	%a2, %a4, %d3, 0
	.loc 1 279 0 discriminator 3
	lea	%a3, [%SP] 512
	.loc 1 278 0 discriminator 3
	ld.w	%d2, [%a2]0
	.loc 1 277 0 discriminator 3
	add	%d15, 1
.LVL73:
	.loc 1 278 0 discriminator 3
	sub	%d2, %d4, %d2
	st.w	[%a2]0, %d2
	.loc 1 279 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 0
	st.w	[%a2] -512, %d2
	.loc 1 277 0 discriminator 3
	loop	%a15, .L38
	mov	%d4, 3
	.loc 1 277 0 is_stmt 0
	lea	%a2, 121
.LVL74:
.L39:
	sh	%d6, %d4, 2
	.loc 1 287 0 is_stmt 1
	addsc.a	%a3, %a4, %d6, 0
	addi	%d2, %d4, -3
	.loc 1 277 0
	mov	%d15, -2
	mov	%d7, 0
	mov	%d5, 0
	mov	%d0, 0
.LVL75:
.L45:
	.loc 1 285 0
	jge.u	%d15, 3, .L52
.LVL76:
.L40:
	.loc 1 286 0
	andn	%d3, %d15, ~(-3)
	jnz	%d3, .L41
	.loc 1 286 0 is_stmt 0 discriminator 1
	addsc.a	%a15, %a4, %d2, 2
	ld.w	%d3, [%a15]0
	madd	%d5, %d5, %d3, 3
.LVL77:
.L41:
	.loc 1 287 0 is_stmt 1
	jeq	%d2, %d4, .L53
.LVL78:
	.loc 1 284 0 discriminator 2
	jeq	%d15, 4, .L54
.L43:
	add	%d15, 1
.LVL79:
	add	%d2, 1
	j	.L45
.LVL80:
.L54:
	.loc 1 289 0
	add	%d5, %d0
.LVL81:
	lea	%a5, [%SP] 512
	add	%d5, %d7
	addsc.a	%a15, %a5, %d6, 0
	.loc 1 282 0
	add	%d4, 1
.LVL82:
	.loc 1 289 0
	st.w	[%a15] -512, %d5
	.loc 1 282 0
	loop	%a2, .L39
	mov	%d15, 0
.LVL83:
	lea	%a15, 127
.LVL84:
.L44:
	.loc 1 293 0 discriminator 3
	sh	%d2, %d15, 2
	mov.a	%a2, %d2
	lea	%a5, [%SP] 512
	add.a	%a3, %a4, %a2
	add.a	%a2, %a5
	ld.w	%d2, [%a2] -512
	st.w	[%a3]0, %d2
	.loc 1 292 0 discriminator 3
	add	%d15, 1
.LVL85:
	loop	%a15, .L44
	.loc 1 294 0
	ret
.LVL86:
.L53:
	.loc 1 287 0 discriminator 1
	ld.w	%d3, [%a3]0
	madd	%d7, %d7, %d3, 6
.LVL87:
	j	.L43
.LVL88:
.L52:
	.loc 1 285 0 discriminator 1
	addsc.a	%a15, %a4, %d2, 2
	ld.w	%d3, [%a15]0
	mul	%d3, %d3, -3
	add	%d0, %d3
.LVL89:
	j	.L40
.LFE583:
	.size	Sharpening, .-Sharpening
.section .text.Camera_Initialization,"ax",@progbits
	.align 1
	.global	Camera_Initialization
	.type	Camera_Initialization, @function
Camera_Initialization:
.LFB584:
	.loc 1 296 0
.LVL90:
	movh.a	%a4, hi:cam_info
	.loc 1 298 0
	mov	%d6, 0
	lea	%a4, [%a4] lo:cam_info
	mov	%d7, 2580
	.loc 1 300 0
	mov	%d4, 516
	mov	%d5, 60
.LVL91:
.L56:
	mul	%d3, %d6, %d7
	.loc 1 296 0
	mov	%d15, 0
	.loc 1 300 0
	mov.a	%a15, 4
	addsc.a	%a2, %a4, %d3, 0
.LVL92:
.L57:
	.loc 1 300 0 is_stmt 0 discriminator 3
	madd	%d2, %d3, %d15, %d4
	.loc 1 299 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL93:
	.loc 1 300 0 discriminator 3
	addsc.a	%a3, %a4, %d2, 0
	st.w	[%a3] 512, %d5
	.loc 1 301 0 discriminator 3
	mov.aa	%a3, %a2
	mov	%e0, 0
	lea	%a5, 64-1
	0:
	st.d	[%a3+]8, %e0
	loop	%a5, 0b
	lea	%a2, [%a2] 516
	loop	%a15, .L57
	.loc 1 298 0 discriminator 2
	add	%d6, 1
.LVL94:
	jne	%d6, 3, .L56
	.loc 1 304 0
	movh.a	%a15, hi:FILTERED_CENTER_LINE
	.loc 1 306 0
	mov	%d15, 0
.LVL95:
	.loc 1 304 0
	lea	%a15, [%a15] lo:FILTERED_CENTER_LINE
	mov	%e0, 0
	lea	%a2, 64-1
	0:
	st.d	[%a15+]8, %e0
	loop	%a2, 0b
	.loc 1 306 0
	movh.a	%a15, hi:nowIndex
	st.w	[%a15] lo:nowIndex, %d15
	.loc 1 307 0
	movh.a	%a15, hi:cntTotal
	st.w	[%a15] lo:cntTotal, %d15
	.loc 1 308 0
	movh.a	%a15, hi:cntLeft
	st.w	[%a15] lo:cntLeft, %d15
.LVL96:
.LBB137:
.LBB138:
	.loc 1 606 0
	movh.a	%a15, hi:countPassedObject
	st.w	[%a15] lo:countPassedObject, %d15
.LVL97:
.LBE138:
.LBE137:
.LBB139:
.LBB140:
	.loc 1 612 0
	movh.a	%a15, hi:dottedLine
	st.w	[%a15] lo:dottedLine, %d15
	ret
.LBE140:
.LBE139:
.LFE584:
	.size	Camera_Initialization, .-Camera_Initialization
.section .text.BasicLineScan_init,"ax",@progbits
	.align 1
	.global	BasicLineScan_init
	.type	BasicLineScan_init, @function
BasicLineScan_init:
.LFB577:
	.loc 1 70 0
	sub.a	%SP, 168
.LCFI3:
	.loc 1 75 0
	lea	%a4, [%SP] 4
	movh.a	%a5, 61442
	.loc 1 78 0
	movh.a	%a15, hi:g_VadcAutoScan
	lea	%a15, [%a15] lo:g_VadcAutoScan
	.loc 1 75 0
	call	IfxVadc_Adc_initModuleConfig
.LVL98:
	.loc 1 78 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	call	IfxVadc_Adc_initModule
.LVL99:
	.loc 1 82 0
	mov.aa	%a5, %a15
	lea	%a4, [%SP] 40
	call	IfxVadc_Adc_initGroupConfig
.LVL100:
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
.LVL101:
	.loc 1 109 0
	mov.aa	%a5, %a12
	lea	%a4, [%SP] 96
	call	IfxVadc_Adc_initChannelConfig
.LVL102:
	.loc 1 115 0
	lea	%a4, [%a15] 16
	lea	%a5, [%SP] 96
	.loc 1 111 0
	st.b	[%SP] 108, %d15
	.loc 1 112 0
	st.b	[%SP] 111, %d15
	.loc 1 115 0
	call	IfxVadc_Adc_initChannel
.LVL103:
	.loc 1 118 0
	ld.b	%d2, [%SP] 108
.LBB141:
.LBB142:
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Vadc/Adc/IfxVadc_Adc.h"
	.loc 4 1265 0
	ld.a	%a4, [%a15] 8
.LBE142:
.LBE141:
	.loc 1 118 0
	mov	%d4, 1
	sh	%d4, %d4, %d2
.LVL104:
.LBB144:
.LBB143:
	.loc 4 1265 0
	mov	%d5, %d4
	call	IfxVadc_setScan
.LVL105:
.LBE143:
.LBE144:
	.loc 1 118 0
	mov	%d15, 1
	.loc 1 123 0
	mov.aa	%a5, %a12
	lea	%a4, [%SP] 120
	call	IfxVadc_Adc_initChannelConfig
.LVL106:
	.loc 1 128 0
	lea	%a4, [%a15] 24
	lea	%a5, [%SP] 120
	.loc 1 124 0
	st.b	[%SP] 132, %d15
	.loc 1 125 0
	st.b	[%SP] 135, %d15
	.loc 1 128 0
	call	IfxVadc_Adc_initChannel
.LVL107:
	.loc 1 131 0
	ld.b	%d2, [%SP] 132
.LBB145:
.LBB146:
	.loc 4 1265 0
	ld.a	%a4, [%a15] 8
.LBE146:
.LBE145:
	.loc 1 131 0
	mov	%d4, 1
	sh	%d4, %d4, %d2
.LVL108:
.LBB148:
.LBB147:
	.loc 4 1265 0
	mov	%d5, %d4
	call	IfxVadc_setScan
.LVL109:
.LBE147:
.LBE148:
	.loc 1 136 0
	mov.aa	%a5, %a12
	lea	%a4, [%SP] 144
	call	IfxVadc_Adc_initChannelConfig
.LVL110:
	.loc 1 141 0
	lea	%a5, [%SP] 144
	lea	%a4, [%a15] 32
	.loc 1 137 0
	st.b	[%SP] 156, %d15
	.loc 1 138 0
	st.b	[%SP] 159, %d15
	.loc 1 141 0
	call	IfxVadc_Adc_initChannel
.LVL111:
	.loc 1 144 0
	ld.b	%d15, [%SP] 156
.LBB149:
.LBB150:
	.loc 4 1265 0
	ld.a	%a4, [%a15] 8
.LBE150:
.LBE149:
	.loc 1 144 0
	mov	%d4, 1
	sh	%d4, %d4, %d15
.LVL112:
.LBB152:
.LBB151:
	.loc 4 1265 0
	mov	%d5, %d4
	call	IfxVadc_setScan
.LVL113:
.LBE151:
.LBE152:
	.loc 1 153 0
	movh.a	%a12, hi:IfxPort_P14_0
	.loc 1 151 0
	call	initTime
.LVL114:
	.loc 1 153 0
	lea	%a15, [%a12] lo:IfxPort_P14_0
	ld.a	%a4, [%a12] lo:IfxPort_P14_0
	ld.bu	%d4, [%a15] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL115:
	.loc 1 154 0
	ld.a	%a4, [%a12] lo:IfxPort_P14_0
	ld.bu	%d4, [%a15] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL116:
.LBB153:
.LBB154:
	.loc 2 574 0
	ld.bu	%d2, [%a15] 4
	movh	%d15, 1
.LVL117:
.LBE154:
.LBE153:
	.loc 1 155 0
	ld.a	%a2, [%a12] lo:IfxPort_P14_0
.LVL118:
.LBB157:
.LBB155:
	.loc 2 574 0
	sh	%d2, %d15, %d2
.LBE155:
.LBE157:
	.loc 1 157 0
	movh.a	%a12, hi:IfxPort_P14_1
	lea	%a15, [%a12] lo:IfxPort_P14_1
.LBB158:
.LBB156:
	.loc 2 574 0
	st.w	[%a2] 4, %d2
.LVL119:
.LBE156:
.LBE158:
	.loc 1 157 0
	ld.a	%a4, [%a12] lo:IfxPort_P14_1
	ld.bu	%d4, [%a15] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL120:
	.loc 1 158 0
	ld.a	%a4, [%a12] lo:IfxPort_P14_1
	ld.bu	%d4, [%a15] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL121:
.LBB159:
.LBB160:
	.loc 2 574 0
	ld.bu	%d2, [%a15] 4
.LBE160:
.LBE159:
	.loc 1 159 0
	ld.a	%a2, [%a12] lo:IfxPort_P14_1
.LVL122:
.LBB162:
.LBB161:
	.loc 2 574 0
	sh	%d15, %d15, %d2
	st.w	[%a2] 4, %d15
.LVL123:
.LBE161:
.LBE162:
	.loc 1 163 0
	j	Camera_Initialization
.LVL124:
.LFE577:
	.size	BasicLineScan_init, .-BasicLineScan_init
	.global	__extendsfdf2
	.global	__subdf3
	.global	__truncdfsf2
	.global	__adddf3
.section .text.AdjustBySides,"ax",@progbits
	.align 1
	.global	AdjustBySides
	.type	AdjustBySides, @function
AdjustBySides:
.LFB586:
	.loc 1 396 0
.LVL125:
	.loc 1 398 0
	movh.a	%a15, hi:IR_Srv
	movh.a	%a3, hi:IR_LineScan
	ld.w	%d9, [%a15] lo:IR_Srv
.LVL126:
	.loc 1 396 0
	lea	%SP, [%SP] -1960
.LCFI4:
	.loc 1 407 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 115
.LVL127:
.L62:
	.loc 1 408 0 discriminator 3
	lea	%a2, [%SP] 1032
	addsc.a	%a4, %a2, %d15, 2
	addsc.a	%a2, %a3, %d15, 2
	.loc 1 407 0 discriminator 3
	add	%d15, 1
.LVL128:
	.loc 1 408 0 discriminator 3
	ld.w	%d2, [%a2] 536
	st.w	[%a4]0, %d2
	.loc 1 407 0 discriminator 3
	loop	%a15, .L62
	mov	%d2, 6
	lea	%a15, 115
.LVL129:
.L63:
	.loc 1 411 0 discriminator 3
	lea	%a2, [%SP] 1032
	addsc.a	%a4, %a2, %d2, 2
	addsc.a	%a2, %a3, %d2, 2
	add	%d2, 1
.LVL130:
	ld.w	%d3, [%a2] 1024
	st.w	[%a4] 440, %d3
	.loc 1 410 0 discriminator 3
	loop	%a15, .L63
	.loc 1 415 0
	mov	%d4, 4096
	lea	%a4, [%SP] 1032
	call	Stretching
.LVL131:
	.loc 1 416 0
	lea	%a4, [%SP] 1032
	call	MedianFiltering
.LVL132:
	.loc 1 417 0
	lea	%a4, [%SP] 1032
	call	Sharpening
.LVL133:
	.loc 1 418 0
	movh	%d4, 2
	lea	%a4, [%SP] 1032
	addi	%d4, %d4, -31072
	call	Stretching
.LVL134:
	.loc 1 421 0
	movh	%d6, 1
	.loc 1 403 0
	mov	%e2, 116
	.loc 1 401 0
	mov	%d8, 0
	.loc 1 421 0
	addi	%d6, %d6, 19464
	.loc 1 425 0
	lea	%a15, 115
.LVL135:
.L66:
	.loc 1 421 0
	lea	%a3, [%SP] 1032
	addsc.a	%a2, %a3, %d2, 2
	ld.w	%d5, [%a2]0
	jlt	%d5, %d6, .L64
	.loc 1 422 0
	jz	%d3, .L80
	.loc 1 425 0
	add	%d3, 1
.LVL136:
	.loc 1 426 0
	jge	%d3, 4, .L92
.LVL137:
.L64:
	.loc 1 420 0 discriminator 2
	add	%d2, -1
.LVL138:
	loop	%a15, .L66
.L65:
.LVL139:
	.loc 1 437 0
	rsub	%d3, %d15, 231
.LVL140:
	.loc 1 433 0
	movh	%d5, 1
	.loc 1 437 0
	mov.a	%a15, %d3
	.loc 1 404 0
	mov	%d2, 0
	.loc 1 402 0
	mov	%d10, 0
	.loc 1 433 0
	addi	%d5, %d5, 19464
.LVL141:
.L70:
	lea	%a3, [%SP] 1032
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d3, [%a2]0
	jlt	%d3, %d5, .L67
	.loc 1 434 0
	jnz	%d2, .L68
	addi	%d10, %d15, -116
.LVL142:
	.loc 1 437 0
	mov	%d2, 1
.LVL143:
.L67:
	.loc 1 432 0 discriminator 2
	add	%d15, 1
.LVL144:
	loop	%a15, .L70
.LVL145:
	mov	%d2, 0
.LVL146:
	.loc 1 445 0
	jne	%d8, -1, .L69
.LVL147:
	.loc 1 447 0
	movh	%d4, 16051
	addi	%d4, %d4, 13107
	call	IR_setMotor0Vol
.LVL148:
	.loc 1 448 0
	ge	%d10, %d10, 100
.LVL149:
	.loc 1 449 0
	mov	%d4, %d9
	.loc 1 448 0
	jz	%d10, .L90
.LVL150:
.L78:
	.loc 1 481 0
	call	__extendsfdf2
.LVL151:
	movh	%d7, 16287
	movh	%d6, 60293
	mov	%e4, %d3, %d2
	addi	%d7, %d7, -18351
	addi	%d6, %d6, 7864
.L89:
	.loc 1 478 0
	call	__adddf3
.LVL152:
.L88:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL153:
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL154:
	.loc 1 466 0
	mov	%d2, -1
	.loc 1 478 0
	ret
.LVL155:
.L68:
	.loc 1 437 0
	add	%d2, 1
.LVL156:
	.loc 1 438 0
	jlt	%d2, 4, .L67
	mov	%d2, 1
.LVL157:
.L69:
	.loc 1 465 0
	ne	%d15, %d8, -1
.LVL158:
	.loc 1 467 0
	movh	%d4, 16051
	.loc 1 465 0
	and	%d15, %d2
	.loc 1 467 0
	addi	%d4, %d4, 13107
	.loc 1 465 0
	jz	%d15, .L74
.LVL159:
	.loc 1 468 0
	ge	%d15, %d8, 26
	.loc 1 467 0
	call	IR_setMotor0Vol
.LVL160:
	.loc 1 468 0
	jz	%d15, .L93
	.loc 1 471 0 discriminator 1
	ge	%d15, %d8, 64
	jz	%d15, .L94
	.loc 1 474 0 discriminator 1
	ge	%d15, %d8, 68
	jz	%d15, .L95
	.loc 1 477 0 discriminator 1
	addi	%d8, %d8, -68
.LVL161:
	ge.u	%d8, %d8, 32
.LVL162:
	.loc 1 478 0 discriminator 1
	mov	%d4, %d9
	.loc 1 477 0 discriminator 1
	jnz	%d8, .L78
.LVL163:
	.loc 1 478 0
	call	__extendsfdf2
.LVL164:
	movh	%d7, 16244
	movh	%d6, 18350
	mov	%e4, %d3, %d2
	addi	%d7, %d7, 31457
	addi	%d6, %d6, 5243
	j	.L89
.LVL165:
.L80:
	mov	%d8, %d2
	.loc 1 425 0
	mov	%d3, 1
.LVL166:
	j	.L64
.LVL167:
.L92:
	.loc 1 427 0
	mov	%d8, -1
	j	.L65
.LVL168:
.L74:
	.loc 1 487 0
	call	IR_setMotor0Vol
.LVL169:
	.loc 1 488 0
	movh.a	%a15, hi:nowIndex
	ld.w	%d5, [%a15] lo:nowIndex
	mov	%d15, 5
	addi	%d2, %d5, 4
	div	%e2, %d2, %d15
	mov	%d15, 516
	movh	%d2, hi:cam_info
	addi	%d2, %d2, lo:cam_info
	mov	%d7, %d3
.LVL170:
	madd	%d3, %d2, %d3, %d15
	mov.aa	%a3, %SP
	mov.aa	%a2, %SP
	mov.a	%a4, %d3
	mov.a	%a15, %d3
		# #chunks=64, chunksize=8, remains=4
	lea	%a5, 64-1
	0:
	ld.d	%e0, [%a4+]8
	st.d	[%a3+]8, %e0
	loop	%a5, 0b
	ld.w	%d0, [%a4+]4
	st.w	[%a3+]4, %d0
	ld.w	%d0, [%a15] 512
.LBB163:
.LBB164:
	.loc 1 231 0
	lea	%a4, [%SP] 516
	mov.aa	%a15, %a4
	st.w	[%SP] 512, %d0
	mul	%d4, %d5, 129
		# #chunks=64, chunksize=8, remains=4
	lea	%a3, 64-1
	0:
	ld.d	%e8, [%a2+]8
	st.d	[%a15+]8, %e8
	loop	%a3, 0b
	ld.w	%d8, [%a2+]4
	st.w	[%a15+]4, %d8
.LVL171:
	.loc 1 233 0
	mov	%d15, 0
	.loc 1 234 0
	mov	%d6, %d2
	lea	%a15, 127
.LVL172:
.L79:
	mov.a	%a5, %d2
	add	%d3, %d15, %d4
	addsc.a	%a2, %a4, %d15, 2
	addsc.a	%a3, %a5, %d3, 2
	ld.w	%d3, [%a2]0
	st.w	[%a3]0, %d3
	.loc 1 233 0
	add	%d15, 1
.LVL173:
	loop	%a15, .L79
	.loc 1 235 0
	mov	%d15, 516
.LVL174:
	madd	%d2, %d6, %d5, %d15
.LBE164:
.LBE163:
	.loc 1 489 0
	madd	%d3, %d6, %d7, %d15
.LBB167:
.LBB165:
	.loc 1 235 0
	mov.a	%a15, %d2
.LBE165:
.LBE167:
	.loc 1 489 0
	mov.a	%a2, %d3
.LBB168:
.LBB166:
	.loc 1 235 0
	st.w	[%a15] 512, %d0
.LBE166:
.LBE168:
	.loc 1 489 0
	ld.w	%d15, [%a2] 512
	st.w	[%a15] 512, %d15
	.loc 1 486 0
	mov	%d2, 1
.LVL175:
	.loc 1 493 0
	ret
.LVL176:
.L93:
	.loc 1 469 0
	mov	%d4, %d9
.LVL177:
.L90:
	call	__extendsfdf2
.LVL178:
	mov	%e4, %d3, %d2
	movh	%d7, 16287
	movh	%d6, 60293
	addi	%d7, %d7, -18351
	addi	%d6, %d6, 7864
	call	__subdf3
.LVL179:
	j	.L88
.L95:
	.loc 1 475 0
	movh	%d4, 15944
	addi	%d4, %d4, -839
	call	IR_setSrvAngle
.LVL180:
	.loc 1 466 0
	mov	%d2, -1
	.loc 1 475 0
	ret
.L94:
	.loc 1 472 0
	mov	%d4, %d9
	call	__extendsfdf2
.LVL181:
	mov	%e4, %d3, %d2
	movh	%d7, 16244
	movh	%d6, 18350
	addi	%d7, %d7, 31457
	addi	%d6, %d6, 5243
	call	__subdf3
.LVL182:
	j	.L88
.LFE586:
	.size	AdjustBySides, .-AdjustBySides
.section .text.FindCenter,"ax",@progbits
	.align 1
	.global	FindCenter
	.type	FindCenter, @function
FindCenter:
.LFB587:
	.loc 1 495 0
.LVL183:
	.loc 1 502 0
	movh	%d3, 1
	.loc 1 496 0
	mov	%d5, 0
	.loc 1 499 0
	mov	%d15, 0
	.loc 1 504 0
	mov	%d4, 0
	.loc 1 502 0
	addi	%d3, %d3, 4464
	lea	%a15, 127
.LVL184:
.L99:
	addsc.a	%a2, %a4, %d15, 2
	.loc 1 500 0
	ld.w	%d2, [%a2]0
	jltz	%d2, .L97
	.loc 1 502 0
	jlt	%d2, %d3, .L97
.L98:
	.loc 1 499 0 discriminator 2
	add	%d15, 1
.LVL185:
	loop	%a15, .L99
.LVL186:
	movh	%d4, hi:Zero_center_line
	.loc 1 499 0 is_stmt 0
	mov	%d15, 0
	addi	%d4, %d4, lo:Zero_center_line
	lea	%a15, 127
.LVL187:
.L100:
	.loc 1 510 0 is_stmt 1 discriminator 3
	sh	%d2, %d15, 2
	addsc.a	%a2, %a4, %d2, 0
	mov.a	%a3, %d4
	ld.w	%d3, [%a2]0
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 509 0 discriminator 3
	add	%d15, 1
.LVL188:
	.loc 1 510 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 509 0 discriminator 3
	loop	%a15, .L100
	.loc 1 514 0
	lt	%d5, %d5, 121
.LVL189:
	mov	%d2, -1
	jnz	%d5, .L121
	mov	%d15, 58
.LVL190:
	mov	%e2, 127
	lea	%a15, 58
.LVL191:
.L104:
	.loc 1 518 0
	eq	%d4, %d3, 0
	and.ne	%d4, %d15, 0
	jz	%d4, .L102
.LVL192:
	add	%d3, %d15, 1
	.loc 1 518 0 is_stmt 0 discriminator 1
	addsc.a	%a2, %a4, %d3, 2
	ld.w	%d4, [%a2]0
	jz	%d4, .L115
	.loc 1 518 0 discriminator 2
	addsc.a	%a2, %a4, %d15, 2
	ld.w	%d4, [%a2]0
	seln	%d3, %d4, %d3, 0
.LVL193:
.L102:
	.loc 1 522 0 is_stmt 1
	ne	%d4, %d2, 127
	jz	%d4, .L129
.LVL194:
.L103:
	add	%d15, -1
.LVL195:
	loop	%a15, .L104
	.loc 1 527 0
	movh.a	%a15, hi:isLimitZone
	ld.w	%d15, [%a15] lo:isLimitZone
.LVL196:
	jeq	%d15, 1, .L130
.L105:
	.loc 1 536 0
	ne	%d15, %d2, 127
	jnz	%d15, .L111
.L110:
	.loc 1 540 0
	add	%d15, %d3, -5
	lt.u	%d15, %d15, 50
	jz	%d15, .L108
.LVL197:
	.loc 1 541 0
	addi	%d2, %d3, 55
.LVL198:
	ret
.LVL199:
.L97:
	.loc 1 503 0
	add	%d5, 1
.LVL200:
	.loc 1 504 0
	st.w	[%a2]0, %d4
	j	.L98
.LVL201:
.L129:
	rsub	%d4, %d15, 119
	.loc 1 522 0 discriminator 1
	addsc.a	%a2, %a4, %d4, 2
	ld.w	%d5, [%a2]0
	jz	%d5, .L103
	rsub	%d5, %d15, 120
	.loc 1 522 0 is_stmt 0 discriminator 2
	addsc.a	%a2, %a4, %d5, 2
	ld.w	%d5, [%a2]0
	.loc 1 523 0 is_stmt 1 discriminator 2
	sel	%d2, %d5, %d2, %d4
.LVL202:
	j	.L103
.LVL203:
.L121:
	.loc 1 552 0
	ret
.LVL204:
.L130:
.LBB169:
.LBB170:
	.loc 1 603 0
	movh.a	%a15, hi:countPassedObject
.LBE170:
.LBE169:
	.loc 1 528 0
	ld.w	%d15, [%a15] lo:countPassedObject
	jnz	%d15, .L105
	.loc 1 529 0
	jnz	%d3, .L106
	.loc 1 530 0
	movh.a	%a15, hi:leftIndexCount
	ld.w	%d15, [%a15] lo:leftIndexCount
	add	%d15, 1
	st.w	[%a15] lo:leftIndexCount, %d15
.L106:
	.loc 1 531 0
	eq	%d15, %d2, 127
	jnz	%d15, .L107
.L111:
.LVL205:
	.loc 1 538 0
	lt	%d15, %d2, 66
	jnz	%d15, .L108
	.loc 1 537 0
	addi	%d2, %d2, -55
.LVL206:
	ret
.LVL207:
.L108:
	.loc 1 549 0
	mov	%d2, -1
.LVL208:
	ret
.LVL209:
.L107:
	.loc 1 532 0
	movh.a	%a15, hi:rightIndexCount
	ld.w	%d15, [%a15] lo:rightIndexCount
	add	%d15, 1
	st.w	[%a15] lo:rightIndexCount, %d15
	j	.L110
.LVL210:
.L115:
	mov	%d3, 0
	j	.L102
.LFE587:
	.size	FindCenter, .-FindCenter
.section .text.FindOneLine,"ax",@progbits
	.align 1
	.global	FindOneLine
	.type	FindOneLine, @function
FindOneLine:
.LFB588:
	.loc 1 554 0
.LVL211:
	.loc 1 561 0
	movh	%d2, 1
	mov.aa	%a2, %a4
	.loc 1 555 0
	mov	%d4, 0
	.loc 1 563 0
	mov	%d3, 0
	.loc 1 561 0
	addi	%d2, %d2, 4464
	lea	%a15, 127
.LVL212:
.L134:
	.loc 1 559 0
	ld.w	%d15, [%a2]0
	jltz	%d15, .L132
	.loc 1 561 0
	jlt	%d15, %d2, .L132
.L133:
	add.a	%a2, 4
	loop	%a15, .L134
	.loc 1 568 0
	ge	%d4, %d4, 122
.LVL213:
	.loc 1 569 0
	mov	%d2, -1
	.loc 1 568 0
	jnz	%d4, .L135
	lea	%a3, [%a4] 12
	lea	%a2, [%a4] 8
	mov	%d5, 0
	mov	%d2, 2
	lea	%a15, 123
.LVL214:
.L138:
	.loc 1 572 0
	ld.w	%d3, [%a2]0
	jz	%d5, .L149
	.loc 1 574 0 discriminator 1
	jz	%d3, .L137
	.loc 1 574 0 is_stmt 0 discriminator 2
	ld.w	%d4, [%a3]0
	jnz	%d4, .L137
	.loc 1 574 0 discriminator 3
	addsc.a	%a5, %a4, %d5, 2
	ld.w	%d4, [%a5]0
	lt	%d3, %d3, %d4
	sel	%d5, %d3, %d5, %d2
.LVL215:
.L137:
	.loc 1 571 0 is_stmt 1 discriminator 2
	add	%d2, 1
.LVL216:
	add.a	%a3, 4
	add.a	%a2, 4
	loop	%a15, .L138
	.loc 1 577 0
	addi	%d2, %d5, -4
.LVL217:
	ge.u	%d2, %d2, 119
	seln	%d2, %d2, %d5, -1
.LVL218:
.L135:
	.loc 1 581 0
	ret
.LVL219:
.L132:
	.loc 1 562 0
	add	%d4, 1
.LVL220:
	.loc 1 563 0
	st.w	[%a2]0, %d3
	j	.L133
.LVL221:
.L149:
	.loc 1 572 0 discriminator 1
	jz	%d3, .L137
	.loc 1 572 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a3]0
	cmovn	%d5, %d15, %d2
	j	.L137
.LFE588:
	.size	FindOneLine, .-FindOneLine
.section .text.GetCameraCenter,"ax",@progbits
	.align 1
	.global	GetCameraCenter
	.type	GetCameraCenter, @function
GetCameraCenter:
.LFB585:
	.loc 1 314 0 is_stmt 1
.LVL222:
	.loc 1 320 0
	jlt	%d5, 2, .L151
	.loc 1 321 0
	lt	%d4, %d4, 60
.LVL223:
	jnz	%d4, .L152
	.loc 1 322 0
	mov	%d15, 0
	movh.a	%a15, hi:g_cameraDirection
	st.w	[%a15] lo:g_cameraDirection, %d15
.L151:
	movh.a	%a13, hi:nowIndex
	ld.w	%d4, [%a13] lo:nowIndex
	movh.a	%a15, hi:cam_info
	mul	%d3, %d4, 129
	lea	%a15, [%a15] lo:cam_info
	movh.a	%a3, hi:IR_LineScan
	.loc 1 314 0 discriminator 1
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 328 0 discriminator 1
	mov.d	%d5, %a15
.LVL224:
	lea	%a2, 127
.LVL225:
.L153:
	.loc 1 328 0 is_stmt 0 discriminator 3
	addsc.a	%a4, %a3, %d15, 2
	add	%d2, %d15, %d3
	addsc.a	%a5, %a15, %d2, 2
	ld.w	%d6, [%a4]0
	st.w	[%a5]0, %d6
	.loc 1 330 0 is_stmt 1 discriminator 3
	ld.w	%d2, [%a4] 1024
	.loc 1 329 0 discriminator 3
	ld.w	%d6, [%a4] 512
	st.w	[%a5] 2580, %d6
	.loc 1 330 0 discriminator 3
	st.w	[%a5] 5160, %d2
	.loc 1 327 0 discriminator 3
	add	%d15, 1
.LVL226:
	loop	%a2, .L153
	.loc 1 332 0
	mov	%d15, 516
.LVL227:
	madd	%d3, %d5, %d4, %d15
	mov	%d15, 60
	movh.a	%a12, hi:nowIndex
	mov.a	%a2, %d3
	lea	%a12, [%a12] lo:nowIndex
	st.w	[%a2] 512, %d15
.LVL228:
	.loc 1 334 0
	mov	%d9, 0
	.loc 1 335 0
	mov	%d8, 516
	mov	%d10, 2580
	.loc 1 336 0
	mov.aa	%a14, %a12
.LVL229:
.L155:
	.loc 1 335 0 discriminator 3
	mul	%d15, %d9, %d10
	.loc 1 334 0 discriminator 3
	add	%d9, 1
.LVL230:
	.loc 1 335 0 discriminator 3
	madd	%d4, %d15, %d4, %d8
	addsc.a	%a4, %a15, %d4, 0
	mov	%d4, 4096
	call	Stretching
.LVL231:
	.loc 1 336 0 discriminator 3
	ld.w	%d2, [%a12]0
	madd	%d2, %d15, %d2, %d8
	addsc.a	%a4, %a15, %d2, 0
	call	MedianFiltering
.LVL232:
	.loc 1 337 0 discriminator 3
	ld.w	%d2, [%a12]0
	madd	%d2, %d15, %d2, %d8
	addsc.a	%a4, %a15, %d2, 0
	call	Sharpening
.LVL233:
	.loc 1 338 0 discriminator 3
	ld.w	%d2, [%a12]0
	movh	%d4, 2
	madd	%d15, %d15, %d2, %d8
	addi	%d4, %d4, -31072
	addsc.a	%a4, %a15, %d15, 0
	call	Stretching
.LVL234:
	ld.w	%d4, [%a14]0
	.loc 1 334 0 discriminator 3
	jne	%d9, 3, .L155
	mul	%d3, %d4, 129
	movh.a	%a5, hi:speedLimitLine
	.loc 1 334 0 is_stmt 0
	mov	%d15, 0
	lea	%a5, [%a5] lo:speedLimitLine
	.loc 1 342 0 is_stmt 1
	mov.d	%d8, %a15
	lea	%a2, 127
.LVL235:
.L156:
	.loc 1 342 0 is_stmt 0 discriminator 3
	add	%d2, %d15, %d3
	addsc.a	%a3, %a15, %d2, 2
	addsc.a	%a4, %a5, %d15, 2
	ld.w	%d6, [%a3]0
	st.w	[%a4]0, %d6
	.loc 1 341 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL236:
	loop	%a2, .L156
	.loc 1 344 0
	mov	%d15, 516
.LVL237:
	madd	%d2, %d8, %d4, %d15
	mov.a	%a4, %d2
	mov.a	%a12, %d2
	call	FindCenter
.LVL238:
	.loc 1 345 0
	ld.w	%d9, [%a13] lo:nowIndex
	.loc 1 344 0
	st.w	[%a12] 512, %d2
	.loc 1 345 0
	mul	%d9, %d15
	mov.a	%a2, %d9
	lea	%a4, [%a2] 2580
	addsc.a	%a4, %a4, %d8, 0
	call	FindOneLine
.LVL239:
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d9, 0
	.loc 1 346 0
	ld.w	%d9, [%a13] lo:nowIndex
	.loc 1 345 0
	st.w	[%a2] 3092, %d2
	.loc 1 346 0
	mul	%d9, %d15
	mov.a	%a2, %d9
	lea	%a4, [%a2] 5160
	addsc.a	%a4, %a4, %d8, 0
	call	FindOneLine
.LVL240:
	mov.a	%a3, %d8
	.loc 1 348 0
	ld.w	%d4, [%a13] lo:nowIndex
	.loc 1 346 0
	addsc.a	%a2, %a3, %d9, 0
	st.w	[%a2] 5672, %d2
	.loc 1 348 0
	madd	%d2, %d8, %d4, %d15
	mov.a	%a2, %d2
	ld.w	%d15, [%a2] 512
	add	%d15, 1
	jlt.u	%d15, 2, .L166
.LVL241:
.L157:
	mul	%d3, %d4, 129
	movh.a	%a5, hi:debugLine
	.loc 1 334 0 discriminator 1
	mov	%d15, 0
	lea	%a5, [%a5] lo:debugLine
	.loc 1 370 0 discriminator 1
	mov.d	%d6, %a15
	lea	%a2, 127
.LVL242:
.L159:
	.loc 1 370 0 is_stmt 0 discriminator 3
	add	%d2, %d15, %d3
	addsc.a	%a3, %a15, %d2, 2
	addsc.a	%a4, %a5, %d15, 2
	ld.w	%d2, [%a3]0
	st.w	[%a4]0, %d2
	.loc 1 369 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL243:
	loop	%a2, .L159
	.loc 1 372 0
	mov	%d15, 5
.LVL244:
	add	%d4, 1
	div	%e4, %d4, %d15
	.loc 1 373 0
	addi	%d2, %d5, 4
	div	%e2, %d2, %d15
	.loc 1 372 0
	st.w	[%a13] lo:nowIndex, %d5
	.loc 1 373 0
	mov	%d2, 516
	madd	%d3, %d6, %d3, %d2
	mov.a	%a15, %d3
	ld.w	%d2, [%a15] 512
.LVL245:
.L158:
	.loc 1 376 0
	ret
.LVL246:
.L152:
	.loc 1 324 0
	mov	%d15, 1
	movh.a	%a15, hi:g_cameraDirection
	st.w	[%a15] lo:g_cameraDirection, %d15
	j	.L151
.LVL247:
.L166:
	.loc 1 349 0
	call	AdjustBySides
.LVL248:
	mov	%d15, %d2
.LVL249:
	.loc 1 351 0
	mov	%d2, -100
.LVL250:
	.loc 1 350 0
	jeq	%d15, -1, .L158
	.loc 1 316 0
	mov	%d2, 0
	.loc 1 368 0
	jge.u	%d15, 2, .L158
	movh.a	%a2, hi:nowIndex
	ld.w	%d4, [%a2] lo:nowIndex
	j	.L157
.LFE585:
	.size	GetCameraCenter, .-GetCameraCenter
.section .text.CheckLimitZone,"ax",@progbits
	.align 1
	.global	CheckLimitZone
	.type	CheckLimitZone, @function
CheckLimitZone:
.LFB589:
	.loc 1 583 0
.LVL251:
	movh.a	%a3, hi:speedLimitLine
	.loc 1 583 0
	mov	%d5, 0
	mov	%d3, 0
	.loc 1 586 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:speedLimitLine
	lea	%a15, 127
.LVL252:
.L169:
	.loc 1 587 0
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2]0
	jnz	%d2, .L168
	.loc 1 588 0
	add	%d3, 1
	mov	%d5, %d3
.L168:
	.loc 1 586 0 discriminator 2
	add	%d15, 1
.LVL253:
	loop	%a15, .L169
	movh.a	%a15, hi:zeroCnt
	st.w	[%a15] lo:zeroCnt, %d5
	.loc 1 590 0
	ge	%d3, %d3, 110
	jnz	%d3, .L167
	.loc 1 591 0
	xor	%d4, %d4, 1
.LVL254:
	movh.a	%a15, hi:isLimitZone
	st.w	[%a15] lo:isLimitZone, %d4
.LVL255:
.L167:
	ret
.LFE589:
	.size	CheckLimitZone, .-CheckLimitZone
.section .text.IsLimitZone,"ax",@progbits
	.align 1
	.global	IsLimitZone
	.type	IsLimitZone, @function
IsLimitZone:
.LFB590:
	.loc 1 594 0
	.loc 1 596 0
	movh.a	%a15, hi:isLimitZone
	ld.w	%d2, [%a15] lo:isLimitZone
	ret
.LFE590:
	.size	IsLimitZone, .-IsLimitZone
.section .text.GetDashLine,"ax",@progbits
	.align 1
	.global	GetDashLine
	.type	GetDashLine, @function
GetDashLine:
.LFB591:
	.loc 1 598 0
	.loc 1 599 0
	movh.a	%a15, hi:leftIndexCount
	ld.w	%d2, [%a15] lo:leftIndexCount
	movh.a	%a15, hi:rightIndexCount
	ld.w	%d15, [%a15] lo:rightIndexCount
	ge	%d2, %d2, %d15
	.loc 1 600 0
	mov	%d15, -1
	sel	%d2, %d2, %d15, 1
	ret
.LFE591:
	.size	GetDashLine, .-GetDashLine
.section .text.GetCountPassedObject,"ax",@progbits
	.align 1
	.global	GetCountPassedObject
	.type	GetCountPassedObject, @function
GetCountPassedObject:
.LFB592:
	.loc 1 602 0
	.loc 1 604 0
	movh.a	%a15, hi:countPassedObject
	ld.w	%d2, [%a15] lo:countPassedObject
	ret
.LFE592:
	.size	GetCountPassedObject, .-GetCountPassedObject
.section .text.SetCountPassedObject,"ax",@progbits
	.align 1
	.global	SetCountPassedObject
	.type	SetCountPassedObject, @function
SetCountPassedObject:
.LFB593:
	.loc 1 605 0
.LVL256:
	.loc 1 606 0
	movh.a	%a15, hi:countPassedObject
	st.w	[%a15] lo:countPassedObject, %d4
	ret
.LFE593:
	.size	SetCountPassedObject, .-SetCountPassedObject
.section .text.GetDottedLine,"ax",@progbits
	.align 1
	.global	GetDottedLine
	.type	GetDottedLine, @function
GetDottedLine:
.LFB594:
	.loc 1 608 0
	.loc 1 610 0
	movh.a	%a15, hi:dottedLine
	ld.w	%d2, [%a15] lo:dottedLine
	ret
.LFE594:
	.size	GetDottedLine, .-GetDottedLine
.section .text.SetDottedLine,"ax",@progbits
	.align 1
	.global	SetDottedLine
	.type	SetDottedLine, @function
SetDottedLine:
.LFB595:
	.loc 1 611 0
.LVL257:
	.loc 1 612 0
	movh.a	%a15, hi:dottedLine
	st.w	[%a15] lo:dottedLine, %d4
	ret
.LFE595:
	.size	SetDottedLine, .-SetDottedLine
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
	.size	speedLimitLine, 512
speedLimitLine:
	.zero	512
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
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB582
	.uaword	.LFE582-.LFB582
	.byte	0x4
	.uaword	.LCFI1-.LFB582
	.byte	0xe
	.uleb128 0x18
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
	.uleb128 0x200
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB584
	.uaword	.LFE584-.LFB584
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.byte	0x4
	.uaword	.LCFI3-.LFB577
	.byte	0xe
	.uleb128 0xa8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB586
	.uaword	.LFE586-.LFB586
	.byte	0x4
	.uaword	.LCFI4-.LFB586
	.byte	0xe
	.uleb128 0x7a8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB587
	.uaword	.LFE587-.LFB587
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
	.uaword	.LFB585
	.uaword	.LFE585-.LFB585
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB589
	.uaword	.LFE589-.LFB589
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
.section .text,"ax",@progbits
.Letext0:
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxSrc_cfg.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxVadc_cfg.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxVadc_regdef.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 15 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxPort_PinMap.h"
	.file 16 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa943
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.c"
	.string	"C:\\\\Users\\\\kdh95\\\\Desktop\\\\SmartCar\\\\AurixRacer-master\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x228
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
	.uaword	0x1d6
	.uaword	0x268
	.uleb128 0x4
	.uaword	0x268
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
	.uaword	0x1d6
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1f4
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x24c
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x1b2
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x2c2
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
	.uaword	0x1d6
	.uleb128 0x5
	.string	"sint64"
	.byte	0x6
	.byte	0x24
	.uaword	0x221
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2f8
	.uleb128 0x7
	.uleb128 0x5
	.string	"Ifx_TickTime"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2e4
	.uleb128 0x5
	.string	"Ifx_Priority"
	.byte	0x6
	.byte	0x56
	.uaword	0x289
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x7e
	.uaword	0x344
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0x80
	.uaword	0x2f2
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x6
	.byte	0x81
	.uaword	0x297
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x82
	.uaword	0x321
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x36e
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x37e
	.uleb128 0x4
	.uaword	0x268
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x38e
	.uleb128 0x4
	.uaword	0x268
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x39e
	.uleb128 0x4
	.uaword	0x268
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x3ae
	.uleb128 0x4
	.uaword	0x268
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x3be
	.uleb128 0x4
	.uaword	0x268
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0x76
	.uaword	0x40e
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
	.uaword	0x1d6
	.uaword	0x41e
	.uleb128 0x4
	.uaword	0x268
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x42e
	.uleb128 0x4
	.uaword	0x268
	.byte	0x5f
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x43e
	.uleb128 0x4
	.uaword	0x268
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x650
	.uleb128 0xe
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x43e
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x694
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x54
	.uaword	0x211
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x669
	.uleb128 0xd
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x7cb
	.uleb128 0xe
	.string	"EN0"
	.byte	0x7
	.byte	0x5a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x7
	.byte	0x5b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x7
	.byte	0x5c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x7
	.byte	0x5d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x7
	.byte	0x5e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x7
	.byte	0x5f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x7
	.byte	0x60
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x7
	.byte	0x61
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x7
	.byte	0x62
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x7
	.byte	0x63
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x7
	.byte	0x64
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x7
	.byte	0x65
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x7
	.byte	0x66
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x7
	.byte	0x67
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x7
	.byte	0x68
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x7
	.byte	0x69
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x6a
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ESR_Bits"
	.byte	0x7
	.byte	0x6b
	.uaword	0x6ad
	.uleb128 0xd
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x6e
	.uaword	0x82d
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x7
	.byte	0x70
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x7
	.byte	0x71
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.byte	0x72
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ID_Bits"
	.byte	0x7
	.byte	0x73
	.uaword	0x7e1
	.uleb128 0xd
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x76
	.uaword	0x94f
	.uleb128 0xe
	.string	"P0"
	.byte	0x7
	.byte	0x78
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x7
	.byte	0x79
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0x7
	.byte	0x7a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0x7
	.byte	0x7b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0x7
	.byte	0x7c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0x7
	.byte	0x7d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0x7
	.byte	0x7e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0x7
	.byte	0x7f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0x7
	.byte	0x80
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0x7
	.byte	0x81
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0x7
	.byte	0x82
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0x7
	.byte	0x83
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0x7
	.byte	0x84
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0x7
	.byte	0x85
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0x7
	.byte	0x86
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0x7
	.byte	0x87
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x88
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0x7
	.byte	0x89
	.uaword	0x842
	.uleb128 0xd
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8c
	.uaword	0x9f7
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x8e
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x7
	.byte	0x8f
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0x90
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x7
	.byte	0x91
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x92
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC2"
	.byte	0x7
	.byte	0x93
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0x94
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC3"
	.byte	0x7
	.byte	0x95
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x7
	.byte	0x96
	.uaword	0x964
	.uleb128 0xd
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.uaword	0xaa7
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x9b
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC12"
	.byte	0x7
	.byte	0x9c
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0x9d
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC13"
	.byte	0x7
	.byte	0x9e
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x9f
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC14"
	.byte	0x7
	.byte	0xa0
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa1
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC15"
	.byte	0x7
	.byte	0xa2
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x7
	.byte	0xa3
	.uaword	0xa0f
	.uleb128 0xd
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.uaword	0xb53
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xa8
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC4"
	.byte	0x7
	.byte	0xa9
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0xaa
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC5"
	.byte	0x7
	.byte	0xab
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xac
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC6"
	.byte	0x7
	.byte	0xad
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0xae
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC7"
	.byte	0x7
	.byte	0xaf
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x7
	.byte	0xb0
	.uaword	0xac0
	.uleb128 0xd
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb3
	.uaword	0xc00
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xb5
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC8"
	.byte	0x7
	.byte	0xb6
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0xb7
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC9"
	.byte	0x7
	.byte	0xb8
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xb9
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC10"
	.byte	0x7
	.byte	0xba
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.byte	0xbb
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC11"
	.byte	0x7
	.byte	0xbc
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x7
	.byte	0xbd
	.uaword	0xb6b
	.uleb128 0xd
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc0
	.uaword	0xc60
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xc2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x7
	.byte	0xc3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc4
	.uaword	0x211
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x7
	.byte	0xc5
	.uaword	0xc18
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc8
	.uaword	0xcc0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xca
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x7
	.byte	0xcb
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.byte	0xcc
	.uaword	0x211
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x7
	.byte	0xcd
	.uaword	0xc78
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd0
	.uaword	0xd50
	.uleb128 0xe
	.string	"RDIS_CTRL"
	.byte	0x7
	.byte	0xd2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RX_DIS"
	.byte	0x7
	.byte	0xd3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"TERM"
	.byte	0x7
	.byte	0xd4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"LRXTERM"
	.byte	0x7
	.byte	0xd5
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.byte	0xd6
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x7
	.byte	0xd7
	.uaword	0xcd8
	.uleb128 0xd
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xda
	.uaword	0xe23
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xdc
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"LVDSR"
	.byte	0x7
	.byte	0xdd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LVDSRL"
	.byte	0x7
	.byte	0xde
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x7
	.byte	0xdf
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"TDIS_CTRL"
	.byte	0x7
	.byte	0xe0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"TX_DIS"
	.byte	0x7
	.byte	0xe1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"TX_PD"
	.byte	0x7
	.byte	0xe2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"TX_PWDPD"
	.byte	0x7
	.byte	0xe3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xe4
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x7
	.byte	0xe5
	.uaword	0xd6c
	.uleb128 0xd
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe8
	.uaword	0xeb4
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xea
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x7
	.byte	0xeb
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x7
	.byte	0xec
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x7
	.byte	0xed
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x7
	.byte	0xee
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.byte	0xef
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x7
	.byte	0xf0
	.uaword	0xe3b
	.uleb128 0xd
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf3
	.uaword	0xf3b
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xf5
	.uaword	0x211
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x7
	.byte	0xf6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x7
	.byte	0xf7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x7
	.byte	0xf8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x7
	.byte	0xf9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x7
	.byte	0xfa
	.uaword	0xecc
	.uleb128 0xd
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfd
	.uaword	0xfd2
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0xff
	.uaword	0x211
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x104
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x7
	.uahalf	0x105
	.uaword	0xf54
	.uleb128 0x13
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x108
	.uaword	0x106d
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x7
	.uahalf	0x110
	.uaword	0xfeb
	.uleb128 0x13
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x113
	.uaword	0x11c7
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x115
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x117
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x1086
	.uleb128 0x13
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1415
	.uleb128 0x10
	.string	"PS0"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR_Bits"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x11df
	.uleb128 0x13
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x1498
	.uleb128 0x10
	.string	"PS0"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x154
	.uaword	0x211
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x142c
	.uleb128 0x13
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1532
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x7
	.uahalf	0x160
	.uaword	0x14b1
	.uleb128 0x13
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x163
	.uaword	0x15c8
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x165
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x154c
	.uleb128 0x13
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x165f
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x170
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x175
	.uaword	0x211
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x15e1
	.uleb128 0x13
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x179
	.uaword	0x17a9
	.uleb128 0x10
	.string	"PS0"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x7
	.uahalf	0x188
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x1678
	.uleb128 0x13
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x18e1
	.uleb128 0x10
	.string	"P0"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x7
	.uahalf	0x195
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x7
	.uahalf	0x197
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT_Bits"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x17c1
	.uleb128 0x13
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x19de
	.uleb128 0x10
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SEL2"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"SEL3"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEL4"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"SEL5"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"SEL6"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SEL10"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"SEL11"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x211
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x18f8
	.uleb128 0x13
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x1b48
	.uleb128 0x10
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PDIS2"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PDIS3"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PDIS4"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PDIS5"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PDIS6"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PDIS7"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PDIS8"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PDIS9"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PDIS10"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PDIS11"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PDIS12"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PDIS13"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PDIS14"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PDIS15"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x19f6
	.uleb128 0x13
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x1c7c
	.uleb128 0x10
	.string	"PD0"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL0"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD1"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL1"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD2"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL2"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD3"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL3"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD4"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL4"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD5"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL5"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD6"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL6"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD7"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL7"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x1b61
	.uleb128 0x13
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x1dbb
	.uleb128 0x10
	.string	"PD8"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL8"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD9"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL9"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD10"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL10"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD11"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL11"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD12"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL12"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD13"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL13"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD14"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL14"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD15"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL15"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1c94
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x1dfb
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x650
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN0"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x1dd3
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x203
	.uaword	0x1e38
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x694
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN1"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x1e10
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x1e75
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x7cb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ESR"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x1e4d
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x213
	.uaword	0x1eaf
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x215
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x82d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ID"
	.byte	0x7
	.uahalf	0x218
	.uaword	0x1e87
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1ee8
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x94f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IN"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x1ec0
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x223
	.uaword	0x1f21
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x9f7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR0"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x1ef9
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x1f5d
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0xaa7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR12"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x1f35
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x233
	.uaword	0x1f9a
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x237
	.uaword	0xb53
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR4"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x1f72
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1fd6
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0xc00
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR8"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x1fae
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x243
	.uaword	0x2012
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x247
	.uaword	0xc60
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR0"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x1fea
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x205c
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0xcc0
	.uleb128 0x15
	.string	"B_P21"
	.byte	0x7
	.uahalf	0x250
	.uaword	0xd50
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR1"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x2026
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x254
	.uaword	0x2098
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x258
	.uaword	0xe23
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR2"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x2070
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x20d4
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x11c7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x20ac
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x264
	.uaword	0x210f
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x268
	.uaword	0xeb4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR0"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x20e7
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x214b
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x270
	.uaword	0xf3b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR12"
	.byte	0x7
	.uahalf	0x271
	.uaword	0x2123
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x274
	.uaword	0x2188
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x278
	.uaword	0xfd2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x2160
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x21c4
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x106d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x219c
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x284
	.uaword	0x2200
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x1415
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x21d8
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x223a
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x17a9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x2212
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x294
	.uaword	0x2275
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x1498
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0"
	.byte	0x7
	.uahalf	0x299
	.uaword	0x224d
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x22b1
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x1532
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x2289
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x22ee
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x15c8
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x22c6
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x232a
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x165f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x2302
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x2366
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x18e1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x233e
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x23a0
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x19de
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x2378
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x23db
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x1b48
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC"
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0x23b3
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x2417
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1c7c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0"
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x23ef
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x2452
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x1dbb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x242a
	.uleb128 0x16
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x269f
	.uleb128 0x17
	.string	"OUT"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x2366
	.byte	0
	.uleb128 0x17
	.string	"OMR"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x2200
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x1eaf
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x258
	.byte	0xc
	.uleb128 0x17
	.string	"IOCR0"
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x1f21
	.byte	0x10
	.uleb128 0x17
	.string	"IOCR4"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x1f9a
	.byte	0x14
	.uleb128 0x17
	.string	"IOCR8"
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x1fd6
	.byte	0x18
	.uleb128 0x17
	.string	"IOCR12"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x1f5d
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x258
	.byte	0x20
	.uleb128 0x17
	.string	"IN"
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x1ee8
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x36e
	.byte	0x28
	.uleb128 0x17
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0x2417
	.byte	0x40
	.uleb128 0x17
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2452
	.byte	0x44
	.uleb128 0x17
	.string	"reserved_48"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x35e
	.byte	0x48
	.uleb128 0x17
	.string	"ESR"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1e75
	.byte	0x50
	.uleb128 0x17
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x38e
	.byte	0x54
	.uleb128 0x17
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x23db
	.byte	0x60
	.uleb128 0x17
	.string	"PCSR"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x23a0
	.byte	0x64
	.uleb128 0x17
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x35e
	.byte	0x68
	.uleb128 0x17
	.string	"OMSR0"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2275
	.byte	0x70
	.uleb128 0x17
	.string	"OMSR4"
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x22ee
	.byte	0x74
	.uleb128 0x17
	.string	"OMSR8"
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x232a
	.byte	0x78
	.uleb128 0x17
	.string	"OMSR12"
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x22b1
	.byte	0x7c
	.uleb128 0x17
	.string	"OMCR0"
	.byte	0x7
	.uahalf	0x2fd
	.uaword	0x210f
	.byte	0x80
	.uleb128 0x17
	.string	"OMCR4"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x2188
	.byte	0x84
	.uleb128 0x17
	.string	"OMCR8"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x21c4
	.byte	0x88
	.uleb128 0x17
	.string	"OMCR12"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x214b
	.byte	0x8c
	.uleb128 0x17
	.string	"OMSR"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x223a
	.byte	0x90
	.uleb128 0x17
	.string	"OMCR"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x20d4
	.byte	0x94
	.uleb128 0x17
	.string	"reserved_98"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x35e
	.byte	0x98
	.uleb128 0x17
	.string	"LPCR0"
	.byte	0x7
	.uahalf	0x304
	.uaword	0x2012
	.byte	0xa0
	.uleb128 0x17
	.string	"LPCR1"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x205c
	.byte	0xa4
	.uleb128 0x17
	.string	"LPCR2"
	.byte	0x7
	.uahalf	0x306
	.uaword	0x2098
	.byte	0xa8
	.uleb128 0x17
	.string	"reserved_A4"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x269f
	.byte	0xac
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x1e38
	.byte	0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x309
	.uaword	0x1dfb
	.byte	0xfc
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x26af
	.uleb128 0x4
	.uaword	0x268
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P"
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x26bd
	.uleb128 0x19
	.uaword	0x2465
	.uleb128 0x6
	.byte	0x4
	.uaword	0x26af
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.byte	0x4c
	.uaword	0x2968
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
	.uaword	0x26c8
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.byte	0x7d
	.uaword	0x2b1d
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
	.uaword	0x297c
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.byte	0x99
	.uaword	0x2b9f
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
	.uaword	0x2b36
	.uleb128 0x8
	.byte	0x8
	.byte	0x2
	.byte	0xaa
	.uaword	0x2bd6
	.uleb128 0xa
	.string	"port"
	.byte	0x2
	.byte	0xac
	.uaword	0x26c2
	.byte	0
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x2
	.byte	0xad
	.uaword	0x27c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Pin"
	.byte	0x2
	.byte	0xae
	.uaword	0x2bb4
	.uleb128 0xb
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.uaword	0x2c39
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
	.uaword	0x2be9
	.uleb128 0xb
	.byte	0x1
	.byte	0xa
	.byte	0x64
	.uaword	0x2d28
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
	.uaword	0x2c4b
	.uleb128 0xd
	.string	"_Ifx_VADC_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x31
	.uaword	0x2f54
	.uleb128 0xe
	.string	"EN0"
	.byte	0xb
	.byte	0x33
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0xb
	.byte	0x34
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0xb
	.byte	0x35
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0xb
	.byte	0x36
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0xb
	.byte	0x37
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0xb
	.byte	0x38
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0xb
	.byte	0x39
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0xb
	.byte	0x3a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0xb
	.byte	0x3b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0xb
	.byte	0x3c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0xb
	.byte	0x3d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0xb
	.byte	0x3e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0xb
	.byte	0x3f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0xb
	.byte	0x40
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0xb
	.byte	0x41
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0xb
	.byte	0x42
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0xb
	.byte	0x43
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0xb
	.byte	0x44
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0xb
	.byte	0x45
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0xb
	.byte	0x46
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0xb
	.byte	0x47
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0xb
	.byte	0x48
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0xb
	.byte	0x49
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0xb
	.byte	0x4a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0xb
	.byte	0x4b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0xb
	.byte	0x4c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0xb
	.byte	0x4d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0xb
	.byte	0x4e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0xb
	.byte	0x4f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0xb
	.byte	0x50
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0xb
	.byte	0x51
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0xb
	.byte	0x52
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCEN0_Bits"
	.byte	0xb
	.byte	0x53
	.uaword	0x2d3f
	.uleb128 0xd
	.string	"_Ifx_VADC_ACCPROT0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.uaword	0x30cf
	.uleb128 0xe
	.string	"APC0"
	.byte	0xb
	.byte	0x58
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"APC1"
	.byte	0xb
	.byte	0x59
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"APC2"
	.byte	0xb
	.byte	0x5a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"APC3"
	.byte	0xb
	.byte	0x5b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"APC4"
	.byte	0xb
	.byte	0x5c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"APC5"
	.byte	0xb
	.byte	0x5d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"APC6"
	.byte	0xb
	.byte	0x5e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"APC7"
	.byte	0xb
	.byte	0x5f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0x60
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"APEM"
	.byte	0xb
	.byte	0x61
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"API0"
	.byte	0xb
	.byte	0x62
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"API1"
	.byte	0xb
	.byte	0x63
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"API2"
	.byte	0xb
	.byte	0x64
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"API3"
	.byte	0xb
	.byte	0x65
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"API4"
	.byte	0xb
	.byte	0x66
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"API5"
	.byte	0xb
	.byte	0x67
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"API6"
	.byte	0xb
	.byte	0x68
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"API7"
	.byte	0xb
	.byte	0x69
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0xb
	.byte	0x6a
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"APGC"
	.byte	0xb
	.byte	0x6b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT0_Bits"
	.byte	0xb
	.byte	0x6c
	.uaword	0x2f70
	.uleb128 0xd
	.string	"_Ifx_VADC_ACCPROT1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.uaword	0x323c
	.uleb128 0xe
	.string	"APS0"
	.byte	0xb
	.byte	0x71
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"APS1"
	.byte	0xb
	.byte	0x72
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"APS2"
	.byte	0xb
	.byte	0x73
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"APS3"
	.byte	0xb
	.byte	0x74
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"APS4"
	.byte	0xb
	.byte	0x75
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"APS5"
	.byte	0xb
	.byte	0x76
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"APS6"
	.byte	0xb
	.byte	0x77
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"APS7"
	.byte	0xb
	.byte	0x78
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0x79
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"APTF"
	.byte	0xb
	.byte	0x7a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"APR0"
	.byte	0xb
	.byte	0x7b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"APR1"
	.byte	0xb
	.byte	0x7c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"APR2"
	.byte	0xb
	.byte	0x7d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"APR3"
	.byte	0xb
	.byte	0x7e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"APR4"
	.byte	0xb
	.byte	0x7f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"APR5"
	.byte	0xb
	.byte	0x80
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"APR6"
	.byte	0xb
	.byte	0x81
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"APR7"
	.byte	0xb
	.byte	0x82
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0xb
	.byte	0x83
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT1_Bits"
	.byte	0xb
	.byte	0x84
	.uaword	0x30ed
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x87
	.uaword	0x3329
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0xb
	.byte	0x89
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xb
	.byte	0x8a
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"XTSEL"
	.byte	0xb
	.byte	0x8b
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"XTLVL"
	.byte	0xb
	.byte	0x8c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0xb
	.byte	0x8d
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"XTWC"
	.byte	0xb
	.byte	0x8e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GTSEL"
	.byte	0xb
	.byte	0x8f
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"GTLVL"
	.byte	0xb
	.byte	0x90
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF17
	.byte	0xb
	.byte	0x91
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"GTWC"
	.byte	0xb
	.byte	0x92
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0xb
	.byte	0x93
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSCTRL_Bits"
	.byte	0xb
	.byte	0x94
	.uaword	0x325a
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSMR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x97
	.uaword	0x3422
	.uleb128 0xe
	.string	"ENGT"
	.byte	0xb
	.byte	0x99
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ENTR"
	.byte	0xb
	.byte	0x9a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ENSI"
	.byte	0xb
	.byte	0x9b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SCAN"
	.byte	0xb
	.byte	0x9c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"LDM"
	.byte	0xb
	.byte	0x9d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0xb
	.byte	0x9e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"REQGT"
	.byte	0xb
	.byte	0x9f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CLRPND"
	.byte	0xb
	.byte	0xa0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LDEV"
	.byte	0xb
	.byte	0xa1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0xb
	.byte	0xa2
	.uaword	0x211
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF19
	.byte	0xb
	.byte	0xa3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.uaword	.LASF20
	.byte	0xb
	.byte	0xa4
	.uaword	0x211
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSMR_Bits"
	.byte	0xb
	.byte	0xa5
	.uaword	0x3346
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSPND_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa8
	.uaword	0x346f
	.uleb128 0xe
	.string	"CHPNDGy"
	.byte	0xb
	.byte	0xaa
	.uaword	0x211
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSPND_Bits"
	.byte	0xb
	.byte	0xab
	.uaword	0x343d
	.uleb128 0xd
	.string	"_Ifx_VADC_BRSSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xae
	.uaword	0x34bd
	.uleb128 0xe
	.string	"CHSELGy"
	.byte	0xb
	.byte	0xb0
	.uaword	0x211
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSSEL_Bits"
	.byte	0xb
	.byte	0xb1
	.uaword	0x348b
	.uleb128 0xd
	.string	"_Ifx_VADC_CLC_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb4
	.uaword	0x3543
	.uleb128 0xe
	.string	"DISR"
	.byte	0xb
	.byte	0xb6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"DISS"
	.byte	0xb
	.byte	0xb7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0xb
	.byte	0xb8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EDIS"
	.byte	0xb
	.byte	0xb9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xb
	.byte	0xba
	.uaword	0x211
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_CLC_Bits"
	.byte	0xb
	.byte	0xbb
	.uaword	0x34d9
	.uleb128 0xd
	.string	"_Ifx_VADC_EMUXSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xbe
	.uaword	0x35b3
	.uleb128 0xe
	.string	"EMUXGRP0"
	.byte	0xb
	.byte	0xc0
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EMUXGRP1"
	.byte	0xb
	.byte	0xc1
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0xc2
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_EMUXSEL_Bits"
	.byte	0xb
	.byte	0xc3
	.uaword	0x355c
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ALIAS_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc6
	.uaword	0x3632
	.uleb128 0xe
	.string	"ALIAS0"
	.byte	0xb
	.byte	0xc8
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.uaword	.LASF21
	.byte	0xb
	.byte	0xc9
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ALIAS1"
	.byte	0xb
	.byte	0xca
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF22
	.byte	0xb
	.byte	0xcb
	.uaword	0x211
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ALIAS_Bits"
	.byte	0xb
	.byte	0xcc
	.uaword	0x35d0
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ARBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xcf
	.uaword	0x376b
	.uleb128 0xe
	.string	"ANONC"
	.byte	0xb
	.byte	0xd1
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0xb
	.byte	0xd2
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"ARBRND"
	.byte	0xb
	.byte	0xd3
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0xb
	.byte	0xd4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ARBM"
	.byte	0xb
	.byte	0xd5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xb
	.byte	0xd6
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ANONS"
	.byte	0xb
	.byte	0xd7
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"CSRC"
	.byte	0xb
	.byte	0xd8
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CHNR"
	.byte	0xb
	.byte	0xd9
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"SYNRUN"
	.byte	0xb
	.byte	0xda
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"reserved_26"
	.byte	0xb
	.byte	0xdb
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CAL"
	.byte	0xb
	.byte	0xdc
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"CALS"
	.byte	0xb
	.byte	0xdd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"BUSY"
	.byte	0xb
	.byte	0xde
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SAMPLE"
	.byte	0xb
	.byte	0xdf
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBCFG_Bits"
	.byte	0xb
	.byte	0xe0
	.uaword	0x364f
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ARBPR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xe3
	.uaword	0x388a
	.uleb128 0xe
	.string	"PRIO0"
	.byte	0xb
	.byte	0xe5
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0xb
	.byte	0xe6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"CSM0"
	.byte	0xb
	.byte	0xe7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PRIO1"
	.byte	0xb
	.byte	0xe8
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0xb
	.byte	0xe9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"CSM1"
	.byte	0xb
	.byte	0xea
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PRIO2"
	.byte	0xb
	.byte	0xeb
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0xb
	.byte	0xec
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"CSM2"
	.byte	0xb
	.byte	0xed
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0xb
	.byte	0xee
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"ASEN0"
	.byte	0xb
	.byte	0xef
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"ASEN1"
	.byte	0xb
	.byte	0xf0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"ASEN2"
	.byte	0xb
	.byte	0xf1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0xb
	.byte	0xf2
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBPR_Bits"
	.byte	0xb
	.byte	0xf3
	.uaword	0x3789
	.uleb128 0xd
	.string	"_Ifx_VADC_G_ASCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xf6
	.uaword	0x39ac
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0xb
	.byte	0xf8
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xb
	.byte	0xf9
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"XTSEL"
	.byte	0xb
	.byte	0xfa
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"XTLVL"
	.byte	0xb
	.byte	0xfb
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0xb
	.byte	0xfc
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"XTWC"
	.byte	0xb
	.byte	0xfd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GTSEL"
	.byte	0xb
	.byte	0xfe
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"GTLVL"
	.byte	0xb
	.byte	0xff
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x100
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x102
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x103
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x104
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x105
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASCTRL_Bits"
	.byte	0xb
	.uahalf	0x106
	.uaword	0x38a7
	.uleb128 0x13
	.string	"_Ifx_VADC_G_ASMR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x109
	.uaword	0x3ab5
	.uleb128 0x10
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x10c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x10d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SCAN"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"LDM"
	.byte	0xb
	.uahalf	0x10f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x110
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x111
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CLRPND"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"LDEV"
	.byte	0xb
	.uahalf	0x113
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x114
	.uaword	0x211
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x115
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x116
	.uaword	0x211
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASMR_Bits"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x39cb
	.uleb128 0x13
	.string	"_Ifx_VADC_G_ASPND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x3b05
	.uleb128 0x10
	.string	"CHPND"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0x211
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASPND_Bits"
	.byte	0xb
	.uahalf	0x11d
	.uaword	0x3ad2
	.uleb128 0x13
	.string	"_Ifx_VADC_G_ASSEL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x120
	.uaword	0x3b56
	.uleb128 0x10
	.string	"CHSEL"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x211
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASSEL_Bits"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x3b23
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x126
	.uaword	0x3c8f
	.uleb128 0x10
	.string	"BFL0"
	.byte	0xb
	.uahalf	0x128
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"BFL1"
	.byte	0xb
	.uahalf	0x129
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"BFL2"
	.byte	0xb
	.uahalf	0x12a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"BFL3"
	.byte	0xb
	.uahalf	0x12b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x12c
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"BFA0"
	.byte	0xb
	.uahalf	0x12d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"BFA1"
	.byte	0xb
	.uahalf	0x12e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"BFA2"
	.byte	0xb
	.uahalf	0x12f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"BFA3"
	.byte	0xb
	.uahalf	0x130
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x131
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"BFI0"
	.byte	0xb
	.uahalf	0x132
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"BFI1"
	.byte	0xb
	.uahalf	0x133
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"BFI2"
	.byte	0xb
	.uahalf	0x134
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"BFI3"
	.byte	0xb
	.uahalf	0x135
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x136
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFL_Bits"
	.byte	0xb
	.uahalf	0x137
	.uaword	0x3b74
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFLC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x13a
	.uaword	0x3d1f
	.uleb128 0x10
	.string	"BFM0"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"BFM1"
	.byte	0xb
	.uahalf	0x13d
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"BFM2"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"BFM3"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x140
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLC_Bits"
	.byte	0xb
	.uahalf	0x141
	.uaword	0x3cab
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFLNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x144
	.uaword	0x3db9
	.uleb128 0x10
	.string	"BFL0NP"
	.byte	0xb
	.uahalf	0x146
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"BFL1NP"
	.byte	0xb
	.uahalf	0x147
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"BFL2NP"
	.byte	0xb
	.uahalf	0x148
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"BFL3NP"
	.byte	0xb
	.uahalf	0x149
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x14a
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLNP_Bits"
	.byte	0xb
	.uahalf	0x14b
	.uaword	0x3d3c
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BFLS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x14e
	.uaword	0x3e9f
	.uleb128 0x10
	.string	"BFC0"
	.byte	0xb
	.uahalf	0x150
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"BFC1"
	.byte	0xb
	.uahalf	0x151
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"BFC2"
	.byte	0xb
	.uahalf	0x152
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"BFC3"
	.byte	0xb
	.uahalf	0x153
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x154
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"BFS0"
	.byte	0xb
	.uahalf	0x155
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"BFS1"
	.byte	0xb
	.uahalf	0x156
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"BFS2"
	.byte	0xb
	.uahalf	0x157
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"BFS3"
	.byte	0xb
	.uahalf	0x158
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x159
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLS_Bits"
	.byte	0xb
	.uahalf	0x15a
	.uaword	0x3dd7
	.uleb128 0x13
	.string	"_Ifx_VADC_G_BOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x15d
	.uaword	0x3f1d
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x15f
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x160
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x161
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x162
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BOUND_Bits"
	.byte	0xb
	.uahalf	0x163
	.uaword	0x3ebc
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x166
	.uaword	0x3ff5
	.uleb128 0x10
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x168
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x169
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x16a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x16b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x16c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x16d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x16e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x16f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x170
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFCLR_Bits"
	.byte	0xb
	.uahalf	0x171
	.uaword	0x3f3b
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x174
	.uaword	0x40ce
	.uleb128 0x10
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x176
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x177
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x178
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x179
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x17a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x17b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x17e
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFLAG_Bits"
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x4014
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CEVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x182
	.uaword	0x41a7
	.uleb128 0x10
	.string	"CEV0NP"
	.byte	0xb
	.uahalf	0x184
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CEV1NP"
	.byte	0xb
	.uahalf	0x185
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CEV2NP"
	.byte	0xb
	.uahalf	0x186
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"CEV3NP"
	.byte	0xb
	.uahalf	0x187
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"CEV4NP"
	.byte	0xb
	.uahalf	0x188
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CEV5NP"
	.byte	0xb
	.uahalf	0x189
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"CEV6NP"
	.byte	0xb
	.uahalf	0x18a
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CEV7NP"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEVNP0_Bits"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0x40ed
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CHASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x18f
	.uaword	0x445d
	.uleb128 0x10
	.string	"ASSCH0"
	.byte	0xb
	.uahalf	0x191
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"ASSCH1"
	.byte	0xb
	.uahalf	0x192
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ASSCH2"
	.byte	0xb
	.uahalf	0x193
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"ASSCH3"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"ASSCH4"
	.byte	0xb
	.uahalf	0x195
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"ASSCH5"
	.byte	0xb
	.uahalf	0x196
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ASSCH6"
	.byte	0xb
	.uahalf	0x197
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"ASSCH7"
	.byte	0xb
	.uahalf	0x198
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"ASSCH8"
	.byte	0xb
	.uahalf	0x199
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"ASSCH9"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ASSCH10"
	.byte	0xb
	.uahalf	0x19b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"ASSCH11"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"ASSCH12"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"ASSCH13"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"ASSCH14"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"ASSCH15"
	.byte	0xb
	.uahalf	0x1a0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"ASSCH16"
	.byte	0xb
	.uahalf	0x1a1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"ASSCH17"
	.byte	0xb
	.uahalf	0x1a2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"ASSCH18"
	.byte	0xb
	.uahalf	0x1a3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"ASSCH19"
	.byte	0xb
	.uahalf	0x1a4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"ASSCH20"
	.byte	0xb
	.uahalf	0x1a5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"ASSCH21"
	.byte	0xb
	.uahalf	0x1a6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"ASSCH22"
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"ASSCH23"
	.byte	0xb
	.uahalf	0x1a8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"ASSCH24"
	.byte	0xb
	.uahalf	0x1a9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"ASSCH25"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"ASSCH26"
	.byte	0xb
	.uahalf	0x1ab
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"ASSCH27"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"ASSCH28"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"ASSCH29"
	.byte	0xb
	.uahalf	0x1ae
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"ASSCH30"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"ASSCH31"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHASS_Bits"
	.byte	0xb
	.uahalf	0x1b1
	.uaword	0x41c6
	.uleb128 0x13
	.string	"_Ifx_VADC_G_CHCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1b4
	.uaword	0x45b9
	.uleb128 0x10
	.string	"ICLSEL"
	.byte	0xb
	.uahalf	0x1b6
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"BNDSELL"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"BNDSELU"
	.byte	0xb
	.uahalf	0x1b9
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CHEVMODE"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SYNC"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"REFSEL"
	.byte	0xb
	.uahalf	0x1bc
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"BNDSELX"
	.byte	0xb
	.uahalf	0x1bd
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RESREG"
	.byte	0xb
	.uahalf	0x1be
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RESTBS"
	.byte	0xb
	.uahalf	0x1bf
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"RESPOS"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x1c1
	.uaword	0x211
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"BWDCH"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"BWDEN"
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"reserved_31"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHCTR_Bits"
	.byte	0xb
	.uahalf	0x1c5
	.uaword	0x447b
	.uleb128 0x13
	.string	"_Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1c8
	.uaword	0x46b4
	.uleb128 0x10
	.string	"EMUXSET"
	.byte	0xb
	.uahalf	0x1ca
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x1cb
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EMUXACT"
	.byte	0xb
	.uahalf	0x1cc
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x1cd
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EMUXCH"
	.byte	0xb
	.uahalf	0x1ce
	.uaword	0x211
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EMUXMODE"
	.byte	0xb
	.uahalf	0x1cf
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EMXCOD"
	.byte	0xb
	.uahalf	0x1d0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EMXST"
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EMXCSS"
	.byte	0xb
	.uahalf	0x1d2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EMXWC"
	.byte	0xb
	.uahalf	0x1d3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x45d7
	.uleb128 0x13
	.string	"_Ifx_VADC_G_Q0R0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d7
	.uaword	0x4753
	.uleb128 0x11
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RF"
	.byte	0xb
	.uahalf	0x1da
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1db
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"V"
	.byte	0xb
	.uahalf	0x1dd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x1de
	.uaword	0x211
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_Q0R0_Bits"
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x46d4
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QBUR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1e2
	.uaword	0x47f0
	.uleb128 0x11
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x1e4
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RF"
	.byte	0xb
	.uahalf	0x1e5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1e6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1e7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"V"
	.byte	0xb
	.uahalf	0x1e8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x1e9
	.uaword	0x211
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QBUR0_Bits"
	.byte	0xb
	.uahalf	0x1ea
	.uaword	0x4770
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QCTRL0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1ed
	.uaword	0x491c
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x1ef
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x1f0
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"XTSEL"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"XTLVL"
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"XTWC"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"GTSEL"
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"GTLVL"
	.byte	0xb
	.uahalf	0x1f6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x1f8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QCTRL0_Bits"
	.byte	0xb
	.uahalf	0x1fd
	.uaword	0x480e
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QINR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x200
	.uaword	0x49ad
	.uleb128 0x11
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x202
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RF"
	.byte	0xb
	.uahalf	0x203
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x204
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x205
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x206
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QINR0_Bits"
	.byte	0xb
	.uahalf	0x207
	.uaword	0x493b
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QMR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x20a
	.uaword	0x4a91
	.uleb128 0x10
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x20c
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x20d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x20e
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CLRV"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TREV"
	.byte	0xb
	.uahalf	0x210
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"FLUSH"
	.byte	0xb
	.uahalf	0x211
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"CEV"
	.byte	0xb
	.uahalf	0x212
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x213
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x214
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x215
	.uaword	0x211
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QMR0_Bits"
	.byte	0xb
	.uahalf	0x216
	.uaword	0x49cb
	.uleb128 0x13
	.string	"_Ifx_VADC_G_QSR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x219
	.uaword	0x4b42
	.uleb128 0x10
	.string	"FILL"
	.byte	0xb
	.uahalf	0x21b
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x21c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EMPTY"
	.byte	0xb
	.uahalf	0x21d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x21e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x21f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EV"
	.byte	0xb
	.uahalf	0x220
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x221
	.uaword	0x211
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QSR0_Bits"
	.byte	0xb
	.uahalf	0x222
	.uaword	0x4aae
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x225
	.uaword	0x4c02
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x227
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x228
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"DMM"
	.byte	0xb
	.uahalf	0x229
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x22a
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"WFR"
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"FEN"
	.byte	0xb
	.uahalf	0x22c
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x22d
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x22e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RCR_Bits"
	.byte	0xb
	.uahalf	0x22f
	.uaword	0x4b5f
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x232
	.uaword	0x4d66
	.uleb128 0x10
	.string	"REV0"
	.byte	0xb
	.uahalf	0x234
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"REV1"
	.byte	0xb
	.uahalf	0x235
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"REV2"
	.byte	0xb
	.uahalf	0x236
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"REV3"
	.byte	0xb
	.uahalf	0x237
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV4"
	.byte	0xb
	.uahalf	0x238
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"REV5"
	.byte	0xb
	.uahalf	0x239
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"REV6"
	.byte	0xb
	.uahalf	0x23a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REV7"
	.byte	0xb
	.uahalf	0x23b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV8"
	.byte	0xb
	.uahalf	0x23c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"REV9"
	.byte	0xb
	.uahalf	0x23d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"REV10"
	.byte	0xb
	.uahalf	0x23e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"REV11"
	.byte	0xb
	.uahalf	0x23f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV12"
	.byte	0xb
	.uahalf	0x240
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"REV13"
	.byte	0xb
	.uahalf	0x241
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"REV14"
	.byte	0xb
	.uahalf	0x242
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"REV15"
	.byte	0xb
	.uahalf	0x243
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x244
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFCLR_Bits"
	.byte	0xb
	.uahalf	0x245
	.uaword	0x4c1e
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x248
	.uaword	0x4ecd
	.uleb128 0x10
	.string	"REV0"
	.byte	0xb
	.uahalf	0x24a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"REV1"
	.byte	0xb
	.uahalf	0x24b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"REV2"
	.byte	0xb
	.uahalf	0x24c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"REV3"
	.byte	0xb
	.uahalf	0x24d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV4"
	.byte	0xb
	.uahalf	0x24e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"REV5"
	.byte	0xb
	.uahalf	0x24f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"REV6"
	.byte	0xb
	.uahalf	0x250
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"REV7"
	.byte	0xb
	.uahalf	0x251
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV8"
	.byte	0xb
	.uahalf	0x252
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"REV9"
	.byte	0xb
	.uahalf	0x253
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"REV10"
	.byte	0xb
	.uahalf	0x254
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"REV11"
	.byte	0xb
	.uahalf	0x255
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV12"
	.byte	0xb
	.uahalf	0x256
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"REV13"
	.byte	0xb
	.uahalf	0x257
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"REV14"
	.byte	0xb
	.uahalf	0x258
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"REV15"
	.byte	0xb
	.uahalf	0x259
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x25a
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFLAG_Bits"
	.byte	0xb
	.uahalf	0x25b
	.uaword	0x4d85
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x4f7c
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x260
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRC"
	.byte	0xb
	.uahalf	0x261
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x262
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x263
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x264
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x265
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x266
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RES_Bits"
	.byte	0xb
	.uahalf	0x267
	.uaword	0x4eec
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x26a
	.uaword	0x5029
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x26c
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRC"
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x26e
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x26f
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x270
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x271
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x272
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RESD_Bits"
	.byte	0xb
	.uahalf	0x273
	.uaword	0x4f98
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x276
	.uaword	0x5100
	.uleb128 0x10
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x278
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV1NP"
	.byte	0xb
	.uahalf	0x279
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV2NP"
	.byte	0xb
	.uahalf	0x27a
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV3NP"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"REV4NP"
	.byte	0xb
	.uahalf	0x27c
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"REV5NP"
	.byte	0xb
	.uahalf	0x27d
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"REV6NP"
	.byte	0xb
	.uahalf	0x27e
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"REV7NP"
	.byte	0xb
	.uahalf	0x27f
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP0_Bits"
	.byte	0xb
	.uahalf	0x280
	.uaword	0x5046
	.uleb128 0x13
	.string	"_Ifx_VADC_G_REVNP1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x283
	.uaword	0x51df
	.uleb128 0x10
	.string	"REV8NP"
	.byte	0xb
	.uahalf	0x285
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"REV9NP"
	.byte	0xb
	.uahalf	0x286
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REV10NP"
	.byte	0xb
	.uahalf	0x287
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REV11NP"
	.byte	0xb
	.uahalf	0x288
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"REV12NP"
	.byte	0xb
	.uahalf	0x289
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"REV13NP"
	.byte	0xb
	.uahalf	0x28a
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"REV14NP"
	.byte	0xb
	.uahalf	0x28b
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"REV15NP"
	.byte	0xb
	.uahalf	0x28c
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP1_Bits"
	.byte	0xb
	.uahalf	0x28d
	.uaword	0x511f
	.uleb128 0x13
	.string	"_Ifx_VADC_G_RRASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x290
	.uaword	0x5365
	.uleb128 0x10
	.string	"ASSRR0"
	.byte	0xb
	.uahalf	0x292
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"ASSRR1"
	.byte	0xb
	.uahalf	0x293
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"ASSRR2"
	.byte	0xb
	.uahalf	0x294
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"ASSRR3"
	.byte	0xb
	.uahalf	0x295
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"ASSRR4"
	.byte	0xb
	.uahalf	0x296
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"ASSRR5"
	.byte	0xb
	.uahalf	0x297
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"ASSRR6"
	.byte	0xb
	.uahalf	0x298
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"ASSRR7"
	.byte	0xb
	.uahalf	0x299
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"ASSRR8"
	.byte	0xb
	.uahalf	0x29a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"ASSRR9"
	.byte	0xb
	.uahalf	0x29b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ASSRR10"
	.byte	0xb
	.uahalf	0x29c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"ASSRR11"
	.byte	0xb
	.uahalf	0x29d
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"ASSRR12"
	.byte	0xb
	.uahalf	0x29e
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"ASSRR13"
	.byte	0xb
	.uahalf	0x29f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"ASSRR14"
	.byte	0xb
	.uahalf	0x2a0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"ASSRR15"
	.byte	0xb
	.uahalf	0x2a1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x2a2
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RRASS_Bits"
	.byte	0xb
	.uahalf	0x2a3
	.uaword	0x51fe
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2a6
	.uaword	0x53d7
	.uleb128 0x10
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x2a9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2aa
	.uaword	0x211
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFCLR_Bits"
	.byte	0xb
	.uahalf	0x2ab
	.uaword	0x5383
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ae
	.uaword	0x544a
	.uleb128 0x10
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x2b0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x2b1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2b2
	.uaword	0x211
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFLAG_Bits"
	.byte	0xb
	.uahalf	0x2b3
	.uaword	0x53f6
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2b6
	.uaword	0x54c0
	.uleb128 0x10
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x2b8
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEV1NP"
	.byte	0xb
	.uahalf	0x2b9
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x2ba
	.uaword	0x211
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEVNP_Bits"
	.byte	0xb
	.uahalf	0x2bb
	.uaword	0x5469
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SRACT_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2be
	.uaword	0x55af
	.uleb128 0x10
	.string	"AGSR0"
	.byte	0xb
	.uahalf	0x2c0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"AGSR1"
	.byte	0xb
	.uahalf	0x2c1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"AGSR2"
	.byte	0xb
	.uahalf	0x2c2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"AGSR3"
	.byte	0xb
	.uahalf	0x2c3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x2c4
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"ASSR0"
	.byte	0xb
	.uahalf	0x2c5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"ASSR1"
	.byte	0xb
	.uahalf	0x2c6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ASSR2"
	.byte	0xb
	.uahalf	0x2c7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"ASSR3"
	.byte	0xb
	.uahalf	0x2c8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x2c9
	.uaword	0x211
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SRACT_Bits"
	.byte	0xb
	.uahalf	0x2ca
	.uaword	0x54de
	.uleb128 0x13
	.string	"_Ifx_VADC_G_SYNCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2cd
	.uaword	0x565a
	.uleb128 0x10
	.string	"STSEL"
	.byte	0xb
	.uahalf	0x2cf
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2d0
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EVALR1"
	.byte	0xb
	.uahalf	0x2d1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EVALR2"
	.byte	0xb
	.uahalf	0x2d2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EVALR3"
	.byte	0xb
	.uahalf	0x2d3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x2d4
	.uaword	0x211
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SYNCTR_Bits"
	.byte	0xb
	.uahalf	0x2d5
	.uaword	0x55cd
	.uleb128 0x13
	.string	"_Ifx_VADC_G_VFR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2d8
	.uaword	0x57ae
	.uleb128 0x10
	.string	"VF0"
	.byte	0xb
	.uahalf	0x2da
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"VF1"
	.byte	0xb
	.uahalf	0x2db
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"VF2"
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"VF3"
	.byte	0xb
	.uahalf	0x2dd
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"VF4"
	.byte	0xb
	.uahalf	0x2de
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"VF5"
	.byte	0xb
	.uahalf	0x2df
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"VF6"
	.byte	0xb
	.uahalf	0x2e0
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"VF7"
	.byte	0xb
	.uahalf	0x2e1
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"VF8"
	.byte	0xb
	.uahalf	0x2e2
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"VF9"
	.byte	0xb
	.uahalf	0x2e3
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"VF10"
	.byte	0xb
	.uahalf	0x2e4
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"VF11"
	.byte	0xb
	.uahalf	0x2e5
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"VF12"
	.byte	0xb
	.uahalf	0x2e6
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"VF13"
	.byte	0xb
	.uahalf	0x2e7
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"VF14"
	.byte	0xb
	.uahalf	0x2e8
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"VF15"
	.byte	0xb
	.uahalf	0x2e9
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x2ea
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_VFR_Bits"
	.byte	0xb
	.uahalf	0x2eb
	.uaword	0x5679
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBBOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x582d
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x2f1
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x2f2
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x2f3
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBBOUND_Bits"
	.byte	0xb
	.uahalf	0x2f4
	.uaword	0x57ca
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2f7
	.uaword	0x59c2
	.uleb128 0x10
	.string	"DIVA"
	.byte	0xb
	.uahalf	0x2f9
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x2fa
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"DCMSB"
	.byte	0xb
	.uahalf	0x2fb
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"DIVD"
	.byte	0xb
	.uahalf	0x2fc
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x2fd
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"REFPC"
	.byte	0xb
	.uahalf	0x2fe
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"LOSUP"
	.byte	0xb
	.uahalf	0x300
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"DIVWC"
	.byte	0xb
	.uahalf	0x301
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DPCAL0"
	.byte	0xb
	.uahalf	0x302
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"DPCAL1"
	.byte	0xb
	.uahalf	0x303
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"DPCAL2"
	.byte	0xb
	.uahalf	0x304
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"DPCAL3"
	.byte	0xb
	.uahalf	0x305
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"DPCAL4"
	.byte	0xb
	.uahalf	0x306
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"DPCAL5"
	.byte	0xb
	.uahalf	0x307
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"DPCAL6"
	.byte	0xb
	.uahalf	0x308
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"DPCAL7"
	.byte	0xb
	.uahalf	0x309
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x30a
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"SUCAL"
	.byte	0xb
	.uahalf	0x30b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBCFG_Bits"
	.byte	0xb
	.uahalf	0x30c
	.uaword	0x584d
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x30f
	.uaword	0x5a95
	.uleb128 0x10
	.string	"SEVGLB"
	.byte	0xb
	.uahalf	0x311
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x312
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"REVGLB"
	.byte	0xb
	.uahalf	0x313
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x314
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"SEVGLBCLR"
	.byte	0xb
	.uahalf	0x315
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x316
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"REVGLBCLR"
	.byte	0xb
	.uahalf	0x317
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x318
	.uaword	0x211
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0xb
	.uahalf	0x319
	.uaword	0x59e0
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x31c
	.uaword	0x5b1d
	.uleb128 0x10
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x31e
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x31f
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x320
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x321
	.uaword	0x211
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEVNP_Bits"
	.byte	0xb
	.uahalf	0x322
	.uaword	0x5ab5
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBRCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x325
	.uaword	0x5bc1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x327
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x328
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x329
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"WFR"
	.byte	0xb
	.uahalf	0x32a
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x211
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x32c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRCR_Bits"
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x5b3c
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBRES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x330
	.uaword	0x5c71
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x332
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"GNR"
	.byte	0xb
	.uahalf	0x333
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x334
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x335
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x336
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x337
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x338
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRES_Bits"
	.byte	0xb
	.uahalf	0x339
	.uaword	0x5bdf
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBRESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x33c
	.uaword	0x5d22
	.uleb128 0x11
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x33e
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"GNR"
	.byte	0xb
	.uahalf	0x33f
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x340
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x341
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"CRS"
	.byte	0xb
	.uahalf	0x342
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"FCR"
	.byte	0xb
	.uahalf	0x343
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"VF"
	.byte	0xb
	.uahalf	0x344
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRESD_Bits"
	.byte	0xb
	.uahalf	0x345
	.uaword	0x5c8f
	.uleb128 0x13
	.string	"_Ifx_VADC_GLOBTF_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x348
	.uaword	0x5e32
	.uleb128 0x10
	.string	"CDCH"
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CDGR"
	.byte	0xb
	.uahalf	0x34b
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CDEN"
	.byte	0xb
	.uahalf	0x34c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"CDSEL"
	.byte	0xb
	.uahalf	0x34d
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x34e
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"CDWC"
	.byte	0xb
	.uahalf	0x34f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PDD"
	.byte	0xb
	.uahalf	0x350
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"MDPD"
	.byte	0xb
	.uahalf	0x351
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"MDPU"
	.byte	0xb
	.uahalf	0x352
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"reserved_19"
	.byte	0xb
	.uahalf	0x353
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"MDWC"
	.byte	0xb
	.uahalf	0x354
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x355
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBTF_Bits"
	.byte	0xb
	.uahalf	0x356
	.uaword	0x5d41
	.uleb128 0x13
	.string	"_Ifx_VADC_ICLASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x359
	.uaword	0x5ef1
	.uleb128 0x10
	.string	"STCS"
	.byte	0xb
	.uahalf	0x35b
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x35c
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"CMS"
	.byte	0xb
	.uahalf	0x35d
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x35e
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"STCE"
	.byte	0xb
	.uahalf	0x35f
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x360
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"CME"
	.byte	0xb
	.uahalf	0x361
	.uaword	0x211
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x362
	.uaword	0x211
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ICLASS_Bits"
	.byte	0xb
	.uahalf	0x363
	.uaword	0x5e4f
	.uleb128 0x13
	.string	"_Ifx_VADC_ID_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x366
	.uaword	0x5f63
	.uleb128 0x10
	.string	"MOD_REV"
	.byte	0xb
	.uahalf	0x368
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"MOD_TYPE"
	.byte	0xb
	.uahalf	0x369
	.uaword	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x36a
	.uaword	0x211
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ID_Bits"
	.byte	0xb
	.uahalf	0x36b
	.uaword	0x5f0e
	.uleb128 0x13
	.string	"_Ifx_VADC_KRST0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x36e
	.uaword	0x5fcf
	.uleb128 0x10
	.string	"RST"
	.byte	0xb
	.uahalf	0x370
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RSTSTAT"
	.byte	0xb
	.uahalf	0x371
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x372
	.uaword	0x211
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST0_Bits"
	.byte	0xb
	.uahalf	0x373
	.uaword	0x5f7c
	.uleb128 0x13
	.string	"_Ifx_VADC_KRST1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x376
	.uaword	0x602a
	.uleb128 0x10
	.string	"RST"
	.byte	0xb
	.uahalf	0x378
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x379
	.uaword	0x211
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST1_Bits"
	.byte	0xb
	.uahalf	0x37a
	.uaword	0x5feb
	.uleb128 0x13
	.string	"_Ifx_VADC_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x37d
	.uaword	0x6087
	.uleb128 0x10
	.string	"CLR"
	.byte	0xb
	.uahalf	0x37f
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x380
	.uaword	0x211
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRSTCLR_Bits"
	.byte	0xb
	.uahalf	0x381
	.uaword	0x6046
	.uleb128 0x13
	.string	"_Ifx_VADC_OCS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x384
	.uaword	0x6150
	.uleb128 0x10
	.string	"TGS"
	.byte	0xb
	.uahalf	0x386
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TGB"
	.byte	0xb
	.uahalf	0x387
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TG_P"
	.byte	0xb
	.uahalf	0x388
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x389
	.uaword	0x211
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"SUS"
	.byte	0xb
	.uahalf	0x38a
	.uaword	0x211
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"SUS_P"
	.byte	0xb
	.uahalf	0x38b
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"SUSSTA"
	.byte	0xb
	.uahalf	0x38c
	.uaword	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"reserved_30"
	.byte	0xb
	.uahalf	0x38d
	.uaword	0x211
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_OCS_Bits"
	.byte	0xb
	.uahalf	0x38e
	.uaword	0x60a5
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x396
	.uaword	0x6192
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x398
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x399
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x39a
	.uaword	0x2f54
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ACCEN0"
	.byte	0xb
	.uahalf	0x39b
	.uaword	0x616a
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x39e
	.uaword	0x61d2
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3a0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3a1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3a2
	.uaword	0x30cf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ACCPROT0"
	.byte	0xb
	.uahalf	0x3a3
	.uaword	0x61aa
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3a6
	.uaword	0x6214
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3a8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3a9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3aa
	.uaword	0x323c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ACCPROT1"
	.byte	0xb
	.uahalf	0x3ab
	.uaword	0x61ec
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ae
	.uaword	0x6256
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3b0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3b2
	.uaword	0x3329
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSCTRL"
	.byte	0xb
	.uahalf	0x3b3
	.uaword	0x622e
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3b6
	.uaword	0x6297
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3b8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3b9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3ba
	.uaword	0x3422
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSMR"
	.byte	0xb
	.uahalf	0x3bb
	.uaword	0x626f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3be
	.uaword	0x62d6
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3c0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3c1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3c2
	.uaword	0x346f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSPND"
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x62ae
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3c6
	.uaword	0x6316
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3c8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3c9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3ca
	.uaword	0x34bd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_BRSSEL"
	.byte	0xb
	.uahalf	0x3cb
	.uaword	0x62ee
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ce
	.uaword	0x6356
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3d0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3d1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3d2
	.uaword	0x3543
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_CLC"
	.byte	0xb
	.uahalf	0x3d3
	.uaword	0x632e
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3d6
	.uaword	0x6393
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3d8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3d9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3da
	.uaword	0x35b3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_EMUXSEL"
	.byte	0xb
	.uahalf	0x3db
	.uaword	0x636b
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3de
	.uaword	0x63d4
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3e1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x3632
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ALIAS"
	.byte	0xb
	.uahalf	0x3e3
	.uaword	0x63ac
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3e6
	.uaword	0x6415
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3e8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3e9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3ea
	.uaword	0x376b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ARBCFG"
	.byte	0xb
	.uahalf	0x3eb
	.uaword	0x63ed
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ee
	.uaword	0x6457
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3f0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3f1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3f2
	.uaword	0x388a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ARBPR"
	.byte	0xb
	.uahalf	0x3f3
	.uaword	0x642f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3f6
	.uaword	0x6498
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x3f8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x3f9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x3fa
	.uaword	0x39ac
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASCTRL"
	.byte	0xb
	.uahalf	0x3fb
	.uaword	0x6470
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x3fe
	.uaword	0x64da
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x400
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x401
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x402
	.uaword	0x3ab5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASMR"
	.byte	0xb
	.uahalf	0x403
	.uaword	0x64b2
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x406
	.uaword	0x651a
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x408
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x409
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x40a
	.uaword	0x3b05
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASPND"
	.byte	0xb
	.uahalf	0x40b
	.uaword	0x64f2
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x40e
	.uaword	0x655b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x410
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x411
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x412
	.uaword	0x3b56
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_ASSEL"
	.byte	0xb
	.uahalf	0x413
	.uaword	0x6533
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x416
	.uaword	0x659c
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x418
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x419
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x41a
	.uaword	0x3c8f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFL"
	.byte	0xb
	.uahalf	0x41b
	.uaword	0x6574
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x41e
	.uaword	0x65db
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x420
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x421
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x422
	.uaword	0x3d1f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLC"
	.byte	0xb
	.uahalf	0x423
	.uaword	0x65b3
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x426
	.uaword	0x661b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x428
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x429
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x42a
	.uaword	0x3db9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLNP"
	.byte	0xb
	.uahalf	0x42b
	.uaword	0x65f3
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x42e
	.uaword	0x665c
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x430
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x431
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x432
	.uaword	0x3e9f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BFLS"
	.byte	0xb
	.uahalf	0x433
	.uaword	0x6634
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x436
	.uaword	0x669c
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x438
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x439
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x43a
	.uaword	0x3f1d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_BOUND"
	.byte	0xb
	.uahalf	0x43b
	.uaword	0x6674
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x43e
	.uaword	0x66dd
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x440
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x441
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x442
	.uaword	0x3ff5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFCLR"
	.byte	0xb
	.uahalf	0x443
	.uaword	0x66b5
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x446
	.uaword	0x671f
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x448
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x449
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x44a
	.uaword	0x40ce
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEFLAG"
	.byte	0xb
	.uahalf	0x44b
	.uaword	0x66f7
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x44e
	.uaword	0x6761
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x450
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x451
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x452
	.uaword	0x41a7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CEVNP0"
	.byte	0xb
	.uahalf	0x453
	.uaword	0x6739
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x456
	.uaword	0x67a3
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x458
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x459
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x45a
	.uaword	0x445d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHASS"
	.byte	0xb
	.uahalf	0x45b
	.uaword	0x677b
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x45e
	.uaword	0x67e4
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x460
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x461
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x462
	.uaword	0x45b9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_CHCTR"
	.byte	0xb
	.uahalf	0x463
	.uaword	0x67bc
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x466
	.uaword	0x6825
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x468
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x469
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0x46b4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_EMUXCTR"
	.byte	0xb
	.uahalf	0x46b
	.uaword	0x67fd
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x46e
	.uaword	0x6868
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x470
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x471
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x472
	.uaword	0x4753
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_Q0R0"
	.byte	0xb
	.uahalf	0x473
	.uaword	0x6840
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x476
	.uaword	0x68a8
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x478
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x479
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x47a
	.uaword	0x47f0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QBUR0"
	.byte	0xb
	.uahalf	0x47b
	.uaword	0x6880
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x47e
	.uaword	0x68e9
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x480
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x481
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x482
	.uaword	0x491c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QCTRL0"
	.byte	0xb
	.uahalf	0x483
	.uaword	0x68c1
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x486
	.uaword	0x692b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x488
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x489
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x48a
	.uaword	0x49ad
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QINR0"
	.byte	0xb
	.uahalf	0x48b
	.uaword	0x6903
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x48e
	.uaword	0x696c
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x490
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x491
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x492
	.uaword	0x4a91
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QMR0"
	.byte	0xb
	.uahalf	0x493
	.uaword	0x6944
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x496
	.uaword	0x69ac
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x498
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x499
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x49a
	.uaword	0x4b42
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_QSR0"
	.byte	0xb
	.uahalf	0x49b
	.uaword	0x6984
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x49e
	.uaword	0x69ec
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4a0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4a1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4a2
	.uaword	0x4c02
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RCR"
	.byte	0xb
	.uahalf	0x4a3
	.uaword	0x69c4
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4a6
	.uaword	0x6a2b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4a8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4a9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4aa
	.uaword	0x4d66
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFCLR"
	.byte	0xb
	.uahalf	0x4ab
	.uaword	0x6a03
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ae
	.uaword	0x6a6d
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4b0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4b1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4b2
	.uaword	0x4ecd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REFLAG"
	.byte	0xb
	.uahalf	0x4b3
	.uaword	0x6a45
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4b6
	.uaword	0x6aaf
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4b8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4b9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4ba
	.uaword	0x4f7c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RES"
	.byte	0xb
	.uahalf	0x4bb
	.uaword	0x6a87
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4be
	.uaword	0x6aee
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4c0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4c1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4c2
	.uaword	0x5029
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RESD"
	.byte	0xb
	.uahalf	0x4c3
	.uaword	0x6ac6
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4c6
	.uaword	0x6b2e
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4c8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4c9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4ca
	.uaword	0x5100
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP0"
	.byte	0xb
	.uahalf	0x4cb
	.uaword	0x6b06
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ce
	.uaword	0x6b70
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4d0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4d1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4d2
	.uaword	0x51df
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_REVNP1"
	.byte	0xb
	.uahalf	0x4d3
	.uaword	0x6b48
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4d6
	.uaword	0x6bb2
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4d8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4d9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4da
	.uaword	0x5365
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_RRASS"
	.byte	0xb
	.uahalf	0x4db
	.uaword	0x6b8a
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4de
	.uaword	0x6bf3
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4e0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4e1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4e2
	.uaword	0x53d7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFCLR"
	.byte	0xb
	.uahalf	0x4e3
	.uaword	0x6bcb
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4e6
	.uaword	0x6c35
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4e8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4e9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4ea
	.uaword	0x544a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEFLAG"
	.byte	0xb
	.uahalf	0x4eb
	.uaword	0x6c0d
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ee
	.uaword	0x6c77
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4f0
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4f1
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4f2
	.uaword	0x54c0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SEVNP"
	.byte	0xb
	.uahalf	0x4f3
	.uaword	0x6c4f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4f6
	.uaword	0x6cb8
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x4f8
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x4f9
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x4fa
	.uaword	0x55af
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SRACT"
	.byte	0xb
	.uahalf	0x4fb
	.uaword	0x6c90
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x4fe
	.uaword	0x6cf9
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x500
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x501
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x502
	.uaword	0x565a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_SYNCTR"
	.byte	0xb
	.uahalf	0x503
	.uaword	0x6cd1
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x506
	.uaword	0x6d3b
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x508
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x509
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x50a
	.uaword	0x57ae
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G_VFR"
	.byte	0xb
	.uahalf	0x50b
	.uaword	0x6d13
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x50e
	.uaword	0x6d7a
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x510
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x511
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x512
	.uaword	0x582d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBBOUND"
	.byte	0xb
	.uahalf	0x513
	.uaword	0x6d52
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x516
	.uaword	0x6dbd
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x518
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x519
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x51a
	.uaword	0x59c2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBCFG"
	.byte	0xb
	.uahalf	0x51b
	.uaword	0x6d95
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x51e
	.uaword	0x6dfe
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x520
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x521
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x522
	.uaword	0x5a95
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEFLAG"
	.byte	0xb
	.uahalf	0x523
	.uaword	0x6dd6
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x526
	.uaword	0x6e41
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x528
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x529
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x52a
	.uaword	0x5b1d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBEVNP"
	.byte	0xb
	.uahalf	0x52b
	.uaword	0x6e19
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x52e
	.uaword	0x6e83
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x530
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x531
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x532
	.uaword	0x5bc1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRCR"
	.byte	0xb
	.uahalf	0x533
	.uaword	0x6e5b
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x536
	.uaword	0x6ec4
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x538
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x539
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x53a
	.uaword	0x5c71
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRES"
	.byte	0xb
	.uahalf	0x53b
	.uaword	0x6e9c
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x53e
	.uaword	0x6f05
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x540
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x541
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x542
	.uaword	0x5d22
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBRESD"
	.byte	0xb
	.uahalf	0x543
	.uaword	0x6edd
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x546
	.uaword	0x6f47
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x548
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x549
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x54a
	.uaword	0x5e32
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_GLOBTF"
	.byte	0xb
	.uahalf	0x54b
	.uaword	0x6f1f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x54e
	.uaword	0x6f87
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x550
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x551
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x552
	.uaword	0x5ef1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ICLASS"
	.byte	0xb
	.uahalf	0x553
	.uaword	0x6f5f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x556
	.uaword	0x6fc7
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x558
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x559
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x55a
	.uaword	0x5f63
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_ID"
	.byte	0xb
	.uahalf	0x55b
	.uaword	0x6f9f
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x55e
	.uaword	0x7003
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x560
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x561
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x562
	.uaword	0x5fcf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST0"
	.byte	0xb
	.uahalf	0x563
	.uaword	0x6fdb
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x566
	.uaword	0x7042
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x568
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x569
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x56a
	.uaword	0x602a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRST1"
	.byte	0xb
	.uahalf	0x56b
	.uaword	0x701a
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x56e
	.uaword	0x7081
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x570
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x571
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x572
	.uaword	0x6087
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_KRSTCLR"
	.byte	0xb
	.uahalf	0x573
	.uaword	0x7059
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x576
	.uaword	0x70c2
	.uleb128 0x15
	.string	"U"
	.byte	0xb
	.uahalf	0x578
	.uaword	0x211
	.uleb128 0x15
	.string	"I"
	.byte	0xb
	.uahalf	0x579
	.uaword	0x20a
	.uleb128 0x15
	.string	"B"
	.byte	0xb
	.uahalf	0x57a
	.uaword	0x6150
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_OCS"
	.byte	0xb
	.uahalf	0x57b
	.uaword	0x709a
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.uahalf	0x59e
	.uaword	0x70fd
	.uleb128 0x15
	.string	"QBUR0"
	.byte	0xb
	.uahalf	0x5a0
	.uaword	0x68a8
	.uleb128 0x15
	.string	"QINR0"
	.byte	0xb
	.uahalf	0x5a1
	.uaword	0x692b
	.byte	0
	.uleb128 0x16
	.string	"_Ifx_VADC_G"
	.uahalf	0x400
	.byte	0xb
	.uahalf	0x586
	.uaword	0x74f1
	.uleb128 0x17
	.string	"ARBCFG"
	.byte	0xb
	.uahalf	0x588
	.uaword	0x6415
	.byte	0
	.uleb128 0x17
	.string	"ARBPR"
	.byte	0xb
	.uahalf	0x589
	.uaword	0x6457
	.byte	0x4
	.uleb128 0x17
	.string	"CHASS"
	.byte	0xb
	.uahalf	0x58a
	.uaword	0x67a3
	.byte	0x8
	.uleb128 0x17
	.string	"RRASS"
	.byte	0xb
	.uahalf	0x58b
	.uaword	0x6bb2
	.byte	0xc
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x58c
	.uaword	0x39e
	.byte	0x10
	.uleb128 0x17
	.string	"ICLASS"
	.byte	0xb
	.uahalf	0x58d
	.uaword	0x74f1
	.byte	0x20
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x58e
	.uaword	0x35e
	.byte	0x28
	.uleb128 0x17
	.string	"ALIAS"
	.byte	0xb
	.uahalf	0x58f
	.uaword	0x63d4
	.byte	0x30
	.uleb128 0x17
	.string	"reserved_34"
	.byte	0xb
	.uahalf	0x590
	.uaword	0x258
	.byte	0x34
	.uleb128 0x17
	.string	"BOUND"
	.byte	0xb
	.uahalf	0x591
	.uaword	0x669c
	.byte	0x38
	.uleb128 0x17
	.string	"reserved_3C"
	.byte	0xb
	.uahalf	0x592
	.uaword	0x258
	.byte	0x3c
	.uleb128 0x17
	.string	"SYNCTR"
	.byte	0xb
	.uahalf	0x593
	.uaword	0x6cf9
	.byte	0x40
	.uleb128 0x17
	.string	"reserved_44"
	.byte	0xb
	.uahalf	0x594
	.uaword	0x258
	.byte	0x44
	.uleb128 0x17
	.string	"BFL"
	.byte	0xb
	.uahalf	0x595
	.uaword	0x659c
	.byte	0x48
	.uleb128 0x17
	.string	"BFLS"
	.byte	0xb
	.uahalf	0x596
	.uaword	0x665c
	.byte	0x4c
	.uleb128 0x17
	.string	"BFLC"
	.byte	0xb
	.uahalf	0x597
	.uaword	0x65db
	.byte	0x50
	.uleb128 0x17
	.string	"BFLNP"
	.byte	0xb
	.uahalf	0x598
	.uaword	0x661b
	.byte	0x54
	.uleb128 0x17
	.string	"reserved_58"
	.byte	0xb
	.uahalf	0x599
	.uaword	0x40e
	.byte	0x58
	.uleb128 0x17
	.string	"QCTRL0"
	.byte	0xb
	.uahalf	0x59a
	.uaword	0x68e9
	.byte	0x80
	.uleb128 0x17
	.string	"QMR0"
	.byte	0xb
	.uahalf	0x59b
	.uaword	0x696c
	.byte	0x84
	.uleb128 0x17
	.string	"QSR0"
	.byte	0xb
	.uahalf	0x59c
	.uaword	0x69ac
	.byte	0x88
	.uleb128 0x17
	.string	"Q0R0"
	.byte	0xb
	.uahalf	0x59d
	.uaword	0x6868
	.byte	0x8c
	.uleb128 0x1a
	.uaword	0x70d7
	.byte	0x90
	.uleb128 0x17
	.string	"reserved_94"
	.byte	0xb
	.uahalf	0x5a4
	.uaword	0x38e
	.byte	0x94
	.uleb128 0x17
	.string	"ASCTRL"
	.byte	0xb
	.uahalf	0x5a5
	.uaword	0x6498
	.byte	0xa0
	.uleb128 0x17
	.string	"ASMR"
	.byte	0xb
	.uahalf	0x5a6
	.uaword	0x64da
	.byte	0xa4
	.uleb128 0x17
	.string	"ASSEL"
	.byte	0xb
	.uahalf	0x5a7
	.uaword	0x655b
	.byte	0xa8
	.uleb128 0x17
	.string	"ASPND"
	.byte	0xb
	.uahalf	0x5a8
	.uaword	0x651a
	.byte	0xac
	.uleb128 0x17
	.string	"reserved_B0"
	.byte	0xb
	.uahalf	0x5a9
	.uaword	0x7501
	.byte	0xb0
	.uleb128 0x1b
	.string	"CEFLAG"
	.byte	0xb
	.uahalf	0x5aa
	.uaword	0x671f
	.uahalf	0x100
	.uleb128 0x1b
	.string	"REFLAG"
	.byte	0xb
	.uahalf	0x5ab
	.uaword	0x6a6d
	.uahalf	0x104
	.uleb128 0x1b
	.string	"SEFLAG"
	.byte	0xb
	.uahalf	0x5ac
	.uaword	0x6c35
	.uahalf	0x108
	.uleb128 0x1b
	.string	"reserved_10C"
	.byte	0xb
	.uahalf	0x5ad
	.uaword	0x258
	.uahalf	0x10c
	.uleb128 0x1b
	.string	"CEFCLR"
	.byte	0xb
	.uahalf	0x5ae
	.uaword	0x66dd
	.uahalf	0x110
	.uleb128 0x1b
	.string	"REFCLR"
	.byte	0xb
	.uahalf	0x5af
	.uaword	0x6a2b
	.uahalf	0x114
	.uleb128 0x1b
	.string	"SEFCLR"
	.byte	0xb
	.uahalf	0x5b0
	.uaword	0x6bf3
	.uahalf	0x118
	.uleb128 0x1b
	.string	"reserved_11C"
	.byte	0xb
	.uahalf	0x5b1
	.uaword	0x258
	.uahalf	0x11c
	.uleb128 0x1b
	.string	"CEVNP0"
	.byte	0xb
	.uahalf	0x5b2
	.uaword	0x6761
	.uahalf	0x120
	.uleb128 0x1b
	.string	"reserved_124"
	.byte	0xb
	.uahalf	0x5b3
	.uaword	0x38e
	.uahalf	0x124
	.uleb128 0x1b
	.string	"REVNP0"
	.byte	0xb
	.uahalf	0x5b4
	.uaword	0x6b2e
	.uahalf	0x130
	.uleb128 0x1b
	.string	"REVNP1"
	.byte	0xb
	.uahalf	0x5b5
	.uaword	0x6b70
	.uahalf	0x134
	.uleb128 0x1b
	.string	"reserved_138"
	.byte	0xb
	.uahalf	0x5b6
	.uaword	0x35e
	.uahalf	0x138
	.uleb128 0x1b
	.string	"SEVNP"
	.byte	0xb
	.uahalf	0x5b7
	.uaword	0x6c77
	.uahalf	0x140
	.uleb128 0x1c
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x5b8
	.uaword	0x258
	.uahalf	0x144
	.uleb128 0x1b
	.string	"SRACT"
	.byte	0xb
	.uahalf	0x5b9
	.uaword	0x6cb8
	.uahalf	0x148
	.uleb128 0x1b
	.string	"reserved_14C"
	.byte	0xb
	.uahalf	0x5ba
	.uaword	0x7511
	.uahalf	0x14c
	.uleb128 0x1b
	.string	"EMUXCTR"
	.byte	0xb
	.uahalf	0x5bb
	.uaword	0x6825
	.uahalf	0x170
	.uleb128 0x1b
	.string	"reserved_174"
	.byte	0xb
	.uahalf	0x5bc
	.uaword	0x258
	.uahalf	0x174
	.uleb128 0x1b
	.string	"VFR"
	.byte	0xb
	.uahalf	0x5bd
	.uaword	0x6d3b
	.uahalf	0x178
	.uleb128 0x1b
	.string	"reserved_17C"
	.byte	0xb
	.uahalf	0x5be
	.uaword	0x258
	.uahalf	0x17c
	.uleb128 0x1b
	.string	"CHCTR"
	.byte	0xb
	.uahalf	0x5bf
	.uaword	0x7521
	.uahalf	0x180
	.uleb128 0x1c
	.uaword	.LASF36
	.byte	0xb
	.uahalf	0x5c0
	.uaword	0x41e
	.uahalf	0x1a0
	.uleb128 0x1b
	.string	"RCR"
	.byte	0xb
	.uahalf	0x5c1
	.uaword	0x7531
	.uahalf	0x200
	.uleb128 0x1b
	.string	"reserved_240"
	.byte	0xb
	.uahalf	0x5c2
	.uaword	0x3ae
	.uahalf	0x240
	.uleb128 0x1b
	.string	"RES"
	.byte	0xb
	.uahalf	0x5c3
	.uaword	0x7541
	.uahalf	0x280
	.uleb128 0x1b
	.string	"reserved_2C0"
	.byte	0xb
	.uahalf	0x5c4
	.uaword	0x3ae
	.uahalf	0x2c0
	.uleb128 0x1b
	.string	"RESD"
	.byte	0xb
	.uahalf	0x5c5
	.uaword	0x7551
	.uahalf	0x300
	.uleb128 0x1b
	.string	"reserved_340"
	.byte	0xb
	.uahalf	0x5c6
	.uaword	0x7561
	.uahalf	0x340
	.byte	0
	.uleb128 0x3
	.uaword	0x6f87
	.uaword	0x7501
	.uleb128 0x4
	.uaword	0x268
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7511
	.uleb128 0x4
	.uaword	0x268
	.byte	0x4f
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7521
	.uleb128 0x4
	.uaword	0x268
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.uaword	0x67e4
	.uaword	0x7531
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x69ec
	.uaword	0x7541
	.uleb128 0x4
	.uaword	0x268
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x6aaf
	.uaword	0x7551
	.uleb128 0x4
	.uaword	0x268
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x6aee
	.uaword	0x7561
	.uleb128 0x4
	.uaword	0x268
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7571
	.uleb128 0x4
	.uaword	0x268
	.byte	0xbf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC_G"
	.byte	0xb
	.uahalf	0x5c7
	.uaword	0x7584
	.uleb128 0x19
	.uaword	0x70fd
	.uleb128 0x16
	.string	"_Ifx_VADC"
	.uahalf	0x4000
	.byte	0xb
	.uahalf	0x5d4
	.uaword	0x78b1
	.uleb128 0x17
	.string	"CLC"
	.byte	0xb
	.uahalf	0x5d6
	.uaword	0x6356
	.byte	0
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x5d7
	.uaword	0x258
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0xb
	.uahalf	0x5d8
	.uaword	0x6fc7
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x5d9
	.uaword	0x37e
	.byte	0xc
	.uleb128 0x17
	.string	"OCS"
	.byte	0xb
	.uahalf	0x5da
	.uaword	0x70c2
	.byte	0x28
	.uleb128 0x17
	.string	"KRSTCLR"
	.byte	0xb
	.uahalf	0x5db
	.uaword	0x7081
	.byte	0x2c
	.uleb128 0x17
	.string	"KRST1"
	.byte	0xb
	.uahalf	0x5dc
	.uaword	0x7042
	.byte	0x30
	.uleb128 0x17
	.string	"KRST0"
	.byte	0xb
	.uahalf	0x5dd
	.uaword	0x7003
	.byte	0x34
	.uleb128 0x17
	.string	"reserved_38"
	.byte	0xb
	.uahalf	0x5de
	.uaword	0x258
	.byte	0x38
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x5df
	.uaword	0x6192
	.byte	0x3c
	.uleb128 0x17
	.string	"reserved_40"
	.byte	0xb
	.uahalf	0x5e0
	.uaword	0x3ae
	.byte	0x40
	.uleb128 0x17
	.string	"GLOBCFG"
	.byte	0xb
	.uahalf	0x5e1
	.uaword	0x6dbd
	.byte	0x80
	.uleb128 0x17
	.string	"reserved_84"
	.byte	0xb
	.uahalf	0x5e2
	.uaword	0x258
	.byte	0x84
	.uleb128 0x17
	.string	"ACCPROT0"
	.byte	0xb
	.uahalf	0x5e3
	.uaword	0x61d2
	.byte	0x88
	.uleb128 0x17
	.string	"ACCPROT1"
	.byte	0xb
	.uahalf	0x5e4
	.uaword	0x6214
	.byte	0x8c
	.uleb128 0x17
	.string	"reserved_90"
	.byte	0xb
	.uahalf	0x5e5
	.uaword	0x39e
	.byte	0x90
	.uleb128 0x17
	.string	"GLOBICLASS"
	.byte	0xb
	.uahalf	0x5e6
	.uaword	0x74f1
	.byte	0xa0
	.uleb128 0x17
	.string	"reserved_A8"
	.byte	0xb
	.uahalf	0x5e7
	.uaword	0x39e
	.byte	0xa8
	.uleb128 0x17
	.string	"GLOBBOUND"
	.byte	0xb
	.uahalf	0x5e8
	.uaword	0x6d7a
	.byte	0xb8
	.uleb128 0x17
	.string	"reserved_BC"
	.byte	0xb
	.uahalf	0x5e9
	.uaword	0x7511
	.byte	0xbc
	.uleb128 0x17
	.string	"GLOBEFLAG"
	.byte	0xb
	.uahalf	0x5ea
	.uaword	0x6dfe
	.byte	0xe0
	.uleb128 0x17
	.string	"reserved_E4"
	.byte	0xb
	.uahalf	0x5eb
	.uaword	0x78b1
	.byte	0xe4
	.uleb128 0x1b
	.string	"GLOBEVNP"
	.byte	0xb
	.uahalf	0x5ec
	.uaword	0x6e41
	.uahalf	0x140
	.uleb128 0x1c
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x5ed
	.uaword	0x37e
	.uahalf	0x144
	.uleb128 0x1b
	.string	"GLOBTF"
	.byte	0xb
	.uahalf	0x5ee
	.uaword	0x6f47
	.uahalf	0x160
	.uleb128 0x1b
	.string	"reserved_164"
	.byte	0xb
	.uahalf	0x5ef
	.uaword	0x37e
	.uahalf	0x164
	.uleb128 0x1b
	.string	"BRSSEL"
	.byte	0xb
	.uahalf	0x5f0
	.uaword	0x78c1
	.uahalf	0x180
	.uleb128 0x1c
	.uaword	.LASF36
	.byte	0xb
	.uahalf	0x5f1
	.uaword	0x42e
	.uahalf	0x1a0
	.uleb128 0x1b
	.string	"BRSPND"
	.byte	0xb
	.uahalf	0x5f2
	.uaword	0x78d1
	.uahalf	0x1c0
	.uleb128 0x1b
	.string	"reserved_1E0"
	.byte	0xb
	.uahalf	0x5f3
	.uaword	0x42e
	.uahalf	0x1e0
	.uleb128 0x1b
	.string	"BRSCTRL"
	.byte	0xb
	.uahalf	0x5f4
	.uaword	0x6256
	.uahalf	0x200
	.uleb128 0x1b
	.string	"BRSMR"
	.byte	0xb
	.uahalf	0x5f5
	.uaword	0x6297
	.uahalf	0x204
	.uleb128 0x1b
	.string	"reserved_208"
	.byte	0xb
	.uahalf	0x5f6
	.uaword	0x78e1
	.uahalf	0x208
	.uleb128 0x1b
	.string	"GLOBRCR"
	.byte	0xb
	.uahalf	0x5f7
	.uaword	0x6e83
	.uahalf	0x280
	.uleb128 0x1b
	.string	"reserved_284"
	.byte	0xb
	.uahalf	0x5f8
	.uaword	0x78f1
	.uahalf	0x284
	.uleb128 0x1b
	.string	"GLOBRES"
	.byte	0xb
	.uahalf	0x5f9
	.uaword	0x6ec4
	.uahalf	0x300
	.uleb128 0x1b
	.string	"reserved_304"
	.byte	0xb
	.uahalf	0x5fa
	.uaword	0x78f1
	.uahalf	0x304
	.uleb128 0x1b
	.string	"GLOBRESD"
	.byte	0xb
	.uahalf	0x5fb
	.uaword	0x6f05
	.uahalf	0x380
	.uleb128 0x1b
	.string	"reserved_384"
	.byte	0xb
	.uahalf	0x5fc
	.uaword	0x7901
	.uahalf	0x384
	.uleb128 0x1b
	.string	"EMUXSEL"
	.byte	0xb
	.uahalf	0x5fd
	.uaword	0x6393
	.uahalf	0x3f0
	.uleb128 0x1b
	.string	"reserved_3F4"
	.byte	0xb
	.uahalf	0x5fe
	.uaword	0x7911
	.uahalf	0x3f4
	.uleb128 0x1b
	.string	"G"
	.byte	0xb
	.uahalf	0x5ff
	.uaword	0x7931
	.uahalf	0x480
	.uleb128 0x1b
	.string	"reserved_2480"
	.byte	0xb
	.uahalf	0x600
	.uaword	0x7936
	.uahalf	0x2480
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x78c1
	.uleb128 0x4
	.uaword	0x268
	.byte	0x5b
	.byte	0
	.uleb128 0x3
	.uaword	0x6316
	.uaword	0x78d1
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x62d6
	.uaword	0x78e1
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x78f1
	.uleb128 0x4
	.uaword	0x268
	.byte	0x77
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7901
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7b
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7911
	.uleb128 0x4
	.uaword	0x268
	.byte	0x6b
	.byte	0
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7921
	.uleb128 0x4
	.uaword	0x268
	.byte	0x8b
	.byte	0
	.uleb128 0x3
	.uaword	0x7571
	.uaword	0x7931
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.uaword	0x7921
	.uleb128 0x3
	.uaword	0x1d6
	.uaword	0x7947
	.uleb128 0x1d
	.uaword	0x268
	.uahalf	0x1b7f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_VADC"
	.byte	0xb
	.uahalf	0x601
	.uaword	0x7958
	.uleb128 0x19
	.uaword	0x7589
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7947
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x51
	.uaword	0x79fe
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
	.uaword	0x7963
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x5b
	.uaword	0x7d14
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
	.uaword	0x7a1f
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x71
	.uaword	0x7dcc
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
	.uaword	0x7d35
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x7b
	.uaword	0x7ebf
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
	.uaword	0x7ded
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x8a
	.uaword	0x7f29
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
	.uaword	0x7ed8
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x92
	.uaword	0x7fdd
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
	.uaword	0x7f49
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x9c
	.uaword	0x81ad
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
	.uaword	0x7ffe
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x101
	.uaword	0x824d
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
	.uaword	0x81ca
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x10b
	.uaword	0x8408
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
	.uaword	0x8268
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x121
	.uaword	0x84a9
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
	.uaword	0x8425
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x12b
	.uaword	0x8554
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
	.uaword	0x84c6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x135
	.uaword	0x85c1
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
	.uaword	0x856f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x182
	.uaword	0x8682
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
	.uaword	0x85e8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x18c
	.uaword	0x870e
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
	.uaword	0x86a6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0x87f9
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
	.uaword	0x8733
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x88eb
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
	.uaword	0x880f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x89a1
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
	.uaword	0x8902
	.uleb128 0x1e
	.byte	0x1
	.byte	0x3
	.uahalf	0x1cd
	.uaword	0x8b6d
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
	.uaword	0x89bd
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.uahalf	0x168
	.uaword	0x8ba3
	.uleb128 0x17
	.string	"vadc"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x795d
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc"
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x8b8b
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x8c17
	.uleb128 0x17
	.string	"gatingSource"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x8408
	.byte	0
	.uleb128 0x17
	.string	"triggerSource"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x8b6d
	.byte	0x1
	.uleb128 0x17
	.string	"gatingMode"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x824d
	.byte	0x2
	.uleb128 0x17
	.string	"triggerMode"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x89a1
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_GatingTriggerConfig"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x8bb7
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x8cd0
	.uleb128 0x17
	.string	"arbiterRoundLength"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x79fe
	.byte	0
	.uleb128 0x17
	.string	"requestSlotQueueEnabled"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x2d5
	.byte	0x1
	.uleb128 0x17
	.string	"requestSlotScanEnabled"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x2d5
	.byte	0x2
	.uleb128 0x17
	.string	"requestSlotBackgroundScanEnabled"
	.byte	0x4
	.uahalf	0x182
	.uaword	0x2d5
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ArbiterConfig"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x8c3f
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x187
	.uaword	0x8d46
	.uleb128 0x17
	.string	"autoBackgroundScanEnabled"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x2d5
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x8c17
	.byte	0x2
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x8682
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x870e
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_BackgroundScanConfig"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x8cf2
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x191
	.uaword	0x8da1
	.uleb128 0x17
	.string	"sampleTime"
	.byte	0x4
	.uahalf	0x193
	.uaword	0x2b3
	.byte	0
	.uleb128 0x17
	.string	"resolution"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x7fdd
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ClassConfig"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x8d6f
	.uleb128 0x1f
	.byte	0xc
	.byte	0x4
	.uahalf	0x199
	.uaword	0x8df6
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x8ba3
	.byte	0
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x8df6
	.byte	0x4
	.uleb128 0x17
	.string	"groupId"
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x2d28
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7571
	.uleb128 0x12
	.string	"IfxVadc_Adc_Group"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x8dc1
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x8e64
	.uleb128 0x17
	.string	"flushQueueAfterInit"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x2d5
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x8c17
	.byte	0x2
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x8682
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x870e
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_QueueConfig"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x8e16
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x8ece
	.uleb128 0x17
	.string	"autoscanEnabled"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x2d5
	.byte	0
	.uleb128 0x18
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x8c17
	.byte	0x2
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x8682
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x870e
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ScanConfig"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x8e84
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x8f28
	.uleb128 0x17
	.string	"channel"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x7ebf
	.byte	0
	.uleb128 0x17
	.string	"resultreg"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x81ad
	.byte	0x1
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x8f28
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8f2e
	.uleb128 0x20
	.uaword	0x8dfc
	.uleb128 0x12
	.string	"IfxVadc_Adc_Channel"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x8eed
	.uleb128 0x1f
	.byte	0x18
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x9105
	.uleb128 0x17
	.string	"globalResultUsage"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x2d5
	.byte	0
	.uleb128 0x17
	.string	"synchonize"
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x2d5
	.byte	0x1
	.uleb128 0x17
	.string	"backgroundChannel"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x2d5
	.byte	0x2
	.uleb128 0x17
	.string	"rightAlignedStorage"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x2d5
	.byte	0x3
	.uleb128 0x17
	.string	"resultPriority"
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x30d
	.byte	0x4
	.uleb128 0x17
	.string	"channelPriority"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x30d
	.byte	0x6
	.uleb128 0x17
	.string	"resultServProvider"
	.byte	0x4
	.uahalf	0x1d2
	.uaword	0x2c39
	.byte	0x8
	.uleb128 0x17
	.string	"channelServProvider"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x2c39
	.byte	0x9
	.uleb128 0x17
	.string	"resultSrcNr"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x87f9
	.byte	0xa
	.uleb128 0x17
	.string	"channelSrcNr"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x87f9
	.byte	0xb
	.uleb128 0x17
	.string	"channelId"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x7ebf
	.byte	0xc
	.uleb128 0x18
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x84a9
	.byte	0xd
	.uleb128 0x17
	.string	"reference"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x7f29
	.byte	0xe
	.uleb128 0x17
	.string	"resultRegister"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x81ad
	.byte	0xf
	.uleb128 0x17
	.string	"lowerBoundary"
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x7dcc
	.byte	0x10
	.uleb128 0x17
	.string	"upperBoundary"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x7dcc
	.byte	0x11
	.uleb128 0x17
	.string	"boundaryMode"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x7d14
	.byte	0x12
	.uleb128 0x17
	.string	"limitCheck"
	.byte	0x4
	.uahalf	0x1dd
	.uaword	0x8554
	.byte	0x13
	.uleb128 0x18
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x8f28
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_ChannelConfig"
	.byte	0x4
	.uahalf	0x1df
	.uaword	0x8f4f
	.uleb128 0x1f
	.byte	0x24
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x91d8
	.uleb128 0x17
	.string	"vadc"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x795d
	.byte	0
	.uleb128 0x17
	.string	"globalInputClass"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x91d8
	.byte	0x4
	.uleb128 0x17
	.string	"digitalFrequency"
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x2b3
	.byte	0x14
	.uleb128 0x17
	.string	"analogFrequency"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x2b3
	.byte	0x18
	.uleb128 0x17
	.string	"moduleFrequency"
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x2b3
	.byte	0x1c
	.uleb128 0x17
	.string	"startupCalibration"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x2d5
	.byte	0x20
	.uleb128 0x17
	.string	"supplyVoltage"
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x85c1
	.byte	0x21
	.byte	0
	.uleb128 0x3
	.uaword	0x8da1
	.uaword	0x91e8
	.uleb128 0x4
	.uaword	0x268
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"IfxVadc_Adc_Config"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x9127
	.uleb128 0x1f
	.byte	0x38
	.byte	0x4
	.uahalf	0x203
	.uaword	0x92c3
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x205
	.uaword	0x92c3
	.byte	0
	.uleb128 0x17
	.string	"groupId"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x2d28
	.byte	0x4
	.uleb128 0x17
	.string	"master"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x2d28
	.byte	0x5
	.uleb128 0x18
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x208
	.uaword	0x91d8
	.byte	0x8
	.uleb128 0x17
	.string	"scanRequest"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x8ece
	.byte	0x18
	.uleb128 0x17
	.string	"queueRequest"
	.byte	0x4
	.uahalf	0x20a
	.uaword	0x8e64
	.byte	0x20
	.uleb128 0x17
	.string	"backgroundScanRequest"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x8d46
	.byte	0x28
	.uleb128 0x17
	.string	"disablePostCalibration"
	.byte	0x4
	.uahalf	0x20c
	.uaword	0x2d5
	.byte	0x30
	.uleb128 0x17
	.string	"arbiter"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x8cd0
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x92c9
	.uleb128 0x20
	.uaword	0x8ba3
	.uleb128 0x12
	.string	"IfxVadc_Adc_GroupConfig"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x9203
	.uleb128 0x8
	.byte	0x4
	.byte	0xc
	.byte	0x66
	.uaword	0x9305
	.uleb128 0xa
	.string	"Angle"
	.byte	0xc
	.byte	0x67
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"IR_Srv_t"
	.byte	0xc
	.byte	0x68
	.uaword	0x92ee
	.uleb128 0x21
	.uahalf	0x600
	.byte	0xd
	.byte	0x1d
	.uaword	0x9331
	.uleb128 0xa
	.string	"adcResult"
	.byte	0xd
	.byte	0x1e
	.uaword	0x9331
	.byte	0
	.byte	0
	.uleb128 0x3
	.uaword	0x2a5
	.uaword	0x9347
	.uleb128 0x4
	.uaword	0x268
	.byte	0x2
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.string	"IR_LineScan_t"
	.byte	0xd
	.byte	0x1f
	.uaword	0x9315
	.uleb128 0x22
	.string	"CAM_INFOMATION"
	.uahalf	0x204
	.byte	0xd
	.byte	0x3d
	.uaword	0x9396
	.uleb128 0xa
	.string	"cam_scan"
	.byte	0xd
	.byte	0x3e
	.uaword	0x9396
	.byte	0
	.uleb128 0x23
	.string	"center"
	.byte	0xd
	.byte	0x3f
	.uaword	0x20a
	.uahalf	0x200
	.byte	0
	.uleb128 0x3
	.uaword	0x20a
	.uaword	0x93a6
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.string	"cam_infomation"
	.byte	0xd
	.byte	0x40
	.uaword	0x935c
	.uleb128 0x8
	.byte	0x28
	.byte	0x1
	.byte	0x21
	.uaword	0x93f6
	.uleb128 0xa
	.string	"vadc"
	.byte	0x1
	.byte	0x23
	.uaword	0x8ba3
	.byte	0
	.uleb128 0xa
	.string	"adcGroup"
	.byte	0x1
	.byte	0x24
	.uaword	0x8dfc
	.byte	0x4
	.uleb128 0xa
	.string	"adcChannel"
	.byte	0x1
	.byte	0x25
	.uaword	0x93f6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.uaword	0x8f33
	.uaword	0x9406
	.uleb128 0x4
	.uaword	0x268
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"Basic_VadcAutoScan"
	.byte	0x1
	.byte	0x26
	.uaword	0x93bc
	.uleb128 0x24
	.string	"IfxVadc_getResult"
	.byte	0x3
	.uahalf	0x7f0
	.byte	0x1
	.uaword	0x6aaf
	.byte	0x3
	.uaword	0x9471
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x3
	.uahalf	0x7f0
	.uaword	0x8df6
	.uleb128 0x26
	.string	"resultIdx"
	.byte	0x3
	.uahalf	0x7f0
	.uaword	0x2a5
	.uleb128 0x27
	.string	"tmpResult"
	.byte	0x3
	.uahalf	0x7f2
	.uaword	0x6aaf
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_Adc_getResult"
	.byte	0x4
	.uahalf	0x4d1
	.byte	0x1
	.uaword	0x6aaf
	.byte	0x3
	.uaword	0x94a6
	.uleb128 0x26
	.string	"channel"
	.byte	0x4
	.uahalf	0x4d1
	.uaword	0x94a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8f33
	.uleb128 0x28
	.string	"IfxVadc_Adc_setScan"
	.byte	0x4
	.uahalf	0x4ef
	.byte	0x1
	.byte	0x3
	.uaword	0x94f0
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x94f0
	.uleb128 0x25
	.uaword	.LASF42
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x2a5
	.uleb128 0x26
	.string	"mask"
	.byte	0x4
	.uahalf	0x4ef
	.uaword	0x2a5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8dfc
	.uleb128 0x28
	.string	"IfxVadc_startScan"
	.byte	0x3
	.uahalf	0x96d
	.byte	0x1
	.byte	0x3
	.uaword	0x951f
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x3
	.uahalf	0x96d
	.uaword	0x8df6
	.byte	0
	.uleb128 0x28
	.string	"IfxVadc_Adc_startScan"
	.byte	0x4
	.uahalf	0x501
	.byte	0x1
	.byte	0x3
	.uaword	0x954c
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x501
	.uaword	0x94f0
	.byte	0
	.uleb128 0x28
	.string	"IfxPort_setPinState"
	.byte	0x2
	.uahalf	0x23c
	.byte	0x1
	.byte	0x3
	.uaword	0x9593
	.uleb128 0x26
	.string	"port"
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x26c2
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x27c
	.uleb128 0x26
	.string	"action"
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x2b9f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"CopyPrevLine"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.byte	0x1
	.uaword	0x95d7
	.uleb128 0x2a
	.string	"_cam_info"
	.byte	0x1
	.byte	0xe7
	.uaword	0x95d7
	.uleb128 0x2a
	.string	"_prev_info"
	.byte	0x1
	.byte	0xe7
	.uaword	0x93a6
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xe8
	.uaword	0x20a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x93a6
	.uleb128 0x2c
	.byte	0x1
	.string	"GetCountPassedObject"
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x20a
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"SetCountPassedObject"
	.byte	0x1
	.uahalf	0x25d
	.byte	0x1
	.byte	0x1
	.uaword	0x9629
	.uleb128 0x26
	.string	"cpo"
	.byte	0x1
	.uahalf	0x25d
	.uaword	0x20a
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"SetDottedLine"
	.byte	0x1
	.uahalf	0x263
	.byte	0x1
	.byte	0x1
	.uaword	0x964e
	.uleb128 0x26
	.string	"dl"
	.byte	0x1
	.uahalf	0x263
	.uaword	0x20a
	.byte	0
	.uleb128 0x2e
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
	.uaword	0x9963
	.uleb128 0x2f
	.string	"chnIx"
	.byte	0x1
	.byte	0xac
	.uaword	0x2a5
	.uaword	.LLST0
	.uleb128 0x30
	.string	"idx"
	.byte	0x1
	.byte	0xad
	.uaword	0x2a5
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB61
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xaf
	.uaword	0x96ba
	.uleb128 0x32
	.uaword	0x9583
	.byte	0x1
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST1
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xb0
	.uaword	0x96e5
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST2
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB77
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xb3
	.uaword	0x970d
	.uleb128 0x32
	.uaword	0x9583
	.byte	0x1
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST3
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xc0
	.uaword	0x9738
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST4
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB89
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xb4
	.uaword	0x9760
	.uleb128 0x32
	.uaword	0x9583
	.byte	0x1
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST5
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB93
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xb7
	.uaword	0x978b
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST6
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB99
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xb8
	.uaword	0x97b3
	.uleb128 0x32
	.uaword	0x9583
	.byte	0x1
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST7
	.byte	0
	.uleb128 0x36
	.uaword	0x951f
	.uaword	.LBB103
	.uaword	.LBE103
	.byte	0x1
	.byte	0xba
	.uaword	0x97ed
	.uleb128 0x37
	.uaword	0x953f
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x38
	.uaword	0x94f6
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x4
	.uahalf	0x503
	.uleb128 0x34
	.uaword	0x9512
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB108
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0xc1
	.uaword	0x9818
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST9
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB112
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0xc4
	.uaword	0x9843
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST10
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB116
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0xc5
	.uaword	0x986b
	.uleb128 0x32
	.uaword	0x9583
	.byte	0x1
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST11
	.byte	0
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x130
	.uaword	0x98e1
	.uleb128 0x2f
	.string	"conversionResult"
	.byte	0x1
	.byte	0xcc
	.uaword	0x6aaf
	.uaword	.LLST12
	.uleb128 0x3a
	.uaword	0x9471
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.byte	0xd0
	.uleb128 0x34
	.uaword	0x9495
	.uaword	.LLST13
	.uleb128 0x34
	.uaword	0x9495
	.uaword	.LLST13
	.uleb128 0x38
	.uaword	0x9420
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x4
	.uahalf	0x4d3
	.uleb128 0x34
	.uaword	0x944c
	.uaword	.LLST15
	.uleb128 0x33
	.uaword	0x9440
	.uleb128 0x3b
	.uaword	.LBB123
	.uaword	.LBE123
	.uleb128 0x3c
	.uaword	0x945e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB125
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.byte	0xd8
	.uaword	0x990c
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST16
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB133
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0xd9
	.uaword	0x9935
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x37
	.uaword	0x956a
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL5
	.uaword	0xa6f2
	.uleb128 0x3d
	.uaword	.LVL10
	.uaword	0xa6f2
	.uleb128 0x3d
	.uaword	.LVL15
	.uaword	0xa6f2
	.uleb128 0x3d
	.uaword	.LVL22
	.uaword	0xa6f2
	.uleb128 0x3d
	.uaword	.LVL27
	.uaword	0xa6f2
	.byte	0
	.uleb128 0x3e
	.uaword	0x9593
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9990
	.uleb128 0x37
	.uaword	0x95aa
	.byte	0x1
	.byte	0x64
	.uleb128 0x37
	.uaword	0x95bb
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x3f
	.uaword	0x95cd
	.uaword	.LLST17
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"GetMedian"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.uaword	0x20a
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x99ed
	.uleb128 0x41
	.string	"_array"
	.byte	0x1
	.byte	0xee
	.uaword	0x99ed
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xef
	.uaword	0x20a
	.uaword	.LLST18
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.byte	0xef
	.uaword	0x20a
	.uaword	.LLST19
	.uleb128 0x2f
	.string	"temp"
	.byte	0x1
	.byte	0xef
	.uaword	0x20a
	.uaword	.LLST20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x20a
	.uleb128 0x2e
	.byte	0x1
	.string	"Stretching"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9a5b
	.uleb128 0x42
	.uaword	.LASF43
	.byte	0x1
	.byte	0xfc
	.uaword	0x9a5b
	.byte	0x1
	.byte	0x64
	.uleb128 0x43
	.string	"_max"
	.byte	0x1
	.byte	0xfc
	.uaword	0x20a
	.uaword	.LLST21
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.uaword	0x20a
	.uaword	.LLST22
	.uleb128 0x2f
	.string	"max"
	.byte	0x1
	.byte	0xfd
	.uaword	0x20a
	.uaword	.LLST23
	.uleb128 0x2f
	.string	"min"
	.byte	0x1
	.byte	0xfd
	.uaword	0x20a
	.uaword	.LLST24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9396
	.uleb128 0x44
	.byte	0x1
	.string	"MedianFiltering"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9ae2
	.uleb128 0x45
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x107
	.uaword	0x9a5b
	.uaword	.LLST25
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x20a
	.uaword	.LLST26
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x20a
	.uaword	.LLST27
	.uleb128 0x46
	.string	"t"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x20a
	.uaword	.LLST28
	.uleb128 0x47
	.string	"array"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x9ae2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x48
	.uaword	.LVL68
	.uaword	0x9990
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.uaword	0x20a
	.uaword	0x9af2
	.uleb128 0x4
	.uaword	0x268
	.byte	0x4
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"Sharpening"
	.byte	0x1
	.uahalf	0x110
	.byte	0x1
	.uaword	.LFB583
	.uaword	.LFE583
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9b83
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x110
	.uaword	0x9a5b
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x20a
	.uaword	.LLST29
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x20a
	.uaword	.LLST30
	.uleb128 0x46
	.string	"minus"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x20a
	.uaword	.LLST31
	.uleb128 0x46
	.string	"add"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x20a
	.uaword	.LLST32
	.uleb128 0x46
	.string	"square"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x20a
	.uaword	.LLST33
	.uleb128 0x47
	.string	"temp"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x9396
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"Camera_Initialization"
	.byte	0x1
	.uahalf	0x128
	.uaword	.LFB584
	.uaword	.LFE584
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9bfc
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x20a
	.uaword	.LLST34
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x20a
	.uaword	.LLST35
	.uleb128 0x4c
	.uaword	0x95fc
	.uaword	.LBB137
	.uaword	.LBE137
	.byte	0x1
	.uahalf	0x136
	.uaword	0x9be4
	.uleb128 0x32
	.uaword	0x961c
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x9629
	.uaword	.LBB139
	.uaword	.LBE139
	.byte	0x1
	.uahalf	0x137
	.uleb128 0x32
	.uaword	0x9642
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uaword	0x9f26
	.uleb128 0x30
	.string	"adcConfig"
	.byte	0x1
	.byte	0x4a
	.uaword	0x91e8
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x30
	.string	"adcGroupConfig"
	.byte	0x1
	.byte	0x51
	.uaword	0x92ce
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.string	"chnIx"
	.byte	0x1
	.byte	0x65
	.uaword	0x2a5
	.uaword	.LLST36
	.uleb128 0x4d
	.uaword	.LASF42
	.byte	0x1
	.byte	0x66
	.uaword	0x211
	.uaword	.LLST37
	.uleb128 0x2f
	.string	"mask"
	.byte	0x1
	.byte	0x67
	.uaword	0x211
	.uaword	.LLST37
	.uleb128 0x30
	.string	"adcChannelConfig"
	.byte	0x1
	.byte	0x69
	.uaword	0x9f26
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.uaword	0x94ac
	.uaword	.LBB141
	.uaword	.Ldebug_ranges0+0x188
	.byte	0x1
	.byte	0x78
	.uaword	0x9cd9
	.uleb128 0x37
	.uaword	0x94ca
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x34
	.uaword	0x94e2
	.uaword	.LLST39
	.uleb128 0x34
	.uaword	0x94d6
	.uaword	.LLST39
	.uleb128 0x3d
	.uaword	.LVL105
	.uaword	0xa70b
	.byte	0
	.uleb128 0x31
	.uaword	0x94ac
	.uaword	.LBB145
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.byte	0x85
	.uaword	0x9d14
	.uleb128 0x37
	.uaword	0x94ca
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x34
	.uaword	0x94e2
	.uaword	.LLST41
	.uleb128 0x34
	.uaword	0x94d6
	.uaword	.LLST41
	.uleb128 0x3d
	.uaword	.LVL109
	.uaword	0xa70b
	.byte	0
	.uleb128 0x31
	.uaword	0x94ac
	.uaword	.LBB149
	.uaword	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.byte	0x92
	.uaword	0x9d60
	.uleb128 0x37
	.uaword	0x94ca
	.byte	0x6
	.byte	0x3
	.uaword	g_VadcAutoScan+4
	.byte	0x9f
	.uleb128 0x34
	.uaword	0x94e2
	.uaword	.LLST43
	.uleb128 0x34
	.uaword	0x94d6
	.uaword	.LLST43
	.uleb128 0x48
	.uaword	.LVL113
	.uaword	0xa70b
	.uleb128 0x49
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.uleb128 0x49
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB153
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x9b
	.uaword	0x9d8b
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST45
	.byte	0
	.uleb128 0x31
	.uaword	0x954c
	.uaword	.LBB159
	.uaword	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x9f
	.uaword	0x9db6
	.uleb128 0x35
	.uaword	0x9583
	.uaword	0x10000
	.uleb128 0x33
	.uaword	0x9577
	.uleb128 0x34
	.uaword	0x956a
	.uaword	.LLST46
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL98
	.uaword	0xa736
	.uaword	0x9dd5
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.byte	0x11
	.sleb128 -268304384
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL99
	.uaword	0xa76f
	.uaword	0x9df0
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL100
	.uaword	0xa7b1
	.uaword	0x9e0b
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL101
	.uaword	0xa7e9
	.uaword	0x9e26
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL102
	.uaword	0xa824
	.uaword	0x9e41
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL103
	.uaword	0xa85e
	.uaword	0x9e5c
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL106
	.uaword	0xa824
	.uaword	0x9e76
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL107
	.uaword	0xa85e
	.uaword	0x9e90
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 24
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL110
	.uaword	0xa824
	.uaword	0x9eaa
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL111
	.uaword	0xa85e
	.uaword	0x9ec4
	.uleb128 0x49
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 32
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL114
	.uaword	0xa89b
	.uleb128 0x4e
	.uaword	.LVL115
	.uaword	0xa8aa
	.uaword	0x9ee1
	.uleb128 0x49
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL116
	.uaword	0xa8d8
	.uaword	0x9ef4
	.uleb128 0x49
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL120
	.uaword	0xa8aa
	.uaword	0x9f08
	.uleb128 0x49
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL121
	.uaword	0xa8d8
	.uaword	0x9f1b
	.uleb128 0x49
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL124
	.byte	0x1
	.uaword	0x9b83
	.byte	0
	.uleb128 0x3
	.uaword	0x9105
	.uaword	0x9f36
	.uleb128 0x4
	.uaword	0x268
	.byte	0x2
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"AdjustBySides"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x20a
	.uaword	.LFB586
	.uaword	.LFE586
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa10f
	.uleb128 0x46
	.string	"mode"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x20a
	.uaword	.LLST47
	.uleb128 0x46
	.string	"currentSrvAngle"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x2c2
	.uaword	.LLST48
	.uleb128 0x47
	.string	"lStdValue"
	.byte	0x1
	.uahalf	0x18f
	.uaword	0xa10f
	.byte	0x13
	.byte	0x49
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8
	.byte	0x43
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x47
	.string	"rStdValue"
	.byte	0x1
	.uahalf	0x190
	.uaword	0xa10f
	.byte	0x13
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8
	.byte	0x43
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x49
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x46
	.string	"lIndex"
	.byte	0x1
	.uahalf	0x191
	.uaword	0x20a
	.uaword	.LLST49
	.uleb128 0x46
	.string	"rIndex"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x20a
	.uaword	.LLST50
	.uleb128 0x46
	.string	"lcount"
	.byte	0x1
	.uahalf	0x193
	.uaword	0x20a
	.uaword	.LLST51
	.uleb128 0x46
	.string	"rcount"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x20a
	.uaword	.LLST52
	.uleb128 0x47
	.string	"totalCamera"
	.byte	0x1
	.uahalf	0x195
	.uaword	0xa11f
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x20a
	.uaword	.LLST53
	.uleb128 0x51
	.uaword	0x9593
	.uaword	.LBB163
	.uaword	.Ldebug_ranges0+0x208
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0xa07d
	.uleb128 0x37
	.uaword	0x95bb
	.byte	0x3
	.byte	0x91
	.sleb128 -1960
	.uleb128 0x34
	.uaword	0x95aa
	.uaword	.LLST54
	.uleb128 0x52
	.uaword	.Ldebug_ranges0+0x208
	.uleb128 0x3f
	.uaword	0x95cd
	.uaword	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL131
	.uaword	0x99f3
	.uaword	0xa099
	.uleb128 0x49
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1000
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL132
	.uaword	0x9a61
	.uaword	0xa0ae
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL133
	.uaword	0x9af2
	.uaword	0xa0c3
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL134
	.uaword	0x99f3
	.uaword	0xa0e1
	.uleb128 0x49
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x186a0
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL148
	.uaword	0xa90b
	.uleb128 0x3d
	.uaword	.LVL154
	.uaword	0xa92b
	.uleb128 0x3d
	.uaword	.LVL160
	.uaword	0xa90b
	.uleb128 0x3d
	.uaword	.LVL169
	.uaword	0xa90b
	.uleb128 0x3d
	.uaword	.LVL180
	.uaword	0xa92b
	.byte	0
	.uleb128 0x3
	.uaword	0x20a
	.uaword	0xa11f
	.uleb128 0x4
	.uaword	0x268
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.uaword	0x20a
	.uaword	0xa12f
	.uleb128 0x4
	.uaword	0x268
	.byte	0xe7
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"FindCenter"
	.byte	0x1
	.uahalf	0x1ef
	.byte	0x1
	.uaword	0x20a
	.uaword	.LFB587
	.uaword	.LFE587
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa1cf
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x9a5b
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x20a
	.uaword	.LLST56
	.uleb128 0x46
	.string	"index"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x20a
	.uaword	.LLST57
	.uleb128 0x46
	.string	"leftIndex"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x20a
	.uaword	.LLST58
	.uleb128 0x46
	.string	"rightIndex"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x20a
	.uaword	.LLST59
	.uleb128 0x54
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x20a
	.uaword	.LLST60
	.uleb128 0x55
	.uaword	0x95dd
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x1
	.uahalf	0x210
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"FindOneLine"
	.byte	0x1
	.uahalf	0x22a
	.byte	0x1
	.uaword	0x20a
	.uaword	.LFB588
	.uaword	.LFE588
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa238
	.uleb128 0x56
	.string	"line"
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x99ed
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x20a
	.uaword	.LLST61
	.uleb128 0x54
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x20a
	.uaword	.LLST62
	.uleb128 0x46
	.string	"lineIndex"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x20a
	.uaword	.LLST63
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"GetCameraCenter"
	.byte	0x1
	.uahalf	0x13a
	.byte	0x1
	.uaword	0x20a
	.uaword	.LFB585
	.uaword	.LFE585
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa356
	.uleb128 0x57
	.string	"prevServo"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x20a
	.uaword	.LLST64
	.uleb128 0x57
	.string	"cntDiff"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x20a
	.uaword	.LLST65
	.uleb128 0x46
	.string	"mode"
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x20a
	.uaword	.LLST66
	.uleb128 0x46
	.string	"result"
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x20a
	.uaword	.LLST67
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x20a
	.uaword	.LLST68
	.uleb128 0x4e
	.uaword	.LVL231
	.uaword	0x99f3
	.uaword	0xa2d2
	.uleb128 0x49
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1000
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL232
	.uaword	0x9a61
	.uleb128 0x3d
	.uaword	.LVL233
	.uaword	0x9af2
	.uleb128 0x4e
	.uaword	.LVL234
	.uaword	0x99f3
	.uaword	0xa304
	.uleb128 0x49
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x186a0
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL238
	.uaword	0xa12f
	.uaword	0xa318
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL239
	.uaword	0xa1cf
	.uaword	0xa332
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa14
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL240
	.uaword	0xa1cf
	.uaword	0xa34c
	.uleb128 0x49
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1428
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL248
	.uaword	0x9f36
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"CheckLimitZone"
	.byte	0x1
	.uahalf	0x247
	.byte	0x1
	.uaword	.LFB589
	.uaword	.LFE589
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa39e
	.uleb128 0x57
	.string	"nowState"
	.byte	0x1
	.uahalf	0x247
	.uaword	0x20a
	.uaword	.LLST69
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.uahalf	0x248
	.uaword	0x20a
	.uaword	.LLST70
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IsLimitZone"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x20a
	.uaword	.LFB590
	.uaword	.LFE590
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"GetDashLine"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x20a
	.uaword	.LFB591
	.uaword	.LFE591
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x59
	.uaword	0x95dd
	.uaword	.LFB592
	.uaword	.LFE592
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3e
	.uaword	0x95fc
	.uaword	.LFB593
	.uaword	.LFE593
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa40a
	.uleb128 0x37
	.uaword	0x961c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"GetDottedLine"
	.byte	0x1
	.uahalf	0x260
	.uaword	0x20a
	.uaword	.LFB594
	.uaword	.LFE594
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3e
	.uaword	0x9629
	.uaword	.LFB595
	.uaword	.LFE595
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa448
	.uleb128 0x37
	.uaword	0x9642
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.uaword	0x344
	.uaword	0xa458
	.uleb128 0x4
	.uaword	0x268
	.byte	0x2
	.byte	0
	.uleb128 0x5a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0xa475
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0xa448
	.uleb128 0x5a
	.string	"Assert_verboseLevel"
	.byte	0xe
	.byte	0x79
	.uaword	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x5a
	.string	"IfxPort_P14_0"
	.byte	0xf
	.byte	0x62
	.uaword	0x2bd6
	.byte	0x1
	.byte	0x1
	.uleb128 0x5a
	.string	"IfxPort_P14_1"
	.byte	0xf
	.byte	0x63
	.uaword	0x2bd6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.uaword	0x2f9
	.uaword	0xa4d5
	.uleb128 0x4
	.uaword	0x268
	.byte	0xa
	.byte	0
	.uleb128 0x5a
	.string	"TimeConst"
	.byte	0x10
	.byte	0x94
	.uaword	0xa4c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x5a
	.string	"IR_Srv"
	.byte	0xc
	.byte	0x6e
	.uaword	0x9305
	.byte	0x1
	.byte	0x1
	.uleb128 0x5b
	.string	"IR_LineScan"
	.byte	0x1
	.byte	0x2d
	.uaword	0x9347
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_LineScan
	.uleb128 0x5b
	.string	"g_VadcAutoScan"
	.byte	0x1
	.byte	0x2b
	.uaword	0x9406
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_VadcAutoScan
	.uleb128 0x5b
	.string	"FILTERED_CENTER_LINE"
	.byte	0x1
	.byte	0x3f
	.uaword	0x9396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FILTERED_CENTER_LINE
	.uleb128 0x5b
	.string	"Zero_center_line"
	.byte	0x1
	.byte	0x40
	.uaword	0x9396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Zero_center_line
	.uleb128 0x5b
	.string	"countPassedObject"
	.byte	0x1
	.byte	0x42
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	countPassedObject
	.uleb128 0x5b
	.string	"dottedLine"
	.byte	0x1
	.byte	0x43
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	dottedLine
	.uleb128 0x3
	.uaword	0x93a6
	.uaword	0xa5c0
	.uleb128 0x4
	.uaword	0x268
	.byte	0x2
	.uleb128 0x4
	.uaword	0x268
	.byte	0x4
	.byte	0
	.uleb128 0x5b
	.string	"cam_info"
	.byte	0x1
	.byte	0xde
	.uaword	0xa5aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cam_info
	.uleb128 0x5b
	.string	"debugLine"
	.byte	0x1
	.byte	0xdf
	.uaword	0x9396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	debugLine
	.uleb128 0x5b
	.string	"speedLimitLine"
	.byte	0x1
	.byte	0xdf
	.uaword	0x9396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speedLimitLine
	.uleb128 0x5b
	.string	"nowIndex"
	.byte	0x1
	.byte	0xe0
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	nowIndex
	.uleb128 0x5b
	.string	"cntTotal"
	.byte	0x1
	.byte	0xe1
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cntTotal
	.uleb128 0x5b
	.string	"cntLeft"
	.byte	0x1
	.byte	0xe1
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cntLeft
	.uleb128 0x5b
	.string	"isLimitZone"
	.byte	0x1
	.byte	0xe2
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	isLimitZone
	.uleb128 0x5b
	.string	"dashLine"
	.byte	0x1
	.byte	0xe2
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	dashLine
	.uleb128 0x5b
	.string	"leftIndexCount"
	.byte	0x1
	.byte	0xe3
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	leftIndexCount
	.uleb128 0x5b
	.string	"rightIndexCount"
	.byte	0x1
	.byte	0xe3
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	rightIndexCount
	.uleb128 0x5b
	.string	"zeroCnt"
	.byte	0x1
	.byte	0xe4
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	zeroCnt
	.uleb128 0x5b
	.string	"g_cameraDirection"
	.byte	0x1
	.byte	0xe5
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_cameraDirection
	.uleb128 0x5c
	.byte	0x1
	.string	"waitTime"
	.byte	0x10
	.byte	0xaa
	.byte	0x1
	.byte	0x1
	.uaword	0xa70b
	.uleb128 0x5d
	.uaword	0x2f9
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxVadc_setScan"
	.byte	0x3
	.uahalf	0x39d
	.byte	0x1
	.byte	0x1
	.uaword	0xa736
	.uleb128 0x5d
	.uaword	0x8df6
	.uleb128 0x5d
	.uaword	0x2a5
	.uleb128 0x5d
	.uaword	0x2a5
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxVadc_Adc_initModuleConfig"
	.byte	0x4
	.uahalf	0x28c
	.byte	0x1
	.byte	0x1
	.uaword	0xa769
	.uleb128 0x5d
	.uaword	0xa769
	.uleb128 0x5d
	.uaword	0x795d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x91e8
	.uleb128 0x5f
	.byte	0x1
	.string	"IfxVadc_Adc_initModule"
	.byte	0x4
	.uahalf	0x282
	.byte	0x1
	.uaword	0x88eb
	.byte	0x1
	.uaword	0xa7a0
	.uleb128 0x5d
	.uaword	0xa7a0
	.uleb128 0x5d
	.uaword	0xa7a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8ba3
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa7ac
	.uleb128 0x20
	.uaword	0x91e8
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxVadc_Adc_initGroupConfig"
	.byte	0x4
	.uahalf	0x33d
	.byte	0x1
	.byte	0x1
	.uaword	0xa7e3
	.uleb128 0x5d
	.uaword	0xa7e3
	.uleb128 0x5d
	.uaword	0xa7a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x92ce
	.uleb128 0x5f
	.byte	0x1
	.string	"IfxVadc_Adc_initGroup"
	.byte	0x4
	.uahalf	0x333
	.byte	0x1
	.uaword	0x88eb
	.byte	0x1
	.uaword	0xa819
	.uleb128 0x5d
	.uaword	0x94f0
	.uleb128 0x5d
	.uaword	0xa819
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa81f
	.uleb128 0x20
	.uaword	0x92ce
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxVadc_Adc_initChannelConfig"
	.byte	0x4
	.uahalf	0x388
	.byte	0x1
	.byte	0x1
	.uaword	0xa858
	.uleb128 0x5d
	.uaword	0xa858
	.uleb128 0x5d
	.uaword	0x8f28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9105
	.uleb128 0x5f
	.byte	0x1
	.string	"IfxVadc_Adc_initChannel"
	.byte	0x4
	.uahalf	0x37e
	.byte	0x1
	.uaword	0x88eb
	.byte	0x1
	.uaword	0xa890
	.uleb128 0x5d
	.uaword	0x94a6
	.uleb128 0x5d
	.uaword	0xa890
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa896
	.uleb128 0x20
	.uaword	0x9105
	.uleb128 0x60
	.byte	0x1
	.string	"initTime"
	.byte	0x10
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x2
	.uahalf	0x163
	.byte	0x1
	.byte	0x1
	.uaword	0xa8d8
	.uleb128 0x5d
	.uaword	0x26c2
	.uleb128 0x5d
	.uaword	0x27c
	.uleb128 0x5d
	.uaword	0x2968
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x2
	.uahalf	0x172
	.byte	0x1
	.byte	0x1
	.uaword	0xa90b
	.uleb128 0x5d
	.uaword	0x26c2
	.uleb128 0x5d
	.uaword	0x27c
	.uleb128 0x5d
	.uaword	0x2b1d
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xc
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0xa92b
	.uleb128 0x5d
	.uaword	0x2b3
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xc
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uleb128 0x5d
	.uaword	0x2b3
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
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
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31
	.uaword	.LVL36
	.uahalf	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x12
	.byte	0x73
	.sleb128 -1
	.byte	0x37
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST13:
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
	.uaword	.LFE578
	.uahalf	0x8
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
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
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LFE579
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LFE580
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL51
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE581
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL63
	.uaword	.LFE581
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL53
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL53
	.uaword	.LFE581
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL70
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL86
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88
	.uaword	.LFE583
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL86
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL101
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LFE577
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL112
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113-1
	.uaword	.LVL117
	.uahalf	0x5
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL112
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113-1
	.uaword	.LVL117
	.uahalf	0x5
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL118
	.uaword	.LVL120-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL122
	.uaword	.LVL124-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL125
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL155
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL165
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL176
	.uaword	.LFE586
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL126
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151-1
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL163
	.uaword	.LVL164-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL164-1
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL177
	.uaword	.LVL178-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL178-1
	.uaword	.LFE586
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL126
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL155
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x4
	.byte	0x78
	.sleb128 68
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL176
	.uaword	.LFE586
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL126
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL145
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL126
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL126
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL155
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131-1
	.uahalf	0x3
	.byte	0x72
	.sleb128 -6
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x3
	.byte	0x8
	.byte	0x74
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL139
	.uaword	.LVL141
	.uahalf	0x3
	.byte	0x8
	.byte	0x74
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL155
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL170
	.uaword	.LVL176
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.uahalf	0x204
	.byte	0x1e
	.byte	0x3
	.uaword	cam_info
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL187
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL191
	.uaword	.LVL194
	.uahalf	0x6
	.byte	0x8
	.byte	0x3b
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x6
	.byte	0x8
	.byte	0x3c
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x6
	.byte	0x8
	.byte	0x3b
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL201
	.uaword	.LVL203
	.uahalf	0x6
	.byte	0x8
	.byte	0x3b
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL210
	.uaword	.LFE587
	.uahalf	0x6
	.byte	0x8
	.byte	0x3b
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL183
	.uaword	.LVL197
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x3
	.byte	0x73
	.sleb128 55
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL199
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x3
	.byte	0x72
	.sleb128 -55
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL207
	.uaword	.LVL209
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL209
	.uaword	.LFE587
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL183
	.uaword	.LVL191
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL193
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL203
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL210
	.uaword	.LFE587
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL183
	.uaword	.LVL191
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x3
	.byte	0x72
	.sleb128 55
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL209
	.uaword	.LFE587
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL221
	.uaword	.LFE588
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL212
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL219
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL211
	.uaword	.LVL214
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL219
	.uaword	.LFE588
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL223
	.uaword	.LFE585
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL222
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL224
	.uaword	.LVL246
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL247
	.uaword	.LFE585
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL222
	.uaword	.LVL241
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL250
	.uaword	.LFE585
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL222
	.uaword	.LVL241
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL246
	.uaword	.LFE585
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL222
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL230
	.uaword	.LVL234
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL235
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL251
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL255
	.uaword	.LFE589
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL252
	.uaword	.LFE589
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xac
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
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.uaword	.LFB586
	.uaword	.LFE586-.LFB586
	.uaword	.LFB587
	.uaword	.LFE587-.LFB587
	.uaword	.LFB588
	.uaword	.LFE588-.LFB588
	.uaword	.LFB585
	.uaword	.LFE585-.LFB585
	.uaword	.LFB589
	.uaword	.LFE589-.LFB589
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	0
	.uaword	0
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	0
	.uaword	0
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	0
	.uaword	0
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	0
	.uaword	0
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	0
	.uaword	0
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	0
	.uaword	0
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	0
	.uaword	0
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	0
	.uaword	0
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	0
	.uaword	0
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	0
	.uaword	0
	.uaword	.LBB133
	.uaword	.LBE133
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	0
	.uaword	0
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	0
	.uaword	0
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	0
	.uaword	0
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	0
	.uaword	0
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	0
	.uaword	0
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	0
	.uaword	0
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB168
	.uaword	.LBE168
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
	.uaword	.LFB577
	.uaword	.LFE577
	.uaword	.LFB586
	.uaword	.LFE586
	.uaword	.LFB587
	.uaword	.LFE587
	.uaword	.LFB588
	.uaword	.LFE588
	.uaword	.LFB585
	.uaword	.LFE585
	.uaword	.LFB589
	.uaword	.LFE589
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
.LASF44:
	.string	"zeroCount"
.LASF30:
	.string	"REQCHNR"
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
.LASF43:
	.string	"_line"
.LASF32:
	.string	"RESULT"
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	IR_Srv,STT_OBJECT,4
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
