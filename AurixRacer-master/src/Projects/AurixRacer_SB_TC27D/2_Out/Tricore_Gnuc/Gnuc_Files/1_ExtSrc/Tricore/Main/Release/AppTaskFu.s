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
	.loc 1 172 0
	.loc 1 173 0
	movh.a	%a2, hi:g_nowCenterIndex
	ld.w	%d15, [%a2] lo:g_nowCenterIndex
	movh.a	%a15, hi:g_prevCenterIndex
	add	%d2, %d15, -1
	lt.u	%d2, %d2, 199
	jnz	%d2, .L8
	.loc 1 174 0
	ld.w	%d15, [%a15] lo:g_prevCenterIndex
	st.w	[%a2] lo:g_nowCenterIndex, %d15
.L8:
	.loc 1 176 0
	addi	%d2, %d15, -55
	jlt.u	%d2, 10, .L10
	.loc 1 177 0
	ld.w	%d4, [%a15] lo:g_prevCenterIndex
	sub	%d3, %d15, %d4
	ge	%d2, %d3, 30
	jltz	%d3, .L19
	.loc 1 178 0 discriminator 4
	movh.a	%a2, hi:g_cntDiffNowPrevCenterIndex
	.loc 1 177 0 discriminator 4
	jz	%d2, .L13
.L20:
	.loc 1 178 0
	ld.w	%d2, [%a2] lo:g_cntDiffNowPrevCenterIndex
	add	%d2, 1
	st.w	[%a2] lo:g_cntDiffNowPrevCenterIndex, %d2
	.loc 1 179 0
	lt	%d2, %d2, 15
	jnz	%d2, .L10
.L13:
	.loc 1 181 0
	mov	%d2, 0
	st.w	[%a2] lo:g_cntDiffNowPrevCenterIndex, %d2
.L10:
	.loc 1 188 0
	st.w	[%a15] lo:g_prevCenterIndex, %d15
	ret
.L19:
	.loc 1 177 0 discriminator 1
	rsub	%d2, %d15, 0
	sub	%d2, %d4
	ge	%d2, %d2, 30
	.loc 1 178 0 discriminator 1
	movh.a	%a2, hi:g_cntDiffNowPrevCenterIndex
	.loc 1 177 0 discriminator 1
	jz	%d2, .L13
	j	.L20
.LFE727:
	.size	FollowingLine, .-FollowingLine
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 73 0
	.loc 1 77 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 78 0
	mov	%d2, 1000
	.loc 1 77 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 78 0
	jeq	%d15, %d2, .L41
	.loc 1 82 0
	jz.t	%d15, 0, .L23
	ret
.L41:
	.loc 1 79 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L23:
	.loc 1 83 0
	call	BasicLineScan_run
.LVL10:
	.loc 1 90 0
	movh.a	%a15, hi:g_prevCenterIndex
	.loc 1 84 0
	call	InfineonRacer_detectLane
.LVL11:
	.loc 1 85 0
	call	BasicPort_run
.LVL12:
	.loc 1 86 0
	call	BasicGtmTom_run
.LVL13:
	.loc 1 87 0
	call	BasicVadcBgScan_run
.LVL14:
	.loc 1 90 0
	ld.w	%d4, [%a15] lo:g_prevCenterIndex
	movh.a	%a15, hi:g_cntDiffNowPrevCenterIndex
	ld.w	%d5, [%a15] lo:g_cntDiffNowPrevCenterIndex
	movh.a	%a13, hi:g_nowCenterIndex
	call	GetCameraCenter
.LVL15:
	.loc 1 93 0
	movh.a	%a12, hi:delayCountForCheckDetectZone
	.loc 1 90 0
	st.w	[%a13] lo:g_nowCenterIndex, %d2
	.loc 1 91 0
	call	FollowingLine
.LVL16:
	.loc 1 93 0
	ld.w	%d15, [%a12] lo:delayCountForCheckDetectZone
	movh.a	%a14, hi:zoneState
	jz	%d15, .L42
.L25:
	.loc 1 96 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	ld.w	%d15, [%a15] lo:delayCountForIsDetectZone
	movh.a	%a2, hi:beforeZoneState
	ld.bu	%d2, [%a2] lo:beforeZoneState
	jz	%d15, .L43
