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
	.loc 1 36 0
	.loc 1 44 0
	mov	%d15, 0
	movh.a	%a15, hi:zoneState
	.loc 1 37 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 38 0
	call	BasicPort_init
.LVL1:
	.loc 1 39 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 40 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 41 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 42 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 44 0
	st.b	[%a15] lo:zoneState, %d15
	.loc 1 45 0
	movh.a	%a15, hi:beforeZoneState
	st.b	[%a15] lo:beforeZoneState, %d15
	.loc 1 48 0
	mov	%d15, 1
	.loc 1 54 0
	movh	%d4, 15944
	.loc 1 48 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	.loc 1 54 0
	addi	%d4, %d4, -839
	.loc 1 48 0
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	.loc 1 54 0
	call	IR_setSrvAngle
.LVL6:
	.loc 1 55 0
	mov	%d4, 1
	call	IR_setMotor0En
.LVL7:
	.loc 1 56 0
	movh	%d4, 16026
	addi	%d4, %d4, -26214
	call	IR_setMotor0Vol
.LVL8:
	.loc 1 60 0
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
	.loc 1 69 0
	.loc 1 70 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 71 0
	mov	%d2, 1000
	.loc 1 70 0
	add	%d15, 1
	.loc 1 71 0
	jne	%d15, %d2, .L5
	.loc 1 72 0
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
	.loc 1 184 0
	.loc 1 185 0
	movh.a	%a2, hi:g_nowCenterIndex
	ld.w	%d15, [%a2] lo:g_nowCenterIndex
	movh.a	%a15, hi:g_prevCenterIndex
	add	%d2, %d15, -1
	lt.u	%d2, %d2, 199
	jnz	%d2, .L8
	.loc 1 186 0
	ld.w	%d15, [%a15] lo:g_prevCenterIndex
	st.w	[%a2] lo:g_nowCenterIndex, %d15
.L8:
	.loc 1 188 0
	addi	%d2, %d15, -68
	jlt.u	%d2, 4, .L9
	.loc 1 189 0
	ld.w	%d3, [%a15] lo:g_prevCenterIndex
	sub	%d4, %d15, %d3
	ge	%d2, %d4, 30
	jltz	%d4, .L16
	.loc 1 189 0 is_stmt 0 discriminator 4
	jz	%d2, .L12
.L17:
	.loc 1 190 0 is_stmt 1
	movh.a	%a3, hi:g_cntDiffNowPrevCenterIndex
	ld.w	%d2, [%a3] lo:g_cntDiffNowPrevCenterIndex
	add	%d2, 1
	st.w	[%a3] lo:g_cntDiffNowPrevCenterIndex, %d2
	.loc 1 191 0
	lt	%d2, %d2, 15
	jnz	%d2, .L14
	.loc 1 193 0
	st.w	[%a3] lo:g_cntDiffNowPrevCenterIndex, %d2
.L13:
	.loc 1 195 0
	st.w	[%a2] lo:g_nowCenterIndex, %d15
.L9:
	.loc 1 201 0
	st.w	[%a15] lo:g_prevCenterIndex, %d15
	ret
.L12:
	.loc 1 198 0
	movh.a	%a2, hi:g_cntDiffNowPrevCenterIndex
	st.w	[%a2] lo:g_cntDiffNowPrevCenterIndex, %d2
	.loc 1 201 0
	st.w	[%a15] lo:g_prevCenterIndex, %d15
	ret
.L16:
	.loc 1 189 0 discriminator 1
	rsub	%d2, %d15, 0
	sub	%d2, %d3
	ge	%d2, %d2, 30
	jz	%d2, .L12
	j	.L17
.L14:
	mov	%d15, %d3
	j	.L13
.LFE727:
	.size	FollowingLine, .-FollowingLine
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 81 0
	.loc 1 85 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 86 0
	mov	%d2, 1000
	.loc 1 85 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 86 0
	jeq	%d15, %d2, .L48
	.loc 1 90 0
	jz.t	%d15, 0, .L20
	ret
.L48:
	.loc 1 87 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L20:
	.loc 1 91 0
	call	BasicLineScan_run
.LVL10:
	.loc 1 97 0
	movh.a	%a15, hi:g_prevCenterIndex
	.loc 1 92 0
	call	InfineonRacer_detectLane
.LVL11:
	.loc 1 93 0
	call	BasicPort_run
.LVL12:
	.loc 1 94 0
	call	BasicGtmTom_run
