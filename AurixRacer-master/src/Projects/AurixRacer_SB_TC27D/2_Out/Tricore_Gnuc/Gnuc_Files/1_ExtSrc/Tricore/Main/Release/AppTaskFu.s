	.file	"AppTaskFu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.appTaskfu_init,"ax",@progbits
	.align 1
	.global	appTaskfu_init
	.type	appTaskfu_init, @function
appTaskfu_init:
.LFB724:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.loc 1 31 0
	.loc 1 39 0
	mov	%d15, 0
	movh.a	%a15, hi:zoneState
	.loc 1 32 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 33 0
	call	BasicPort_init
.LVL1:
	.loc 1 34 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 35 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 36 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 37 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 39 0
	st.b	[%a15] lo:zoneState, %d15
	.loc 1 40 0
	movh.a	%a15, hi:beforeZoneState
	st.b	[%a15] lo:beforeZoneState, %d15
	.loc 1 42 0
	mov	%d15, 1
	.loc 1 48 0
	movh	%d4, 15944
	.loc 1 42 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	.loc 1 48 0
	addi	%d4, %d4, -839
	.loc 1 42 0
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	.loc 1 48 0
	call	IR_setSrvAngle
.LVL6:
	.loc 1 49 0
	mov	%d4, 1
	call	IR_setMotor0En
.LVL7:
	.loc 1 50 0
	movh	%d4, 16026
	addi	%d4, %d4, -26214
	call	IR_setMotor0Vol
.LVL8:
	.loc 1 54 0
	j	InfineonRacer_init
.LVL9:
.LFE724:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB725:
	.loc 1 63 0
	.loc 1 64 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 65 0
	mov	%d2, 1000
	.loc 1 64 0
	add	%d15, 1
	.loc 1 65 0
	jne	%d15, %d2, .L5
	.loc 1 66 0
	mov	%d15, 0
.L5:
	st.w	[%a15] lo:task_cnt_1m, %d15
	ret
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.FollowingLine,"ax",@progbits
	.align 1
	.global	FollowingLine
	.type	FollowingLine, @function
FollowingLine:
.LFB727:
	.loc 1 271 0
	.loc 1 272 0
	movh.a	%a2, hi:g_nowCenterIndex
	ld.w	%d15, [%a2] lo:g_nowCenterIndex
	movh.a	%a15, hi:g_prevCenterIndex
	add	%d2, %d15, -1
	lt.u	%d2, %d2, 199
	jnz	%d2, .L8
	.loc 1 273 0
	ld.w	%d15, [%a15] lo:g_prevCenterIndex
	st.w	[%a2] lo:g_nowCenterIndex, %d15
.L8:
	.loc 1 275 0
	addi	%d2, %d15, -55
	jlt.u	%d2, 10, .L10
	.loc 1 276 0
	ld.w	%d4, [%a15] lo:g_prevCenterIndex
	sub	%d3, %d15, %d4
	ge	%d2, %d3, 30
	jltz	%d3, .L19
	.loc 1 277 0 discriminator 4
	movh.a	%a2, hi:g_cntDiffNowPrevCenterIndex
	.loc 1 276 0 discriminator 4
	jz	%d2, .L13
.L20:
	.loc 1 277 0
	ld.w	%d2, [%a2] lo:g_cntDiffNowPrevCenterIndex
	add	%d2, 1
	st.w	[%a2] lo:g_cntDiffNowPrevCenterIndex, %d2
	.loc 1 278 0
	lt	%d2, %d2, 15
	jnz	%d2, .L10
.L13:
	.loc 1 280 0
	mov	%d2, 0
	st.w	[%a2] lo:g_cntDiffNowPrevCenterIndex, %d2
.L10:
	.loc 1 287 0
	st.w	[%a15] lo:g_prevCenterIndex, %d15
	ret
.L19:
	.loc 1 276 0 discriminator 1
	rsub	%d2, %d15, 0
	sub	%d2, %d4
	ge	%d2, %d2, 30
	.loc 1 277 0 discriminator 1
	movh.a	%a2, hi:g_cntDiffNowPrevCenterIndex
	.loc 1 276 0 discriminator 1
	jz	%d2, .L13
	j	.L20
.LFE727:
	.size	FollowingLine, .-FollowingLine
	.global	__extendsfdf2
	.global	__subdf3
	.global	__truncdfsf2
	.global	__adddf3
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 75 0
	.loc 1 90 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 79 0
	movh.a	%a14, hi:IR_Srv
	.loc 1 90 0
	add	%d15, 1
	.loc 1 91 0
	mov	%d2, 1000
	.loc 1 75 0
	lea	%SP, [%SP] -928
.LCFI0:
	.loc 1 90 0
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 79 0
	ld.w	%d10, [%a14] lo:IR_Srv
.LVL10:
	.loc 1 91 0
	jeq	%d15, %d2, .L74
	.loc 1 82 0
	mov	%e8, 0
	.loc 1 95 0
	jz.t	%d15, 0, .L23
.LVL11:
	.loc 1 267 0
	movh.a	%a15, hi:g_leftIndex
	st.w	[%a15] lo:g_leftIndex, %d8
	.loc 1 268 0
	movh.a	%a15, hi:g_rightIndex
	st.w	[%a15] lo:g_rightIndex, %d9
	ret
.LVL12:
.L74:
	.loc 1 92 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L23:
	.loc 1 96 0
	call	BasicLineScan_run
.LVL13:
	.loc 1 103 0
	movh.a	%a15, hi:g_prevCenterIndex
	.loc 1 97 0
	call	InfineonRacer_detectLane
.LVL14:
	.loc 1 98 0
	call	BasicPort_run
.LVL15:
	.loc 1 99 0
	call	BasicGtmTom_run
.LVL16:
	.loc 1 100 0
	call	BasicVadcBgScan_run
.LVL17:
	.loc 1 103 0
	ld.w	%d4, [%a15] lo:g_prevCenterIndex
	movh.a	%a15, hi:g_cntDiffNowPrevCenterIndex
	ld.w	%d5, [%a15] lo:g_cntDiffNowPrevCenterIndex
	movh	%d11, hi:g_nowCenterIndex
	call	GetCameraCenter