.L27:
	.loc 1 101 0
	ld.bu	%d15, [%a14] lo:zoneState
	jeq	%d15, %d2, .L28
	.loc 1 102 0
	ld.w	%d3, [%a12] lo:delayCountForCheckDetectZone
	.loc 1 104 0
	st.b	[%a14] lo:zoneState, %d2
	.loc 1 102 0
	addi	%d15, %d3, 40
	.loc 1 103 0
	ld.w	%d3, [%a15] lo:delayCountForIsDetectZone
	.loc 1 102 0
	st.w	[%a12] lo:delayCountForCheckDetectZone, %d15
	.loc 1 103 0
	addi	%d15, %d3, 40
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
.L28:
	.loc 1 107 0
	jz	%d2, .L44
	.loc 1 127 0
	jeq	%d2, 1, .L45
.L33:
	.loc 1 168 0
	j	AsclinShellInterface_runLineScan
.LVL17:
.L44:
	.loc 1 108 0
	movh	%d4, 16184
	addi	%d4, %d4, 20972
	call	IR_setMotor0Vol
.LVL18:
	.loc 1 109 0
	ld.w	%d4, [%a13] lo:g_nowCenterIndex
	movh	%d15, 17008
	itof	%d4, %d4
	sub.f	%d4, %d4, %d15
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
	movh	%d15, 16320
	mul.f	%d4, %d4, %d15
	movh	%d15, 15944
	addi	%d15, %d15, -839
	add.f	%d4, %d4, %d15
	call	IR_setSrvAngle
.LVL19:
	.loc 1 110 0
	ld.w	%d2, [%a13] lo:g_nowCenterIndex
	addi	%d2, %d2, -55
	jlt.u	%d2, 11, .L46
	.loc 1 113 0
	movh	%d4, 16051
	addi	%d4, %d4, 13107
	call	IR_setMotor0Vol
.LVL20:
.L31:
	.loc 1 120 0
	movh.a	%a15, hi:IR_Srv
	ld.w	%d15, [%a15] lo:IR_Srv
	movh.a	%a15, hi:servoValue
	st.w	[%a15] lo:servoValue, %d15
	.loc 1 122 0
	call	GetInfraredSensorValue
.LVL21:
	ge	%d2, %d2, 121
	jz	%d2, .L33
	.loc 1 123 0
	mov	%d4, 0
	call	IR_setMotor0Vol
.LVL22:
	.loc 1 124 0
	mov	%d4, 0
	call	IR_setMotor0En
.LVL23:
	.loc 1 168 0
	j	AsclinShellInterface_runLineScan
.LVL24:
.L43:
	.loc 1 97 0
	mov	%d15, 4
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	.loc 1 98 0
	call	IsLimitZone
.LVL25:
	and	%d2, %d2, 255
	movh.a	%a2, hi:beforeZoneState
	st.b	[%a2] lo:beforeZoneState, %d2
	j	.L27
.L42:
	.loc 1 94 0
	ld.bu	%d4, [%a14] lo:zoneState
	call	CheckLimitZone
.LVL26:
	j	.L25
.L45:
.LBB2:
	.loc 1 128 0
	call	GetDottedLine
.LVL27:
	mov	%d15, %d2
.LVL28:
	.loc 1 129 0
	call	GetCountPassedObject
.LVL29:
	.loc 1 130 0
	movh	%d4, 16051
	addi	%d4, %d4, 13107
	.loc 1 129 0
	mov	%d8, %d2
.LVL30:
	.loc 1 130 0
	call	IR_setMotor0Vol
.LVL31:
	.loc 1 131 0
	ld.w	%d4, [%a13] lo:g_nowCenterIndex
	movh	%d2, 17008
	itof	%d4, %d4
	movh	%d9, 15944
	sub.f	%d4, %d4, %d2
	movh	%d2, 17096
	div.f	%d4, %d4, %d2
	movh	%d2, 16397
	addi	%d2, %d2, -13107
	mul.f	%d4, %d4, %d2
	addi	%d9, %d9, -839
	add.f	%d4, %d4, %d9
	call	IR_setSrvAngle
.LVL32:
	.loc 1 133 0
	ld.w	%d2, [%a13] lo:g_nowCenterIndex
	addi	%d2, %d2, -55
	jlt.u	%d2, 11, .L47
.L35:
	.loc 1 137 0
	movh.a	%a15, hi:delayCountForPassedObject
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	jz	%d3, .L48
.L36:
	.loc 1 150 0
	jlez	%d3, .L33
	.loc 1 151 0
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
	.loc 1 152 0
	call	IR_setSrvAngle