.LVL13:
	.loc 1 95 0
	call	BasicVadcBgScan_run
.LVL14:
	.loc 1 97 0
	ld.w	%d4, [%a15] lo:g_prevCenterIndex
	movh.a	%a15, hi:g_cntDiffNowPrevCenterIndex
	ld.w	%d5, [%a15] lo:g_cntDiffNowPrevCenterIndex
	movh.a	%a13, hi:g_nowCenterIndex
	call	GetCameraCenter
.LVL15:
	.loc 1 100 0
	movh.a	%a12, hi:delayCountForCheckDetectZone
	.loc 1 97 0
	st.w	[%a13] lo:g_nowCenterIndex, %d2
	.loc 1 98 0
	call	FollowingLine
.LVL16:
	.loc 1 100 0
	ld.w	%d15, [%a12] lo:delayCountForCheckDetectZone
	movh.a	%a14, hi:zoneState
	jz	%d15, .L49
.L22:
	.loc 1 103 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	ld.w	%d15, [%a15] lo:delayCountForIsDetectZone
	movh.a	%a2, hi:beforeZoneState
	ld.bu	%d2, [%a2] lo:beforeZoneState
	jz	%d15, .L50
.L24:
	.loc 1 108 0
	ld.bu	%d15, [%a14] lo:zoneState
	jeq	%d2, %d15, .L25
	.loc 1 109 0
	ld.w	%d3, [%a12] lo:delayCountForCheckDetectZone
	addi	%d2, %d3, 40
	.loc 1 110 0
	ld.w	%d3, [%a15] lo:delayCountForIsDetectZone
	.loc 1 109 0
	st.w	[%a12] lo:delayCountForCheckDetectZone, %d2
	.loc 1 110 0
	addi	%d2, %d3, 40
	st.w	[%a15] lo:delayCountForIsDetectZone, %d2
.L25:
	.loc 1 113 0
	jz	%d15, .L51
	.loc 1 130 0
	jeq	%d15, 1, .L52
.L30:
	.loc 1 180 0
	j	AsclinShellInterface_runLineScan
.LVL17:
.L51:
	.loc 1 114 0
	movh	%d4, 16128
	call	IR_setMotor0Vol
.LVL18:
	.loc 1 116 0
	ld.w	%d2, [%a13] lo:g_nowCenterIndex
	addi	%d15, %d2, -65
	jge.u	%d15, 11, .L27
	.loc 1 117 0
	itof	%d4, %d2
	movh	%d15, 17036
	sub.f	%d4, %d4, %d15
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
	movh	%d15, 16320
.L44:
	.loc 1 120 0
	mul.f	%d4, %d4, %d15
	movh	%d15, 15944
	addi	%d15, %d15, -839
	add.f	%d4, %d4, %d15
	.loc 1 122 0
	movh.a	%a15, hi:IR_Srv
	.loc 1 120 0
	call	IR_setSrvAngle
.LVL19:
	.loc 1 122 0
	ld.w	%d15, [%a15] lo:IR_Srv
	movh.a	%a15, hi:servoValue
	st.w	[%a15] lo:servoValue, %d15
	.loc 1 125 0
	movh.a	%a15, hi:initAvoidValue
	call	GetInfraredSensorValue
.LVL20:
	ld.w	%d15, [%a15] lo:initAvoidValue
	addi	%d15, %d15, 150
	jge	%d15, %d2, .L30
	.loc 1 126 0
	mov	%d4, 0
	call	IR_setMotor0Vol
.LVL21:
	.loc 1 180 0
	j	AsclinShellInterface_runLineScan
.LVL22:
.L50:
	.loc 1 104 0
	mov	%d15, 4
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	.loc 1 105 0
	call	IsLimitZone
.LVL23:
	and	%d2, %d2, 255
	movh.a	%a2, hi:beforeZoneState
	st.b	[%a2] lo:beforeZoneState, %d2
	j	.L24
.L49:
	.loc 1 101 0
	ld.bu	%d4, [%a14] lo:zoneState
	call	CheckLimitZone
.LVL24:
	j	.L22
.L27:
	.loc 1 119 0
	movh	%d4, 16026
	addi	%d4, %d4, -26214
	call	IR_setMotor0Vol
.LVL25:
	.loc 1 120 0
	movh.a	%a15, hi:g_nowCenterIndex
	ld.w	%d4, [%a15] lo:g_nowCenterIndex
	movh	%d15, 17036
	itof	%d4, %d4
	sub.f	%d4, %d4, %d15
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
	movh	%d15, 16416
	j	.L44