.LVL18:
	mov.a	%a2, %d11
	.loc 1 106 0
	movh.a	%a12, hi:delayCountForCheckDetectZone
	.loc 1 103 0
	st.w	[%a2] lo:g_nowCenterIndex, %d2
	.loc 1 104 0
	call	FollowingLine
.LVL19:
	.loc 1 106 0
	ld.w	%d15, [%a12] lo:delayCountForCheckDetectZone
	movh.a	%a13, hi:zoneState
	jz	%d15, .L75
.L25:
	.loc 1 109 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	ld.w	%d15, [%a15] lo:delayCountForIsDetectZone
	movh.a	%a2, hi:beforeZoneState
	ld.bu	%d2, [%a2] lo:beforeZoneState
	jz	%d15, .L76
.L27:
	.loc 1 114 0
	ld.bu	%d15, [%a13] lo:zoneState
	jeq	%d15, %d2, .L28
	.loc 1 115 0
	ld.w	%d3, [%a12] lo:delayCountForCheckDetectZone
	.loc 1 116 0
	ld.w	%d5, [%a15] lo:delayCountForIsDetectZone
	.loc 1 115 0
	addi	%d15, %d3, 40
	.loc 1 117 0
	st.b	[%a13] lo:zoneState, %d2
	.loc 1 115 0
	st.w	[%a12] lo:delayCountForCheckDetectZone, %d15
	.loc 1 116 0
	addi	%d15, %d5, 40
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
.L28:
	.loc 1 120 0
	jz	%d2, .L77
	.loc 1 223 0
	jeq	%d2, 1, .L78
.L70:
	.loc 1 82 0
	mov	%e8, 0
.LVL20:
.L50:
	.loc 1 264 0
	call	AsclinShellInterface_runLineScan
.LVL21:
.L80:
	.loc 1 267 0
	movh.a	%a15, hi:g_leftIndex
	st.w	[%a15] lo:g_leftIndex, %d8
	.loc 1 268 0
	movh.a	%a15, hi:g_rightIndex
	st.w	[%a15] lo:g_rightIndex, %d9
	ret
.LVL22:
.L77:
	.loc 1 121 0
	movh	%d4, 16184
	addi	%d4, %d4, 20972
	call	IR_setMotor0Vol
.LVL23:
	movh.a	%a3, hi:IR_LineScan
	.loc 1 124 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 115
.LVL24:
.L30:
	.loc 1 125 0 discriminator 3
	addsc.a	%a2, %a3, %d15, 2
	addsc.a	%a4, %SP, %d15, 2
	ld.w	%d2, [%a2] 536
	st.w	[%a4]0, %d2
	.loc 1 124 0 discriminator 3
	add	%d15, 1
.LVL25:
	loop	%a15, .L30
	mov	%d2, 6
	lea	%a15, 115
.LVL26:
.L31:
	.loc 1 128 0 discriminator 3
	addsc.a	%a2, %a3, %d2, 2
	addsc.a	%a4, %SP, %d2, 2
	ld.w	%d3, [%a2]0
	st.w	[%a4] 440, %d3
	add	%d2, 1
.LVL27:
	.loc 1 127 0 discriminator 3
	loop	%a15, .L31
	.loc 1 132 0
	mov	%d4, 4096
	mov.aa	%a4, %SP
	call	Stretching
.LVL28:
	.loc 1 133 0
	mov.aa	%a4, %SP
	call	MedianFiltering
.LVL29:
	.loc 1 134 0
	mov.aa	%a4, %SP
	call	Sharpening
.LVL30:
	.loc 1 135 0
	movh	%d4, 2
	mov.aa	%a4, %SP
	addi	%d4, %d4, -31072
	call	Stretching
.LVL31:
	.loc 1 84 0
	mov	%e2, 116
	.loc 1 82 0
	mov	%d8, 0
	.loc 1 140 0
	mov.u	%d6, 50000
	.loc 1 144 0
	lea	%a15, 115
.LVL32:
.L34:
	.loc 1 140 0
	addsc.a	%a2, %SP, %d2, 2
	ld.w	%d5, [%a2]0
	jlt	%d5, %d6, .L32
	.loc 1 141 0
	jz	%d3, .L58
	.loc 1 144 0
	add	%d3, 1
.LVL33:
	.loc 1 145 0
	jge	%d3, 5, .L79
.LVL34:
.L32:
	.loc 1 139 0 discriminator 2
	add	%d2, -1
.LVL35:
	loop	%a15, .L34
	.loc 1 139 0 is_stmt 0
	mov	%d4, 0
	j	.L33
.L58:
	mov	%d8, %d2
	.loc 1 144 0 is_stmt 1
	mov	%d3, 1
.LVL36:
	j	.L32
.LVL37:
.L76:
	.loc 1 110 0
	mov	%d15, 4
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	.loc 1 111 0
	call	IsLimitZone
.LVL38:
	and	%d2, %d2, 255
	movh.a	%a2, hi:beforeZoneState
	st.b	[%a2] lo:beforeZoneState, %d2
	j	.L27
.L75:
	.loc 1 107 0
	ld.bu	%d4, [%a13] lo:zoneState
	call	CheckLimitZone
.LVL39:
	j	.L25
.LVL40:
.L79:
	mov	%d4, 1
	.loc 1 146 0
	mov	%d8, -1
.L33:
.LVL41:
	.loc 1 156 0
	rsub	%d5, %d15, 231
	mov.a	%a15, %d5
	.loc 1 83 0
	mov	%e2, 0
.LVL42:
	.loc 1 152 0
	mov.u	%d6, 50000
.LVL43:
.L37:
	addsc.a	%a2, %SP, %d15, 2
	ld.w	%d5, [%a2]0
	jlt	%d5, %d6, .L35
	.loc 1 153 0
	jnz	%d2, .L36
	addi	%d3, %d15, -116
.LVL44:
	.loc 1 156 0
	mov	%d2, 1
.LVL45:
.L35:
	.loc 1 151 0 discriminator 2
	add	%d15, 1
.LVL46:
	loop	%a15, .L37
	.loc 1 164 0
	ne	%d2, %d3, -1
.LVL47:
	and	%d15, %d2, %d4