.LVL33:
.LBE2:
	.loc 1 168 0
	j	AsclinShellInterface_runLineScan
.LVL34:
.L48:
.LBB5:
	.loc 1 138 0
	call	GetInfraredSensorValue
.LVL35:
	ge	%d2, %d2, 121
	jz	%d2, .L40
.LBB3:
	.loc 1 139 0
	jz	%d8, .L49
.LVL36:
.L38:
	.loc 1 143 0
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	.loc 1 145 0
	mov	%d4, %d8
	.loc 1 143 0
	addi	%d2, %d3, 8
	.loc 1 144 0
	rsub	%d15
.LVL37:
	.loc 1 143 0
	st.w	[%a15] lo:delayCountForPassedObject, %d2
	.loc 1 145 0
	call	SetCountPassedObject
.LVL38:
	.loc 1 146 0
	mov	%d4, %d15
	call	SetDottedLine
.LVL39:
.L40:
	ld.w	%d3, [%a15] lo:delayCountForPassedObject
	j	.L36
.LVL40:
.L46:
.LBE3:
.LBE5:
	.loc 1 111 0
	mov	%d4, %d15
	call	IR_setSrvAngle
.LVL41:
	j	.L31
.LVL42:
.L47:
.LBB6:
	.loc 1 134 0
	mov	%d4, %d9
	call	IR_setSrvAngle
.LVL43:
	j	.L35
.L49:
.LBB4:
	.loc 1 140 0
	call	GetDashLine
.LVL44:
	mov	%d15, %d2
.LVL45:
	.loc 1 141 0
	mov	%d8, 1
	j	.L38
.LBE4:
.LBE6:
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.SpeedZone,"ax",@progbits
	.align 1
	.global	SpeedZone
	.type	SpeedZone, @function
SpeedZone:
.LFB728:
	.loc 1 191 0
	ret
.LFE728:
	.size	SpeedZone, .-SpeedZone
.section .text.LimitZone,"ax",@progbits
	.align 1
	.global	LimitZone
	.type	LimitZone, @function
LimitZone:
.LFB729:
	.loc 1 195 0
	ret
.LFE729:
	.size	LimitZone, .-LimitZone
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB730:
	.loc 1 200 0
	.loc 1 201 0
	movh.a	%a15, hi:delayCountForIsDetectZone
	ld.w	%d15, [%a15] lo:delayCountForIsDetectZone
	jlez	%d15, .L53
	.loc 1 202 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
.L54:
	.loc 1 207 0
	movh.a	%a15, hi:delayCountForCheckDetectZone
	ld.w	%d15, [%a15] lo:delayCountForCheckDetectZone
	jlez	%d15, .L55
	.loc 1 208 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForCheckDetectZone, %d15
.L56:
	.loc 1 213 0
	movh.a	%a15, hi:delayCountForPassedObject
	ld.w	%d15, [%a15] lo:delayCountForPassedObject
	jlez	%d15, .L57
	.loc 1 214 0
	add	%d15, -1
	st.w	[%a15] lo:delayCountForPassedObject, %d15
.L58:
	.loc 1 220 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 221 0
	mov	%d2, 1000
	.loc 1 220 0
	add	%d15, 1
	.loc 1 221 0
	jne	%d15, %d2, .L61
	.loc 1 222 0
	mov	%d15, 0
.L61:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.L57:
	.loc 1 216 0
	jgez	%d15, .L58
	.loc 1 217 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForPassedObject, %d15
	j	.L58
.L55:
	.loc 1 210 0
	jgez	%d15, .L56
	.loc 1 211 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForCheckDetectZone, %d15
	j	.L56
.L53:
	.loc 1 204 0
	jgez	%d15, .L54
	.loc 1 205 0
	mov	%d15, 0
	st.w	[%a15] lo:delayCountForIsDetectZone, %d15
	j	.L54
.LFE730:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB731:
	.loc 1 238 0
	.loc 1 240 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 241 0
	mov	%d2, 1000
	.loc 1 240 0
	add	%d15, 1
	.loc 1 241 0
	jne	%d15, %d2, .L65
	.loc 1 242 0
	mov	%d15, 0
.L65:
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
	.loc 1 247 0
	.loc 1 248 0
	j	AsclinShellInterface_run