.L52:
	.loc 1 131 0
	call	GetDottedLine
.LVL26:
	mov	%d15, %d2
.LVL27:
	.loc 1 132 0
	call	GetCountPassedObject
.LVL28:
	.loc 1 133 0
	movh	%d4, 16077
	addi	%d4, %d4, -13107
	.loc 1 132 0
	mov	%d8, %d2
.LVL29:
	.loc 1 133 0
	call	IR_setMotor0Vol
.LVL30:
	.loc 1 135 0
	ld.w	%d2, [%a13] lo:g_nowCenterIndex
	addi	%d3, %d2, -65
	.loc 1 136 0
	itof	%d4, %d2
	.loc 1 135 0
	jge.u	%d3, 11, .L32
	.loc 1 136 0
	movh	%d3, 17036
	sub.f	%d4, %d4, %d3
	movh	%d3, 17096
	div.f	%d4, %d4, %d3
	movh	%d3, 16320
.L45:
	.loc 1 138 0
	mul.f	%d4, %d4, %d3
	movh	%d2, 15944
	addi	%d2, %d2, -839
	add.f	%d4, %d4, %d2
	.loc 1 141 0
	movh.a	%a15, hi:delayCountForPassedObject
	.loc 1 138 0
	call	IR_setSrvAngle
.LVL31:
	.loc 1 141 0
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	jz	%d3, .L53
.L34:
	.loc 1 154 0
	jlez	%d3, .L37
	.loc 1 155 0
	movh	%d8, 16026
.LVL32:
	addi	%d8, %d8, -26214
	mov	%d4, %d8
	call	IR_setMotor0Vol
.LVL33:
	.loc 1 156 0
	itof	%d4, %d15
	movh	%d2, 15944
	mul.f	%d4, %d4, %d8
	addi	%d2, %d2, -839
	add.f	%d4, %d4, %d2
	movh.a	%a2, hi:objectSrvAngle
	st.w	[%a2] lo:objectSrvAngle, %d4
	.loc 1 157 0
	call	IR_setSrvAngle
.LVL34:
	.loc 1 158 0
	mov	%d2, 1
	movh.a	%a2, hi:isRecovery
	st.w	[%a2] lo:isRecovery, %d2
	.loc 1 160 0
	ld.w	%d2, [%a15] lo:delayCountForPassedObject
	jlez	%d2, .L38
.L47:
	movh.a	%a15, hi:delayCountForRecovery
	ld.w	%d2, [%a15] lo:delayCountForRecovery
.L39:
	.loc 1 165 0
	jlez	%d2, .L30
	.loc 1 166 0
	rsub	%d4, %d15, 0
	itof	%d4, %d4
	movh	%d2, 16026
	addi	%d2, %d2, -26214
	mul.f	%d4, %d4, %d2
	movh	%d2, 15944
	addi	%d2, %d2, -839
	add.f	%d4, %d4, %d2
	movh.a	%a15, hi:objectSrvAngle
	st.w	[%a15] lo:objectSrvAngle, %d4
	.loc 1 167 0
	call	IR_setSrvAngle
.LVL35:
	.loc 1 180 0
	j	AsclinShellInterface_runLineScan
.LVL36:
.L53:
	.loc 1 142 0
	call	GetInfraredSensorValue
.LVL37:
	movh.a	%a2, hi:initAvoidValue
	ld.w	%d3, [%a2] lo:initAvoidValue
	addi	%d3, %d3, 185
	jge	%d3, %d2, .L46
	.loc 1 143 0
	jz	%d8, .L54
.LVL38:
.L36:
	.loc 1 147 0
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	.loc 1 149 0
	mov	%d4, %d8
	.loc 1 147 0
	addi	%d2, %d3, 12
	.loc 1 148 0
	rsub	%d15
.LVL39:
	.loc 1 147 0
	st.w	[%a15] lo:delayCountForPassedObject, %d2
	.loc 1 149 0
	call	SetCountPassedObject
.LVL40:
	.loc 1 150 0
	mov	%d4, %d15
	call	SetDottedLine
.LVL41:
.L46:
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	j	.L34
.L32:
	.loc 1 138 0
	movh	%d3, 17036
	sub.f	%d4, %d4, %d3
	movh	%d3, 17096
	div.f	%d4, %d4, %d3
	movh	%d3, 16416
	j	.L45