.LVL48:
	mov	%d9, %d3
	jz	%d15, .L38
	.loc 1 165 0
	ge	%d15, %d3, 26
	jz	%d15, .L65
	.loc 1 168 0 discriminator 1
	ge	%d15, %d3, 64
	jz	%d15, .L71
	.loc 1 171 0 discriminator 1
	ge	%d15, %d3, 68
	jz	%d15, .L47
	.loc 1 174 0 discriminator 1
	addi	%d15, %d3, -68
	ge.u	%d15, %d15, 32
	.loc 1 175 0 discriminator 1
	mov	%d4, %d10
	.loc 1 174 0 discriminator 1
	jz	%d15, .L72
.LVL49:
.L48:
	.loc 1 196 0
	call	__extendsfdf2
.LVL50:
	movh	%d7, 16287
	movh	%d6, 60293
	mov	%e4, %d3, %d2
	addi	%d7, %d7, -18351
	addi	%d6, %d6, 7864
.L67:
	call	__adddf3
.LVL51:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL52:
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL53:
.L40:
	.loc 1 216 0
	ld.w	%d15, [%a14] lo:IR_Srv
	movh.a	%a15, hi:servoValue
	st.w	[%a15] lo:servoValue, %d15
	.loc 1 218 0
	call	GetInfraredSensorValue
.LVL54:
	lt	%d2, %d2, 151
	jnz	%d2, .L50
	.loc 1 219 0
	mov	%d4, 0
	call	IR_setMotor0Vol
.LVL55:
	.loc 1 220 0
	mov	%d4, 0
	call	IR_setMotor0En
.LVL56:
	.loc 1 264 0
	call	AsclinShellInterface_runLineScan
.LVL57:
	j	.L80
.LVL58:
.L36:
	.loc 1 156 0
	add	%d2, 1
.LVL59:
	.loc 1 158 0
	lt	%d5, %d2, 5
	sel	%d3, %d5, %d3, -1
.LVL60:
	j	.L35
.LVL61:
.L38:
	.loc 1 182 0
	eq	%d15, %d9, -1
	and.ne	%d15, %d8, -1
	ne	%d3, %d8, -1
.LVL62:
	jz	%d15, .L44
	.loc 1 183 0
	ge	%d15, %d8, 26
	jz	%d15, .L65
	.loc 1 186 0 discriminator 1
	ge	%d15, %d8, 64
	jz	%d15, .L71
	.loc 1 189 0 discriminator 1
	lt	%d15, %d8, 68
	jnz	%d15, .L47
	.loc 1 192 0 discriminator 1
	addi	%d15, %d8, -68
	ge.u	%d15, %d15, 32
	.loc 1 193 0 discriminator 1
	mov	%d4, %d10
	.loc 1 192 0 discriminator 1
	jnz	%d15, .L48
.LVL63:
.L72:
	.loc 1 193 0
	call	__extendsfdf2
.LVL64:
	movh	%d7, 16244
	movh	%d6, 18350
	mov	%e4, %d3, %d2
	addi	%d7, %d7, 31457
	addi	%d6, %d6, 5243
	j	.L67
.LVL65:
.L78:
	.loc 1 224 0
	call	GetDottedLine
.LVL66:
	mov	%d15, %d2
.LVL67:
	.loc 1 225 0
	call	GetCountPassedObject
.LVL68:
	.loc 1 226 0
	movh	%d4, 16051
	addi	%d4, %d4, 13107
	.loc 1 225 0
	mov	%d8, %d2
.LVL69:
	.loc 1 226 0
	call	IR_setMotor0Vol
.LVL70:
	.loc 1 227 0
	mov.a	%a3, %d11
	movh	%d2, 17008
	ld.w	%d4, [%a3] lo:g_nowCenterIndex
	movh	%d9, 15944
	itof	%d4, %d4
	addi	%d9, %d9, -839
	sub.f	%d4, %d4, %d2
	movh	%d2, 17096
	div.f	%d4, %d4, %d2
	movh	%d2, 16397
	addi	%d2, %d2, -13107
	mul.f	%d4, %d4, %d2
	.loc 1 229 0
	mov.a	%a15, %d11
	.loc 1 227 0
	add.f	%d4, %d4, %d9
	call	IR_setSrvAngle
.LVL71:
	.loc 1 229 0
	ld.w	%d2, [%a15] lo:g_nowCenterIndex
	addi	%d2, %d2, -55
	jlt.u	%d2, 11, .L81
.L52:
	.loc 1 233 0
	movh.a	%a15, hi:delayCountForPassedObject
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	jz	%d3, .L82
.L53:
	.loc 1 246 0
	jlez	%d3, .L70
	.loc 1 247 0
	rsub	%d4, %d15, 0
	itof	%d4, %d4
	movh	%d2, 16026
	addi	%d2, %d2, -26214
	mul.f	%d4, %d4, %d2
	movh	%d15, 15944
.LVL72:
	addi	%d15, %d15, -839
	add.f	%d4, %d4, %d15
	movh.a	%a15, hi:objectSrvAngle
	.loc 1 82 0
	mov	%e8, 0
.LVL73:
	.loc 1 247 0
	st.w	[%a15] lo:objectSrvAngle, %d4
	.loc 1 248 0
	call	IR_setSrvAngle
.LVL74:
	j	.L50
.LVL75:
.L44:
	.loc 1 200 0
	mov.a	%a15, %d11
	.loc 1 199 0
	and	%d2, %d3
	.loc 1 200 0
	ld.w	%d4, [%a15] lo:g_nowCenterIndex
	.loc 1 199 0
	jnz	%d2, .L66
	.loc 1 203 0
	ld.w	%d4, [%a15] lo:g_nowCenterIndex
.L66:
	itof	%d4, %d4
	movh	%d15, 17008
	sub.f	%d4, %d4, %d15
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
	movh	%d15, 16320
	mul.f	%d4, %d4, %d15
	movh	%d15, 15944
	addi	%d15, %d15, -839
	add.f	%d4, %d4, %d15
	call	IR_setSrvAngle
.LVL76:
	j	.L40
.L65:
	.loc 1 184 0
	mov	%d4, %d10
	call	__extendsfdf2