.LVL46:
.LFE732:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB733:
	.loc 1 257 0
	.loc 1 258 0
	j	BasicGpt12Enc_run
.LVL47:
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
	.loc 1 262 0
	.loc 1 264 0
	movh.a	%a15, hi:start
	ld.w	%d4, [%a15] lo:start
	call	IR_setSrvAngle
.LVL48:
	.loc 1 265 0
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	jnz.t	%d15, 0, .L85
.L69:
	.loc 1 269 0
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	movh.a	%a12, hi:start
	jz	%d15, .L71
	.loc 1 269 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a12] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L86
.L71:
	.loc 1 272 0 is_stmt 1
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 49024
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,2, %d15,1
	movh.a	%a12, hi:start
	jz	%d15, .L74
	.loc 1 272 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a12] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L87
.L74:
	.loc 1 275 0 is_stmt 1
	ld.w	%d15, [%a15] lo:start
	movh	%d2, 16256
	cmp.f	%d15, %d15, %d2
	movh.a	%a12, hi:start
	jz.t	%d15, 2, .L68
	.loc 1 276 0
	mov	%d15, -1
	movh.a	%a15, hi:state
	st.w	[%a15] lo:state, %d15
	.loc 1 277 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL49:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__subdf3
.LVL50:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL51:
	st.w	[%a12] lo:start, %d2
.L68:
	ret
.L85:
	.loc 1 266 0
	mov	%d15, 1
	movh.a	%a2, hi:state
	st.w	[%a2] lo:state, %d15
	.loc 1 267 0
	ld.w	%d4, [%a15] lo:start
	call	__extendsfdf2
.LVL52:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__adddf3
.LVL53:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL54:
	st.w	[%a15] lo:start, %d2
	j	.L69
.L87:
	.loc 1 272 0 discriminator 2
	movh.a	%a2, hi:state
	ld.w	%d15, [%a2] lo:state
	jne	%d15, 1, .L74
	.loc 1 273 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL55:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__adddf3
.LVL56:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL57:
	st.w	[%a12] lo:start, %d2
	j	.L74
.L86:
	.loc 1 269 0 discriminator 2
	movh.a	%a2, hi:state
	ld.w	%d15, [%a2] lo:state
	jne	%d15, -1, .L71
	.loc 1 270 0
	ld.w	%d4, [%a12] lo:start
	call	__extendsfdf2