.L37:
	.loc 1 160 0
	movh.a	%a2, hi:isRecovery
	ld.w	%d2, [%a2] lo:isRecovery
	jne	%d2, 1, .L47
.LVL42:
.L38:
	.loc 1 161 0
	mov	%d2, 0
	.loc 1 162 0
	movh.a	%a15, hi:delayCountForRecovery
	ld.w	%d3, [%a15] lo:delayCountForRecovery
	.loc 1 161 0
	st.w	[%a2] lo:isRecovery, %d2
	.loc 1 162 0
	addi	%d2, %d3, 12
	st.w	[%a15] lo:delayCountForRecovery, %d2
	j	.L39
.LVL43:
.L54:
	.loc 1 144 0
	call	GetDashLine
.LVL44:
	mov	%d15, %d2
.LVL45:
	.loc 1 145 0
	mov	%d8, 1
	j	.L36
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.SpeedZone,"ax",@progbits
	.align 1
	.global	SpeedZone
	.type	SpeedZone, @function
SpeedZone:
.LFB728:
	.loc 1 204 0
	ret
.LFE728:
	.size	SpeedZone, .-SpeedZone
.section .text.LimitZone,"ax",@progbits
	.align 1
	.global	LimitZone
	.type	LimitZone, @function
LimitZone:
.LFB729:
	.loc 1 208 0
	ret
.LFE729:
	.size	LimitZone, .-LimitZone
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB730:
	.loc 1 213 0
	.loc 1 214 0
	movh.a	%a15, hi:isFirst
	ld.w	%d15, [%a15] lo:isFirst
	jge	%d15, 3, .L58
	.loc 1 215 0
	add	%d15, 1
	st.w	[%a15] lo:isFirst, %d15
	.loc 1 217 0
	jeq	%d15, 1, .L70
.L58:
	.loc 1 221 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	ld.w	%d15, [%a15] lo:delayCountForIsDetectZone
	jlez	%d15, .L59
	.loc 1 222 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
.L60:
	.loc 1 227 0
	movh.a	%a15, hi:delayCountForCheckDetectZone
	ld.w	%d15, [%a15] lo:delayCountForCheckDetectZone
	jlez	%d15, .L61
.L71:
	.loc 1 228 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForCheckDetectZone, %d15
.L62:
	.loc 1 233 0
	movh.a	%a15, hi:delayCountForPassedObject
	ld.w	%d15, [%a15] lo:delayCountForPassedObject
	jlez	%d15, .L63
.L72:
	.loc 1 234 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForPassedObject, %d15
.L64:
	.loc 1 239 0
	movh.a	%a15, hi:delayCountForRecovery
	ld.w	%d15, [%a15] lo:delayCountForRecovery
	jlez	%d15, .L65
	.loc 1 240 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForRecovery, %d15
.L66:
	.loc 1 246 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 247 0
	mov	%d2, 1000
	.loc 1 246 0
	add	%d15, 1
	.loc 1 247 0
	jne	%d15, %d2, .L69
	.loc 1 248 0
	mov	%d15, 0
.L69:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.L65:
	.loc 1 242 0
	jgez	%d15, .L66
	.loc 1 243 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForRecovery, %d15
	j	.L66
.L59:
	.loc 1 224 0
	jgez	%d15, .L60
	.loc 1 225 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	.loc 1 227 0
	movh.a	%a15, hi:delayCountForCheckDetectZone
	ld.w	%d15, [%a15] lo:delayCountForCheckDetectZone
	jgtz	%d15, .L71
.L61:
	.loc 1 230 0
	jgez	%d15, .L62
	.loc 1 231 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForCheckDetectZone, %d15
	.loc 1 233 0
	movh.a	%a15, hi:delayCountForPassedObject
	ld.w	%d15, [%a15] lo:delayCountForPassedObject
	jgtz	%d15, .L72
.L63:
	.loc 1 236 0
	jgez	%d15, .L64
	.loc 1 237 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForPassedObject, %d15
	j	.L64
.L70:
	.loc 1 218 0
	call	GetInfraredSensorValue
.LVL46:
	movh.a	%a15, hi:initAvoidValue
	st.w	[%a15] lo:initAvoidValue, %d2
	j	.L58
.LFE730:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB731:
	.loc 1 264 0
	.loc 1 266 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 267 0
	mov	%d2, 1000
	.loc 1 266 0
	add	%d15, 1
	.loc 1 267 0
	jne	%d15, %d2, .L76
	.loc 1 268 0
	mov	%d15, 0