.LVL77:
	movh	%d7, 16287
	movh	%d6, 60293
	mov	%e4, %d3, %d2
	addi	%d7, %d7, -18351
	addi	%d6, %d6, 7864
.L68:
	call	__subdf3
.LVL78:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL79:
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL80:
	j	.L40
.LVL81:
.L82:
	.loc 1 234 0
	call	GetInfraredSensorValue
.LVL82:
	ge	%d2, %d2, 151
	jz	%d2, .L69
	.loc 1 235 0
	jz	%d8, .L83
.LVL83:
.L55:
	.loc 1 239 0
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	.loc 1 241 0
	mov	%d4, %d8
	.loc 1 239 0
	addi	%d2, %d3, 8
	.loc 1 240 0
	rsub	%d15
.LVL84:
	.loc 1 239 0
	st.w	[%a15] lo:delayCountForPassedObject, %d2
	.loc 1 241 0
	call	SetCountPassedObject
.LVL85:
	.loc 1 242 0
	mov	%d4, %d15
	call	SetDottedLine
.LVL86:
.L69:
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	j	.L53
.L81:
	.loc 1 230 0
	mov	%d4, %d9
	call	IR_setSrvAngle
.LVL87:
	j	.L52
.LVL88:
.L71:
	.loc 1 187 0
	mov	%d4, %d10
	call	__extendsfdf2
.LVL89:
	movh	%d7, 16244
	movh	%d6, 18350
	mov	%e4, %d3, %d2
	addi	%d7, %d7, 31457
	addi	%d6, %d6, 5243
	j	.L68
.L47:
	.loc 1 172 0
	movh	%d4, 15944
	addi	%d4, %d4, -839
	call	IR_setSrvAngle
.LVL90:
	j	.L40
.LVL91:
.L83:
	.loc 1 236 0
	call	GetDashLine
.LVL92:
	mov	%d15, %d2
.LVL93:
	.loc 1 237 0
	mov	%d8, 1
	j	.L55
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.SpeedZone,"ax",@progbits
	.align 1
	.global	SpeedZone
	.type	SpeedZone, @function
SpeedZone:
.LFB728:
	.loc 1 290 0
	ret
.LFE728:
	.size	SpeedZone, .-SpeedZone
.section .text.LimitZone,"ax",@progbits
	.align 1
	.global	LimitZone
	.type	LimitZone, @function
LimitZone:
.LFB729:
	.loc 1 294 0
	ret
.LFE729:
	.size	LimitZone, .-LimitZone
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB730:
	.loc 1 299 0
	.loc 1 300 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	ld.w	%d15, [%a15] lo:delayCountForIsDetectZone
	jlez	%d15, .L87
	.loc 1 301 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
.L88:
	.loc 1 306 0
	movh.a	%a15, hi:delayCountForCheckDetectZone
	ld.w	%d15, [%a15] lo:delayCountForCheckDetectZone
	jlez	%d15, .L89
	.loc 1 307 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForCheckDetectZone, %d15
.L90:
	.loc 1 312 0
	movh.a	%a15, hi:delayCountForPassedObject
	ld.w	%d15, [%a15] lo:delayCountForPassedObject
	jlez	%d15, .L91
	.loc 1 313 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForPassedObject, %d15
.L92:
	.loc 1 319 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 320 0
	mov	%d2, 1000
	.loc 1 319 0
	add	%d15, 1
	.loc 1 320 0
	jne	%d15, %d2, .L95
	.loc 1 321 0
	mov	%d15, 0
.L95:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.L91:
	.loc 1 315 0
	jgez	%d15, .L92
	.loc 1 316 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForPassedObject, %d15
	j	.L92
.L89:
	.loc 1 309 0
	jgez	%d15, .L90
	.loc 1 310 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForCheckDetectZone, %d15
	j	.L90
.L87:
	.loc 1 303 0
	jgez	%d15, .L88
	.loc 1 304 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	j	.L88
.LFE730:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB731:
	.loc 1 337 0
	.loc 1 339 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 340 0
	mov	%d2, 1000
	.loc 1 339 0
	add	%d15, 1
	.loc 1 340 0
	jne	%d15, %d2, .L99
	.loc 1 341 0
	mov	%d15, 0
.L99:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE731:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB732:
	.loc 1 346 0
	.loc 1 347 0
	j	AsclinShellInterface_run
.LVL94:
.LFE732:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB733:
	.loc 1 356 0
	.loc 1 357 0
	j	BasicGpt12Enc_run
.LVL95:
.LFE733:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
.section .text.test_srv_operation,"ax",@progbits
	.align 1
	.global	test_srv_operation
	.type	test_srv_operation, @function
test_srv_operation:
.LFB734:
	.loc 1 361 0
	.loc 1 363 0
	movh.a	%a15, hi:start
	ld.w	%d4, [%a15] lo:start
	call	IR_setSrvAngle
.LVL96:
	.loc 1 364 0
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	jnz.t	%d15, 0, .L119
.L103:
	.loc 1 368 0
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	movh.a	%a12, hi:start
	jz	%d15, .L105
	.loc 1 368 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a12] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L120
.L105:
	.loc 1 371 0 is_stmt 1
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	movh.a	%a12, hi:start
	jz	%d15, .L108
	.loc 1 371 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a12] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L121
.L108:
	.loc 1 374 0 is_stmt 1
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	movh.a	%a12, hi:start
	jz.t	%d15, 2, .L102
	.loc 1 375 0
	mov	%d15, -1
	movh.a	%a15, hi:state
	st.w	[%a15] lo:state, %d15
	.loc 1 376 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL97:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__subdf3
.LVL98:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL99:
	st.w	[%a12] lo:start, %d2
.L102:
	ret
.L119:
	.loc 1 365 0
	mov	%d15, 1
	movh.a	%a2, hi:state
	st.w	[%a2] lo:state, %d15
	.loc 1 366 0
	ld.w	%d4, [%a15] lo:start
	call	__extendsfdf2
.LVL100:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__adddf3
.LVL101:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL102:
	st.w	[%a15] lo:start, %d2
	j	.L103
.L121:
	.loc 1 371 0 discriminator 2
	movh.a	%a2, hi:state
	ld.w	%d15, [%a2] lo:state
	jne	%d15, 1, .L108
	.loc 1 372 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL103:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__adddf3