.LVL58:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__subdf3
.LVL59:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL60:
	st.w	[%a12] lo:start, %d2
	j	.L71
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
	.uaword	0x1369
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\kdh95\\\\Desktop\\\\SmartCar\\\\AurixRacer-master\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x38
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
	.byte	0x9
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
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x66
	.uaword	0x8c5
	.uleb128 0x8
	.string	"Angle"
	.byte	0x6
	.byte	0x67
	.uaword	0x252
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x6
	.byte	0x68
	.uaword	0x8ae
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x26
	.uaword	0x8ff
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x7
	.byte	0x28
	.uaword	0x8ff
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x7
	.byte	0x29
	.uaword	0x205
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b5
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x7
	.byte	0x2a
	.uaword	0x8d5
	.uleb128 0x7
	.byte	0xc
	.byte	0x8
	.byte	0x1b
	.uaword	0x957
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x8
	.byte	0x1c
	.uaword	0x236
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x8
	.byte	0x1d
	.uaword	0x236
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x8
	.byte	0x1e
	.uaword	0x26b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x8
	.byte	0x1f
	.uaword	0x918
	.uleb128 0x10
	.string	"zone"
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.uaword	0x98c
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
	.uaword	0x96e
	.uleb128 0x11
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
	.uaword	0xa22
	.uleb128 0x12
	.uaword	.LVL0
	.uaword	0x1098
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x10b1
	.uleb128 0x12
	.uaword	.LVL2
	.uaword	0x10c6
	.uleb128 0x12
	.uaword	.LVL3
	.uaword	0x10dd
	.uleb128 0x12
	.uaword	.LVL4
	.uaword	0x10f8
	.uleb128 0x12
	.uaword	.LVL5
	.uaword	0x1111
	.uleb128 0x12
	.uaword	.LVL6
	.uaword	0x1131
	.uleb128 0x13
	.uaword	.LVL7
	.uaword	0x1150
	.uaword	0xa0e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL8
	.uaword	0x116f
	.uleb128 0x15
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x118f
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.byte	0x1
	.string	"FollowingLine"
	.byte	0x1
	.byte	0xac
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc5f
	.uleb128 0x18
	.string	"dottedLine"
	.byte	0x1
	.byte	0x4a
	.uaword	0x1de
	.uaword	.LLST0
	.uleb128 0x18
	.string	"countPassedObject"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1de
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.Ldebug_ranges0+0
	.uaword	0xb8c
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x80
	.uaword	0x1de
	.byte	0x1
	.uaword	0xacf
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x81
	.uaword	0x1de
	.byte	0x1
	.uaword	0xae2
	.uleb128 0x1b
	.byte	0
	.uleb128 0x19
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0xb43
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x91
	.uaword	0x1de
	.byte	0x1
	.uaword	0xafe
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x92
	.uaword	0x1de
	.byte	0x1
	.uaword	0xb11
	.uleb128 0x1b
	.byte	0
	.uleb128 0x13
	.uaword	.LVL38
	.uaword	0x11a8
	.uaword	0xb25
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL39
	.uaword	0x11bb
	.uaword	0xb39
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL44
	.uaword	0x11ce
	.byte	0
	.uleb128 0x12
	.uaword	.LVL27
	.uaword	0x11e9
	.uleb128 0x12
	.uaword	.LVL29
	.uaword	0x11fc
	.uleb128 0x12
	.uaword	.LVL31
	.uaword	0x116f
	.uleb128 0x12
	.uaword	.LVL32
	.uaword	0x1131
	.uleb128 0x12
	.uaword	.LVL33
	.uaword	0x1131
	.uleb128 0x12
	.uaword	.LVL35
	.uaword	0x120f
	.uleb128 0x1c
	.uaword	.LVL43
	.uaword	0x1131
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1b4
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL10
	.uaword	0x1230
	.uleb128 0x12
	.uaword	.LVL11
	.uaword	0x1248
	.uleb128 0x12
	.uaword	.LVL12
	.uaword	0x1267
	.uleb128 0x12
	.uaword	.LVL13
	.uaword	0x127b
	.uleb128 0x12
	.uaword	.LVL14
	.uaword	0x1291
	.uleb128 0x12
	.uaword	.LVL15
	.uaword	0x12ab
	.uleb128 0x12
	.uaword	.LVL16
	.uaword	0xa40
	.uleb128 0x15
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x12d4
	.uleb128 0x12
	.uaword	.LVL18
	.uaword	0x116f
	.uleb128 0x12
	.uaword	.LVL19
	.uaword	0x1131
	.uleb128 0x12
	.uaword	.LVL20
	.uaword	0x116f
	.uleb128 0x12
	.uaword	.LVL21
	.uaword	0x120f
	.uleb128 0x13
	.uaword	.LVL22
	.uaword	0x116f
	.uaword	0xc13
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b4
	.byte	0x4
	.uaword	0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL23
	.uaword	0x1150
	.uaword	0xc26
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL24
	.byte	0x1
	.uaword	0x12d4
	.uleb128 0x12
	.uaword	.LVL25
	.uaword	0x12fb
	.uleb128 0x12
	.uaword	.LVL26
	.uaword	0x1316
	.uleb128 0x15
	.uaword	.LVL34
	.byte	0x1
	.uaword	0x12d4
	.uleb128 0x1c
	.uaword	.LVL41
	.uaword	0x1131
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x1b4
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"SpeedZone"
	.byte	0x1
	.byte	0xbf
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"LimitZone"
	.byte	0x1
	.byte	0xc3
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd00
	.uleb128 0x15
	.uaword	.LVL46
	.byte	0x1
	.uaword	0x1335
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd2d
	.uleb128 0x15
	.uaword	.LVL47
	.byte	0x1
	.uaword	0x1354
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"test_srv_operation"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd5f
	.uleb128 0x12
	.uaword	.LVL48
	.uaword	0x1131
	.byte	0
	.uleb128 0x1f
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x4
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x1f
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x5
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x1f
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x6
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x1f
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x7
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x20
	.uaword	0x30f
	.uaword	0xdd9
	.uleb128 0x21
	.uaword	0x339
	.byte	0x2
	.byte	0
	.uleb128 0x22
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0xdf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.uaword	0xdc9
	.uleb128 0x22
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x79
	.uaword	0x244
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"IR_Srv"
	.byte	0x6
	.byte	0x6e
	.uaword	0x8c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"Ifx_g_console"
	.byte	0x7
	.byte	0x2c
	.uaword	0x905
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"IR_Ctrl"
	.byte	0x8
	.byte	0x24
	.uaword	0x957
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x24
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x24
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x24
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xc
	.uaword	0x26b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x24
	.string	"zoneState"
	.byte	0x1
	.byte	0x12
	.uaword	0x98c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	zoneState
	.uleb128 0x24
	.string	"beforeZoneState"
	.byte	0x1
	.byte	0x12
	.uaword	0x98c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	beforeZoneState
	.uleb128 0x24
	.string	"delayCountForCheckDetectZone"
	.byte	0x1
	.byte	0x14
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForCheckDetectZone
	.uleb128 0x24
	.string	"delayCountForIsDetectZone"
	.byte	0x1
	.byte	0x15
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForIsDetectZone
	.uleb128 0x24
	.string	"delayCountForPassedObject"
	.byte	0x1
	.byte	0x16
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	delayCountForPassedObject
	.uleb128 0x24
	.string	"g_nowCenterIndex"
	.byte	0x1
	.byte	0x18
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_nowCenterIndex
	.uleb128 0x24
	.string	"g_prevCenterIndex"
	.byte	0x1
	.byte	0x19
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_prevCenterIndex
	.uleb128 0x24
	.string	"g_cntDiffNowPrevCenterIndex"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_cntDiffNowPrevCenterIndex
	.uleb128 0x24
	.string	"g_servoValue"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_servoValue
	.uleb128 0x24
	.string	"objectSrvAngle"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	objectSrvAngle
	.uleb128 0x24
	.string	"g_line_center_value"
	.byte	0x1
	.byte	0x46
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_line_center_value
	.uleb128 0x24
	.string	"servoValue"
	.byte	0x1
	.byte	0x47
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	servoValue
	.uleb128 0x24
	.string	"velocity"
	.byte	0x1
	.byte	0xea
	.uaword	0x1066
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	velocity
	.uleb128 0xc
	.uaword	0x1de
	.uleb128 0x24
	.string	"state"
	.byte	0x1
	.byte	0xeb
	.uaword	0x1066
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	state
	.uleb128 0x24
	.string	"start"
	.byte	0x1
	.byte	0xec
	.uaword	0x1093
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	start
	.uleb128 0xc
	.uaword	0x1b4
	.uleb128 0x25
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xb
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
	.byte	0x6
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
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x1150
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
	.uaword	0x116f
	.uleb128 0xe
	.uaword	0x26b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0x6
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0x118f
	.uleb128 0xe
	.uaword	0x252
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x8
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x91
	.uaword	0x1de
	.byte	0x1
	.uaword	0x11bb
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x92
	.uaword	0x1de
	.byte	0x1
	.uaword	0x11ce
	.uleb128 0x1b
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"GetDashLine"
	.byte	0xb
	.byte	0x52
	.uaword	0x1de
	.byte	0x1
	.uaword	0x11e9
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x80
	.uaword	0x1de
	.byte	0x1
	.uaword	0x11fc
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x81
	.uaword	0x1de
	.byte	0x1
	.uaword	0x120f
	.uleb128 0x1b
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"GetInfraredSensorValue"
	.byte	0xd
	.byte	0x2b
	.byte	0x1
	.uaword	0x1de
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x8
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
	.byte	0x6
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
	.uleb128 0x29
	.byte	0x1
	.string	"GetCameraCenter"
	.byte	0xb
	.byte	0x41
	.byte	0x1
	.uaword	0x1de
	.byte	0x1
	.uaword	0x12d4
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
	.uleb128 0x27
	.byte	0x1
	.string	"IsLimitZone"
	.byte	0xb
	.byte	0x51
	.uaword	0x1de
	.byte	0x1
	.uaword	0x1316
	.uleb128 0x1b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"CheckLimitZone"
	.byte	0xb
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uaword	0x1335
	.uleb128 0xe
	.uaword	0x1de
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
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
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL42
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
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	0
	.uaword	0
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0
	.uaword	0
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
.LASF3:
	.string	"SetDottedLine"
.LASF0:
	.string	"GetDottedLine"
.LASF1:
	.string	"GetCountPassedObject"
.LASF2:
	.string	"SetCountPassedObject"
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