.L76:
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
	.loc 1 273 0
	.loc 1 274 0
	j	AsclinShellInterface_run
.LVL47:
.LFE732:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB733:
	.loc 1 283 0
	.loc 1 284 0
	j	BasicGpt12Enc_run
.LVL48:
.LFE733:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	__extendsfdf2
	.global	__adddf3
	.global	__truncdfsf2
	.global	__subdf3
.section .text.test_srv_operation,"ax",@progbits
	.align 1
	.global	test_srv_operation
	.type	test_srv_operation, @function
test_srv_operation:
.LFB734:
	.loc 1 288 0
	.loc 1 290 0
	movh.a	%a15, hi:start
	ld.w	%d4, [%a15] lo:start
	call	IR_setSrvAngle
.LVL49:
	.loc 1 291 0
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	jnz.t	%d15, 0, .L96
.L80:
	.loc 1 295 0
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	movh.a	%a12, hi:start
	jz	%d15, .L82
	.loc 1 295 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a12] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L97
.L82:
	.loc 1 298 0 is_stmt 1
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	movh.a	%a12, hi:start
	jz	%d15, .L85
	.loc 1 298 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a12] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L98
.L85:
	.loc 1 301 0 is_stmt 1
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	movh.a	%a12, hi:start
	jz.t	%d15, 2, .L79
	.loc 1 302 0
	mov	%d15, -1
	movh.a	%a15, hi:state
	st.w	[%a15] lo:state, %d15
	.loc 1 303 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL50:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__subdf3
.LVL51:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL52:
	st.w	[%a12] lo:start, %d2
.L79:
	ret
.L96:
	.loc 1 292 0
	mov	%d15, 1
	movh.a	%a2, hi:state
	st.w	[%a2] lo:state, %d15
	.loc 1 293 0
	ld.w	%d4, [%a15] lo:start
	call	__extendsfdf2
.LVL53:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__adddf3
.LVL54:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL55:
	st.w	[%a15] lo:start, %d2
	j	.L80
.L98:
	.loc 1 298 0 discriminator 2
	movh.a	%a2, hi:state
	ld.w	%d15, [%a2] lo:state
	jne	%d15, 1, .L85
	.loc 1 299 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL56:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__adddf3
.LVL57:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL58:
	st.w	[%a12] lo:start, %d2
	j	.L85
.L97:
	.loc 1 295 0 discriminator 2
	movh.a	%a2, hi:state
	ld.w	%d15, [%a2] lo:state
	jne	%d15, -1, .L82
	.loc 1 296 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL59:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__subdf3
.LVL60:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL61:
	st.w	[%a12] lo:start, %d2
	j	.L82
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
	.word	1116471296
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
	.word	70
	.global	g_nowCenterIndex
.section .data.g_nowCenterIndex,"aw",@progbits
	.align 2
	.type	g_nowCenterIndex, @object
	.size	g_nowCenterIndex, 4
g_nowCenterIndex:
	.word	70
	.global	initAvoidValue
.section .bss.initAvoidValue,"aw",@nobits
	.align 2
	.type	initAvoidValue, @object
	.size	initAvoidValue, 4
initAvoidValue:
	.zero	4
	.global	isFirst
.section .bss.isFirst,"aw",@nobits
	.align 2
	.type	isFirst, @object
	.size	isFirst, 4
isFirst:
	.zero	4
	.global	isRecovery
.section .bss.isRecovery,"aw",@nobits
	.align 2
	.type	isRecovery, @object
	.size	isRecovery, 4
isRecovery:
	.zero	4
	.global	delayCountForRecovery
.section .bss.delayCountForRecovery,"aw",@nobits
	.align 2
	.type	delayCountForRecovery, @object
	.size	delayCountForRecovery, 4