.LVL104:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL105:
	st.w	[%a12] lo:start, %d2
	j	.L108
.L120:
	.loc 1 368 0 discriminator 2
	movh.a	%a2, hi:state
	ld.w	%d15, [%a2] lo:state
	jne	%d15, -1, .L105
	.loc 1 369 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL106:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__subdf3
.LVL107:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL108:
	st.w	[%a12] lo:start, %d2
	j	.L105
.LFE734:
	.size	test_srv_operation, .-test_srv_operation
	.global	start
.section .data.start,"aw",@progbits
	.align 2
	.type	start, @object
	.size	start, 4
start:
	.word	1065353216
	.global	state
.section .data.state,"aw",@progbits
	.align 2
	.type	state, @object
	.size	state, 4
state:
	.word	-1
	.global	velocity
.section .bss.velocity,"aw",@nobits
	.align 2
	.type	velocity, @object
	.size	velocity, 4
velocity:
	.zero	4
	.global	g_rightIndex
.section .bss.g_rightIndex,"aw",@nobits
	.align 2
	.type	g_rightIndex, @object
	.size	g_rightIndex, 4
g_rightIndex:
	.zero	4
	.global	g_leftIndex
.section .bss.g_leftIndex,"aw",@nobits
	.align 2
	.type	g_leftIndex, @object
	.size	g_leftIndex, 4
g_leftIndex:
	.zero	4
	.global	servoValue
.section .bss.servoValue,"aw",@nobits
	.align 2
	.type	servoValue, @object
	.size	servoValue, 4
servoValue:
	.zero	4
	.global	g_line_center_value
.section .bss.g_line_center_value,"aw",@nobits
	.align 2
	.type	g_line_center_value, @object
	.size	g_line_center_value, 4
g_line_center_value:
	.zero	4
	.global	objectSrvAngle
.section .bss.objectSrvAngle,"aw",@nobits
	.align 2
	.type	objectSrvAngle, @object
	.size	objectSrvAngle, 4
objectSrvAngle:
	.zero	4
	.global	g_servoValue
.section .data.g_servoValue,"aw",@progbits
	.align 2
	.type	g_servoValue, @object
	.size	g_servoValue, 4
g_servoValue:
	.word	1114636288
	.global	g_cntDiffNowPrevCenterIndex
.section .bss.g_cntDiffNowPrevCenterIndex,"aw",@nobits
	.align 2
	.type	g_cntDiffNowPrevCenterIndex, @object
	.size	g_cntDiffNowPrevCenterIndex, 4
g_cntDiffNowPrevCenterIndex:
	.zero	4
	.global	g_prevCenterIndex
.section .data.g_prevCenterIndex,"aw",@progbits
	.align 2
	.type	g_prevCenterIndex, @object
	.size	g_prevCenterIndex, 4
g_prevCenterIndex:
	.word	60
	.global	g_nowCenterIndex
.section .data.g_nowCenterIndex,"aw",@progbits
	.align 2
	.type	g_nowCenterIndex, @object
	.size	g_nowCenterIndex, 4
g_nowCenterIndex:
	.word	60
	.global	delayCountForPassedObject
.section .bss.delayCountForPassedObject,"aw",@nobits
	.align 2
	.type	delayCountForPassedObject, @object
	.size	delayCountForPassedObject, 4
delayCountForPassedObject:
	.zero	4
	.global	delayCountForIsDetectZone
.section .bss.delayCountForIsDetectZone,"aw",@nobits
	.align 2
	.type	delayCountForIsDetectZone, @object
	.size	delayCountForIsDetectZone, 4
delayCountForIsDetectZone:
	.zero	4
	.global	delayCountForCheckDetectZone
.section .bss.delayCountForCheckDetectZone,"aw",@nobits
	.align 2
	.type	delayCountForCheckDetectZone, @object
	.size	delayCountForCheckDetectZone, 4
delayCountForCheckDetectZone:
	.zero	4
	.global	beforeZoneState
.section .bss.beforeZoneState,"aw",@nobits
	.type	beforeZoneState, @object
	.size	beforeZoneState, 1
beforeZoneState:
	.zero	1
	.global	zoneState
.section .bss.zoneState,"aw",@nobits
	.type	zoneState, @object
	.size	zoneState, 1
zoneState:
	.zero	1
	.global	task_flag_1000m
.section .bss.task_flag_1000m,"aw",@nobits
	.type	task_flag_1000m, @object
	.size	task_flag_1000m, 1
task_flag_1000m:
	.zero	1
	.global	task_flag_100m
.section .bss.task_flag_100m,"aw",@nobits
	.type	task_flag_100m, @object
	.size	task_flag_100m, 1
task_flag_100m:
	.zero	1
	.global	task_flag_10m
.section .bss.task_flag_10m,"aw",@nobits
	.type	task_flag_10m, @object
	.size	task_flag_10m, 1
task_flag_10m:
	.zero	1
	.global	task_flag_1m
.section .bss.task_flag_1m,"aw",@nobits
	.type	task_flag_1m, @object
	.size	task_flag_1m, 1
task_flag_1m:
	.zero	1
.section .bss.task_cnt_1000m,"aw",@nobits
	.align 2
	.type	task_cnt_1000m, @object
	.size	task_cnt_1000m, 4
task_cnt_1000m:
	.zero	4
.section .bss.task_cnt_100m,"aw",@nobits
	.align 2
	.type	task_cnt_100m, @object
	.size	task_cnt_100m, 4
task_cnt_100m:
	.zero	4
.section .bss.task_cnt_10m,"aw",@nobits
	.align 2
	.type	task_cnt_10m, @object
	.size	task_cnt_10m, 4
task_cnt_10m:
	.zero	4
.section .bss.task_cnt_1m,"aw",@nobits
	.align 2
	.type	task_cnt_1m, @object
	.size	task_cnt_1m, 4