delayCountForRecovery:
	.zero	4
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
	.file 6 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 8 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 11 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x13f6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\kdh95\\\\Desktop\\\\SmartCarTest\\\\AurixRacer-master\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
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
	.uaword	0x217
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
	.uaword	0x1c1
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1cd
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1f8
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x28c
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
	.uaword	0x2c7
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x27e
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x209
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x313
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2c1
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x23a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2ed
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
	.byte	0x9
	.byte	0x76
	.uaword	0x399
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
	.uaword	0x2bf
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3cf
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x54e
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x399
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x26f
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x59a
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5e1
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5fc
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x635
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6e2
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x706
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x740
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x783
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x7a7
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x810
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7e0
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x82e
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x84e
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x86f
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x66e
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x6a7
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x88d
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x56f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x575
	.uleb128 0xc
	.uaword	0x26f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x56f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5b6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5bc
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26f
	.uaword	0x5db
	.uleb128 0xe
	.uaword	0x399
	.uleb128 0xe
	.uaword	0x2bf
	.uleb128 0xe
	.uaword	0x5db
	.uleb128 0xe
	.uaword	0x2c8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2dc
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5b6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x61f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x625
	.uleb128 0xd
	.byte	0x1
	.uaword	0x23a
	.uaword	0x635
	.uleb128 0xe
	.uaword	0x399
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x658
	.uleb128 0x5
	.byte	0x4
	.uaword	0x65e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x57a
	.uaword	0x66e
	.uleb128 0xe
	.uaword	0x399
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x691
	.uleb128 0x5
	.byte	0x4
	.uaword	0x697
	.uleb128 0xd
	.byte	0x1
	.uaword	0x248
	.uaword	0x6a7
	.uleb128 0xe
	.uaword	0x399
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6cc
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6d2
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2c8
	.uaword	0x6e2
	.uleb128 0xe
	.uaword	0x399
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x61f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x72a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x730
	.uleb128 0xd
	.byte	0x1
	.uaword	0x54e
	.uaword	0x740
	.uleb128 0xe
	.uaword	0x399
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x763
	.uleb128 0x5
	.byte	0x4
	.uaword	0x769
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26f
	.uaword	0x783
	.uleb128 0xe
	.uaword	0x399
	.uleb128 0xe
	.uaword	0x2dc
	.uleb128 0xe
	.uaword	0x2c8
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x763
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7c5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7cb
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26f
	.uaword	0x7e0
	.uleb128 0xe
	.uaword	0x399
	.uleb128 0xe
	.uaword	0x2c8
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7fe
	.uleb128 0x5
	.byte	0x4
	.uaword	0x804
	.uleb128 0xf
	.byte	0x1
	.uaword	0x810
	.uleb128 0xe
	.uaword	0x399
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7fe
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7fe
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7fe
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7fe
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7fe
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x66
	.uaword	0x8c9
	.uleb128 0x8
	.string	"Angle"
	.byte	0x6
	.byte	0x67
	.uaword	0x256
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x6
	.byte	0x68
	.uaword	0x8b2
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x26
	.uaword	0x903
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x7
	.byte	0x28
	.uaword	0x903
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x7
	.byte	0x29
	.uaword	0x209
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b9
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x7
	.byte	0x2a
	.uaword	0x8d9
	.uleb128 0x7
	.byte	0xc
	.byte	0x8
	.byte	0x1b
	.uaword	0x95b
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x8
	.byte	0x1c
	.uaword	0x23a
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x8
	.byte	0x1d
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x8
	.byte	0x1e
	.uaword	0x26f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x8
	.byte	0x1f
	.uaword	0x91c
	.uleb128 0x10
	.string	"zone"
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.uaword	0x990
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
	.uaword	0x972
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa26
	.uleb128 0x12
	.uaword	.LVL0
	.uaword	0x10ed
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x1106
	.uleb128 0x12
	.uaword	.LVL2
	.uaword	0x111b
	.uleb128 0x12
	.uaword	.LVL3
	.uaword	0x1132
	.uleb128 0x12
	.uaword	.LVL4
	.uaword	0x114d
	.uleb128 0x12
	.uaword	.LVL5
	.uaword	0x1166
	.uleb128 0x12
	.uaword	.LVL6
	.uaword	0x1186
	.uleb128 0x13
	.uaword	.LVL7
	.uaword	0x11a5
	.uaword	0xa12
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL8
	.uaword	0x11c4
	.uleb128 0x15
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x11e4
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"FollowingLine"
	.byte	0x1
	.byte	0xb8
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbfc
	.uleb128 0x18
	.string	"dottedLine"
	.byte	0x1
	.byte	0x52
	.uaword	0x1e2
	.uaword	.LLST0
	.uleb128 0x18
	.string	"countPassedObject"
	.byte	0x1
	.byte	0x53
	.uaword	0x1e2
	.uaword	.LLST1
	.uleb128 0x12
	.uaword	.LVL10
	.uaword	0x11fd
	.uleb128 0x12
	.uaword	.LVL11
	.uaword	0x1215
	.uleb128 0x12
	.uaword	.LVL12
	.uaword	0x1234
	.uleb128 0x12
	.uaword	.LVL13
	.uaword	0x1248
	.uleb128 0x12
	.uaword	.LVL14
	.uaword	0x125e
	.uleb128 0x12
	.uaword	.LVL15
	.uaword	0x1278
	.uleb128 0x12
	.uaword	.LVL16
	.uaword	0xa44
	.uleb128 0x15
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x12a1
	.uleb128 0x13
	.uaword	.LVL18
	.uaword	0x11c4
	.uaword	0xb1a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b8
	.byte	0x4
	.uaword	0x3f000000
	.byte	0
	.uleb128 0x12
	.uaword	.LVL19
	.uaword	0x1186
	.uleb128 0x12
	.uaword	.LVL20
	.uaword	0x12c8
	.uleb128 0x13
	.uaword	.LVL21
	.uaword	0x11c4
	.uaword	0xb46
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b8
	.byte	0x4
	.uaword	0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x12a1
	.uleb128 0x12
	.uaword	.LVL23
	.uaword	0x12e9
	.uleb128 0x12
	.uaword	.LVL24
	.uaword	0x1304
	.uleb128 0x12
	.uaword	.LVL25
	.uaword	0x11c4
	.uleb128 0x12
	.uaword	.LVL26
	.uaword	0x1323
	.uleb128 0x12
	.uaword	.LVL28
	.uaword	0x1340
	.uleb128 0x12
	.uaword	.LVL30
	.uaword	0x11c4
	.uleb128 0x12
	.uaword	.LVL31
	.uaword	0x1186
	.uleb128 0x13
	.uaword	.LVL33
	.uaword	0x11c4
	.uaword	0xba5
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x1b8
	.byte	0
	.uleb128 0x12
	.uaword	.LVL34
	.uaword	0x1186
	.uleb128 0x12
	.uaword	.LVL35
	.uaword	0x1186
	.uleb128 0x15
	.uaword	.LVL36
	.byte	0x1
	.uaword	0x12a1
	.uleb128 0x12
	.uaword	.LVL37
	.uaword	0x12c8
	.uleb128 0x13
	.uaword	.LVL40
	.uaword	0x1364
	.uaword	0xbde
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL41
	.uaword	0x1389
	.uaword	0xbf2
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL44
	.uaword	0x13a7
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"SpeedZone"
	.byte	0x1
	.byte	0xcc
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"LimitZone"
	.byte	0x1
	.byte	0xd0
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc5c
	.uleb128 0x12
	.uaword	.LVL46
	.uaword	0x12c8
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcad
	.uleb128 0x15
	.uaword	.LVL47
	.byte	0x1
	.uaword	0x13c2
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x11b
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcda
	.uleb128 0x15
	.uaword	.LVL48
	.byte	0x1
	.uaword	0x13e1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"test_srv_operation"
	.byte	0x1
	.uahalf	0x120
	.byte	0x1
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd0c
	.uleb128 0x12
	.uaword	.LVL49
	.uaword	0x1186
	.byte	0
	.uleb128 0x1c
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x4
	.uaword	0x23a
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x1c
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x5
	.uaword	0x23a
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x1c
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x6
	.uaword	0x23a
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x1c
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x7
	.uaword	0x23a
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x1d
	.uaword	0x313
	.uaword	0xd86
	.uleb128 0x1e
	.uaword	0x33d
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0xda3
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0xd76
	.uleb128 0x1f
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x79
	.uaword	0x248
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"IR_Srv"
	.byte	0x6
	.byte	0x6e
	.uaword	0x8c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Ifx_g_console"
	.byte	0x7
	.byte	0x2c
	.uaword	0x909
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"IR_Ctrl"
	.byte	0x8
	.byte	0x24
	.uaword	0x95b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x21
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x21
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x21
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xc
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x21
	.string	"zoneState"
	.byte	0x1
	.byte	0x12
	.uaword	0x990
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	zoneState
	.uleb128 0x21
	.string	"beforeZoneState"
	.byte	0x1
	.byte	0x12
	.uaword	0x990
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	beforeZoneState
	.uleb128 0x21
	.string	"delayCountForCheckDetectZone"
	.byte	0x1
	.byte	0x14
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForCheckDetectZone
	.uleb128 0x21
	.string	"delayCountForIsDetectZone"
	.byte	0x1
	.byte	0x15
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForIsDetectZone
	.uleb128 0x21
	.string	"delayCountForPassedObject"
	.byte	0x1
	.byte	0x16
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForPassedObject
	.uleb128 0x21
	.string	"delayCountForRecovery"
	.byte	0x1
	.byte	0x17
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForRecovery
	.uleb128 0x21
	.string	"isRecovery"
	.byte	0x1
	.byte	0x18
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	isRecovery
	.uleb128 0x21
	.string	"isFirst"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	isFirst
	.uleb128 0x21
	.string	"initAvoidValue"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	initAvoidValue
	.uleb128 0x21
	.string	"g_nowCenterIndex"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_nowCenterIndex
	.uleb128 0x21
	.string	"g_prevCenterIndex"
	.byte	0x1
	.byte	0x1e
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_prevCenterIndex
	.uleb128 0x21
	.string	"g_cntDiffNowPrevCenterIndex"
	.byte	0x1
	.byte	0x1f
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_cntDiffNowPrevCenterIndex
	.uleb128 0x21
	.string	"g_servoValue"
	.byte	0x1
	.byte	0x20
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_servoValue
	.uleb128 0x21
	.string	"objectSrvAngle"
	.byte	0x1
	.byte	0x22
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	objectSrvAngle
	.uleb128 0x21
	.string	"g_line_center_value"
	.byte	0x1
	.byte	0x4c
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_line_center_value
	.uleb128 0x21
	.string	"servoValue"
	.byte	0x1
	.byte	0x4d
	.uaword	0x1b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	servoValue
	.uleb128 0x21
	.string	"g_leftIndex"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_leftIndex
	.uleb128 0x21
	.string	"g_rightIndex"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_rightIndex
	.uleb128 0x22
	.string	"velocity"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x10b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	velocity
	.uleb128 0xc
	.uaword	0x1e2
	.uleb128 0x22
	.string	"state"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x10b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	state
	.uleb128 0x22
	.string	"start"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x10e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	start
	.uleb128 0xc
	.uaword	0x1b8
	.uleb128 0x23
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xb
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xc
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0x6
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0xf
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x11a5
	.uleb128 0xe
	.uaword	0x256
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IR_setMotor0En"
	.byte	0xc
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uaword	0x11c4
	.uleb128 0xe
	.uaword	0x26f
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0x6
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0x11e4
	.uleb128 0xe
	.uaword	0x256
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x8
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xb
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x8
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xc
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0x6
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"GetCameraCenter"
	.byte	0xb
	.byte	0x46
	.byte	0x1
	.uaword	0x1e2
	.byte	0x1
	.uaword	0x12a1
	.uleb128 0xe
	.uaword	0x1e2
	.uleb128 0xe
	.uaword	0x1e2
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0xf
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"GetInfraredSensorValue"
	.byte	0xd
	.byte	0x2b
	.byte	0x1
	.uaword	0x1e2
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"IsLimitZone"
	.byte	0xb
	.byte	0x58
	.uaword	0x1e2
	.byte	0x1
	.uaword	0x1304
	.uleb128 0x28
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"CheckLimitZone"
	.byte	0xb
	.byte	0x57
	.byte	0x1
	.byte	0x1
	.uaword	0x1323
	.uleb128 0xe
	.uaword	0x1e2
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"GetDottedLine"
	.byte	0xb
	.byte	0x5e
	.uaword	0x1e2
	.byte	0x1
	.uaword	0x1340
	.uleb128 0x28
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"GetCountPassedObject"
	.byte	0xb
	.byte	0x5c
	.uaword	0x1e2
	.byte	0x1
	.uaword	0x1364
	.uleb128 0x28
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"SetCountPassedObject"
	.byte	0xb
	.byte	0x5d
	.byte	0x1
	.byte	0x1
	.uaword	0x1389
	.uleb128 0xe
	.uaword	0x1e2
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"SetDottedLine"
	.byte	0xb
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uaword	0x13a7
	.uleb128 0xe
	.uaword	0x1e2
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"GetDashLine"
	.byte	0xb
	.byte	0x59
	.uaword	0x1e2
	.byte	0x1
	.uaword	0x13c2
	.uleb128 0x28
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0xf
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28-1
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LFE726
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30-1
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL36
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL45
	.uaword	.LFE726
	.uahalf	0x2
	.byte	0x31
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
	.extern	CheckLimitZone,STT_FUNC,0
	.extern	IsLimitZone,STT_FUNC,0
	.extern	GetInfraredSensorValue,STT_FUNC,0
	.extern	IR_Srv,STT_OBJECT,4
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	GetCameraCenter,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	InfineonRacer_detectLane,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
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