task_cnt_1m:
	.zero	4
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
	.uaword	.LFB724
	.uaword	.LFE724-.LFB724
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB725
	.uaword	.LFE725-.LFB725
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.byte	0x4
	.uaword	.LCFI0-.LFB726
	.byte	0xe
	.uleb128 0x3a0
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB729
	.uaword	.LFE729-.LFB729
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB730
	.uaword	.LFE730-.LFB730
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB731
	.uaword	.LFE731-.LFB731
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB732
	.uaword	.LFE732-.LFB732
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB733
	.uaword	.LFE733-.LFB733
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 7 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 9 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1595
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\kdh95\\\\Desktop\\\\SmartCar\\\\AurixRacer-master\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x213
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1bd
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1c9
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1b4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1f4
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x288
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2c3
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x27a
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x205
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x30f
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2bd
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x236
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2e9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0xa
	.byte	0x76
	.uaword	0x395
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x62
	.uaword	0x2bb
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3cb
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x54a
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x395
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x26b
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x596
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5dd
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5f8
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x631
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6de
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x702
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x73c
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x77f
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x7a3
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x80c
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7dc
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x82a
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x84a
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x86b
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x66a
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x6a3
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x889
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x56b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x571
	.uleb128 0xc
	.uaword	0x26b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x56b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5b2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5b8
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26b
	.uaword	0x5d7
	.uleb128 0xe
	.uaword	0x395
	.uleb128 0xe
	.uaword	0x2bb
	.uleb128 0xe
	.uaword	0x5d7
	.uleb128 0xe
	.uaword	0x2c4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d8
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5b2
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x61b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x621
	.uleb128 0xd
	.byte	0x1
	.uaword	0x236
	.uaword	0x631
	.uleb128 0xe
	.uaword	0x395
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x654
	.uleb128 0x5
	.byte	0x4
	.uaword	0x65a
	.uleb128 0xd
	.byte	0x1
	.uaword	0x576
	.uaword	0x66a
	.uleb128 0xe
	.uaword	0x395
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x68d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x693
	.uleb128 0xd
	.byte	0x1
	.uaword	0x244
	.uaword	0x6a3
	.uleb128 0xe
	.uaword	0x395
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6c8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6ce
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2c4
	.uaword	0x6de
	.uleb128 0xe
	.uaword	0x395
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x61b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x726
	.uleb128 0x5
	.byte	0x4
	.uaword	0x72c
	.uleb128 0xd
	.byte	0x1
	.uaword	0x54a
	.uaword	0x73c
	.uleb128 0xe
	.uaword	0x395
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x75f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x765
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26b
	.uaword	0x77f
	.uleb128 0xe
	.uaword	0x395
	.uleb128 0xe
	.uaword	0x2d8
	.uleb128 0xe
	.uaword	0x2c4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x75f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7c1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7c7
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26b
	.uaword	0x7dc
	.uleb128 0xe
	.uaword	0x395
	.uleb128 0xe
	.uaword	0x2c4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7fa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x800
	.uleb128 0xf
	.byte	0x1
	.uaword	0x80c
	.uleb128 0xe
	.uaword	0x395
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7fa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7fa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7fa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7fa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7fa
	.uleb128 0x10
	.uahalf	0x600
	.byte	0x6
	.byte	0x1b
	.uaword	0x8ca
	.uleb128 0x8
	.string	"adcResult"
	.byte	0x6
	.byte	0x1c
	.uaword	0x8ca
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x244
	.uaword	0x8e0
	.uleb128 0x12
	.uaword	0x339
	.byte	0x2
	.uleb128 0x12
	.uaword	0x339
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.string	"IR_LineScan_t"
	.byte	0x6
	.byte	0x1d
	.uaword	0x8ae
	.uleb128 0x11
	.uaword	0x1de
	.uaword	0x905
	.uleb128 0x12
	.uaword	0x339
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x66
	.uaword	0x91c
	.uleb128 0x8
	.string	"Angle"
	.byte	0x7
	.byte	0x67
	.uaword	0x252
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x7
	.byte	0x68
	.uaword	0x905
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x26
	.uaword	0x956
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x8
	.byte	0x28
	.uaword	0x956
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x8
	.byte	0x29
	.uaword	0x205
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b5
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x8
	.byte	0x2a
	.uaword	0x92c
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x1b
	.uaword	0x9ae
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x9
	.byte	0x1c
	.uaword	0x236
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x9
	.byte	0x1d
	.uaword	0x236
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x9
	.byte	0x1e
	.uaword	0x26b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x9
	.byte	0x1f
	.uaword	0x96f
	.uleb128 0x13
	.string	"zone"
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.uaword	0x9e3
	.uleb128 0xa
	.string	"SPEED"
	.sleb128 0
	.uleb128 0xa
	.string	"LIMIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ZONE"
	.byte	0x1
	.byte	0x10
	.uaword	0x9c5
	.uleb128 0x14
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa79
	.uleb128 0x15
	.uaword	.LVL0
	.uaword	0x122b
	.uleb128 0x15
	.uaword	.LVL1
	.uaword	0x1244
	.uleb128 0x15
	.uaword	.LVL2
	.uaword	0x1259
	.uleb128 0x15
	.uaword	.LVL3
	.uaword	0x1270
	.uleb128 0x15
	.uaword	.LVL4
	.uaword	0x128b
	.uleb128 0x15
	.uaword	.LVL5
	.uaword	0x12a4
	.uleb128 0x15
	.uaword	.LVL6
	.uaword	0x12c4
	.uleb128 0x16
	.uaword	.LVL7
	.uaword	0x12e3
	.uaword	0xa65
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL8
	.uaword	0x1302
	.uleb128 0x18
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x1322
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"FollowingLine"
	.byte	0x1
	.uahalf	0x10f
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd80
	.uleb128 0x1c
	.string	"dottedLine"
	.byte	0x1
	.byte	0x4c
	.uaword	0x1de
	.uaword	.LLST0
	.uleb128 0x1c
	.string	"countPassedObject"
	.byte	0x1
	.byte	0x4d
	.uaword	0x1de
	.uaword	.LLST1
	.uleb128 0x1c
	.string	"currentSrvAngle"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1b4
	.uaword	.LLST2
	.uleb128 0x1d
	.string	"lStdValue"
	.byte	0x1
	.byte	0x50
	.uaword	0xd80
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
	.uleb128 0x1d
	.string	"rStdValue"
	.byte	0x1
	.byte	0x51
	.uaword	0xd80
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
	.uleb128 0x1c
	.string	"lIndex"
	.byte	0x1
	.byte	0x52
	.uaword	0x1de
	.uaword	.LLST3
	.uleb128 0x1c
	.string	"rIndex"
	.byte	0x1
	.byte	0x53
	.uaword	0x1de
	.uaword	.LLST4
	.uleb128 0x1c
	.string	"lcount"
	.byte	0x1
	.byte	0x54
	.uaword	0x1de
	.uaword	.LLST5
	.uleb128 0x1c
	.string	"rcount"
	.byte	0x1
	.byte	0x55
	.uaword	0x1de
	.uaword	.LLST6
	.uleb128 0x1d
	.string	"totalCamera"
	.byte	0x1
	.byte	0x56
	.uaword	0xd90
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x57
	.uaword	0x1de
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	.LVL13
	.uaword	0x133b
	.uleb128 0x15
	.uaword	.LVL14
	.uaword	0x1353
	.uleb128 0x15
	.uaword	.LVL15
	.uaword	0x1372
	.uleb128 0x15
	.uaword	.LVL16
	.uaword	0x1386
	.uleb128 0x15
	.uaword	.LVL17
	.uaword	0x139c
	.uleb128 0x15
	.uaword	.LVL18
	.uaword	0x13b6
	.uleb128 0x15
	.uaword	.LVL19
	.uaword	0xa97
	.uleb128 0x15
	.uaword	.LVL21
	.uaword	0x13df
	.uleb128 0x15
	.uaword	.LVL23
	.uaword	0x1302
	.uleb128 0x16
	.uaword	.LVL28
	.uaword	0x1406
	.uaword	0xc48
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1000
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL29
	.uaword	0x142c
	.uaword	0xc5c
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL30
	.uaword	0x144c
	.uaword	0xc70
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL31
	.uaword	0x1406
	.uaword	0xc8d
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x186a0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL38
	.uaword	0x1467
	.uleb128 0x15
	.uaword	.LVL39
	.uaword	0x1482
	.uleb128 0x15
	.uaword	.LVL53
	.uaword	0x12c4
	.uleb128 0x15
	.uaword	.LVL54
	.uaword	0x14a1
	.uleb128 0x16
	.uaword	.LVL55
	.uaword	0x1302
	.uaword	0xccb
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b4
	.byte	0x4
	.uaword	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL56
	.uaword	0x12e3
	.uaword	0xcde
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL57
	.uaword	0x13df
	.uleb128 0x15
	.uaword	.LVL66
	.uaword	0x14c2
	.uleb128 0x15
	.uaword	.LVL68
	.uaword	0x14df
	.uleb128 0x15
	.uaword	.LVL70
	.uaword	0x1302
	.uleb128 0x15
	.uaword	.LVL71
	.uaword	0x12c4
	.uleb128 0x15
	.uaword	.LVL74
	.uaword	0x12c4
	.uleb128 0x15
	.uaword	.LVL76
	.uaword	0x12c4
	.uleb128 0x15
	.uaword	.LVL80
	.uaword	0x12c4
	.uleb128 0x15
	.uaword	.LVL82
	.uaword	0x14a1
	.uleb128 0x16
	.uaword	.LVL85
	.uaword	0x1503
	.uaword	0xd43
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL86
	.uaword	0x1528
	.uaword	0xd57
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL87
	.uaword	0x12c4
	.uaword	0xd6d
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1b4
	.byte	0
	.uleb128 0x15
	.uaword	.LVL90
	.uaword	0x12c4
	.uleb128 0x15
	.uaword	.LVL92
	.uaword	0x1546
	.byte	0
	.uleb128 0x11
	.uaword	0x1de
	.uaword	0xd90
	.uleb128 0x12
	.uaword	0x339
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	0x1de
	.uaword	0xda0
	.uleb128 0x12
	.uaword	0x339
	.byte	0xe7
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"SpeedZone"
	.byte	0x1
	.uahalf	0x122
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"LimitZone"
	.byte	0x1
	.uahalf	0x126
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x150
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x15a
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe46
	.uleb128 0x18
	.uaword	.LVL94
	.byte	0x1
	.uaword	0x1561
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe73
	.uleb128 0x18
	.uaword	.LVL95
	.byte	0x1
	.uaword	0x1580
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"test_srv_operation"
	.byte	0x1
	.uahalf	0x169
	.byte	0x1
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xea5
	.uleb128 0x15
	.uaword	.LVL96
	.uaword	0x12c4
	.byte	0
	.uleb128 0x1d
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x4
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x1d
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x5
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x1d
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x6
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x1d
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x7
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x11
	.uaword	0x30f
	.uaword	0xf1f
	.uleb128 0x12
	.uaword	0x339
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xa
	.byte	0x96
	.uaword	0xf3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.uaword	0xf0f
	.uleb128 0x21
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x244
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"IR_LineScan"
	.byte	0x6
	.byte	0x22
	.uaword	0x8e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"IR_Srv"
	.byte	0x7
	.byte	0x6e
	.uaword	0x91c
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"Ifx_g_console"
	.byte	0x8
	.byte	0x2c
	.uaword	0x95c
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"IR_Ctrl"
	.byte	0x9
	.byte	0x24
	.uaword	0x9ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x23
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x23
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x23
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xc
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x23
	.string	"zoneState"
	.byte	0x1
	.byte	0x12
	.uaword	0x9e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	zoneState
	.uleb128 0x23
	.string	"beforeZoneState"
	.byte	0x1
	.byte	0x12
	.uaword	0x9e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	beforeZoneState
	.uleb128 0x23
	.string	"delayCountForCheckDetectZone"
	.byte	0x1
	.byte	0x14
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForCheckDetectZone
	.uleb128 0x23
	.string	"delayCountForIsDetectZone"
	.byte	0x1
	.byte	0x15
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForIsDetectZone
	.uleb128 0x23
	.string	"delayCountForPassedObject"
	.byte	0x1
	.byte	0x16
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForPassedObject
	.uleb128 0x23
	.string	"g_nowCenterIndex"
	.byte	0x1
	.byte	0x18
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_nowCenterIndex
	.uleb128 0x23
	.string	"g_prevCenterIndex"
	.byte	0x1
	.byte	0x19
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_prevCenterIndex
	.uleb128 0x23
	.string	"g_cntDiffNowPrevCenterIndex"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_cntDiffNowPrevCenterIndex
	.uleb128 0x23
	.string	"g_servoValue"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_servoValue
	.uleb128 0x23
	.string	"objectSrvAngle"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	objectSrvAngle
	.uleb128 0x23
	.string	"g_line_center_value"
	.byte	0x1
	.byte	0x46
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_line_center_value
	.uleb128 0x23
	.string	"servoValue"
	.byte	0x1
	.byte	0x47
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	servoValue
	.uleb128 0x23
	.string	"g_leftIndex"
	.byte	0x1
	.byte	0x48
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_leftIndex
	.uleb128 0x23
	.string	"g_rightIndex"
	.byte	0x1
	.byte	0x49
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_rightIndex
	.uleb128 0x24
	.string	"velocity"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x11f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	velocity
	.uleb128 0xc
	.uaword	0x1de
	.uleb128 0x24
	.string	"state"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x11f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	state
	.uleb128 0x24
	.string	"start"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x1226
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	start
	.uleb128 0xc
	.uaword	0x1b4
	.uleb128 0x25
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xc
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0x7
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0xf
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0x7
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x12e3
	.uleb128 0xe
	.uaword	0x252
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IR_setMotor0En"
	.byte	0xc
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uaword	0x1302
	.uleb128 0xe
	.uaword	0x26b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0x7
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0x1322
	.uleb128 0xe
	.uaword	0x252
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x9
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0x6
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x9
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xc
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0x7
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"GetCameraCenter"
	.byte	0x6
	.byte	0x41
	.byte	0x1
	.uaword	0x1de
	.byte	0x1
	.uaword	0x13df
	.uleb128 0xe
	.uaword	0x1de
	.uleb128 0xe
	.uaword	0x1de
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0xf
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"Stretching"
	.byte	0x6
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uaword	0x1426
	.uleb128 0xe
	.uaword	0x1426
	.uleb128 0xe
	.uaword	0x1de
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x8f5
	.uleb128 0x26
	.byte	0x1
	.string	"MedianFiltering"
	.byte	0x6
	.byte	0x49
	.byte	0x1
	.byte	0x1
	.uaword	0x144c
	.uleb128 0xe
	.uaword	0x1426
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Sharpening"
	.byte	0x6
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uaword	0x1467
	.uleb128 0xe
	.uaword	0x1426
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IsLimitZone"
	.byte	0x6
	.byte	0x51
	.uaword	0x1de
	.byte	0x1
	.uaword	0x1482
	.uleb128 0x29
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"CheckLimitZone"
	.byte	0x6
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uaword	0x14a1
	.uleb128 0xe
	.uaword	0x1de
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"GetInfraredSensorValue"
	.byte	0xd
	.byte	0x2b
	.byte	0x1
	.uaword	0x1de
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.string	"GetDottedLine"
	.byte	0x6
	.byte	0x57
	.uaword	0x1de
	.byte	0x1
	.uaword	0x14df
	.uleb128 0x29
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"GetCountPassedObject"
	.byte	0x6
	.byte	0x55
	.uaword	0x1de
	.byte	0x1
	.uaword	0x1503
	.uleb128 0x29
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"SetCountPassedObject"
	.byte	0x6
	.byte	0x56
	.byte	0x1
	.byte	0x1
	.uaword	0x1528
	.uleb128 0xe
	.uaword	0x1de
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"SetDottedLine"
	.byte	0x6
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x1546
	.uleb128 0xe
	.uaword	0x1de
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"GetDashLine"
	.byte	0x6
	.byte	0x52
	.uaword	0x1de
	.byte	0x1
	.uaword	0x1561
	.uleb128 0x29
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0xf
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0xe
	.byte	0x2f
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL67
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68-1
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93
	.uaword	.LFE726
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL69
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL70-1
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL93
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50-1
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64-1
	.uaword	.LFE726
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL22
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL65
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL91
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL22
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL49
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL65
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL91
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL65
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x72
	.sleb128 -5
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x3
	.byte	0x72
	.sleb128 -6
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x3
	.byte	0x8
	.byte	0x74
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x8
	.byte	0x74
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB724
	.uaword	.LFE724-.LFB724
	.uaword	.LFB725
	.uaword	.LFE725-.LFB725
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.uaword	.LFB729
	.uaword	.LFE729-.LFB729
	.uaword	.LFB730
	.uaword	.LFE730-.LFB730
	.uaword	.LFB731
	.uaword	.LFE731-.LFB731
	.uaword	.LFB732
	.uaword	.LFE732-.LFB732
	.uaword	.LFB733
	.uaword	.LFE733-.LFB733
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB724
	.uaword	.LFE724
	.uaword	.LFB725
	.uaword	.LFE725
	.uaword	.LFB727
	.uaword	.LFE727
	.uaword	.LFB726
	.uaword	.LFE726
	.uaword	.LFB728
	.uaword	.LFE728
	.uaword	.LFB729
	.uaword	.LFE729
	.uaword	.LFB730
	.uaword	.LFE730
	.uaword	.LFB731
	.uaword	.LFE731
	.uaword	.LFB732
	.uaword	.LFE732
	.uaword	.LFB733
	.uaword	.LFE733
	.uaword	.LFB734
	.uaword	.LFE734
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	GetDashLine,STT_FUNC,0
	.extern	SetDottedLine,STT_FUNC,0
	.extern	SetCountPassedObject,STT_FUNC,0
	.extern	GetCountPassedObject,STT_FUNC,0
	.extern	GetDottedLine,STT_FUNC,0
	.extern	GetInfraredSensorValue,STT_FUNC,0
	.extern	CheckLimitZone,STT_FUNC,0
	.extern	IsLimitZone,STT_FUNC,0
	.extern	Sharpening,STT_FUNC,0
	.extern	MedianFiltering,STT_FUNC,0
	.extern	Stretching,STT_FUNC,0
	.extern	IR_LineScan,STT_OBJECT,1536
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	GetCameraCenter,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	InfineonRacer_detectLane,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_Srv,STT_OBJECT,4
	.extern	InfineonRacer_init,STT_FUNC,0
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	IR_setMotor0En,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
