#include "AppTaskFu.h"


static sint32 task_cnt_1m = 0;
static sint32 task_cnt_10m = 0;
static sint32 task_cnt_100m = 0;
static sint32 task_cnt_1000m = 0;

boolean task_flag_1m = FALSE;
boolean task_flag_10m = FALSE;
boolean task_flag_100m = FALSE;
boolean task_flag_1000m = FALSE;

typedef enum zone {
	SPEED = 0, LIMIT = 1
}ZONE;

ZONE zoneState = SPEED, beforeZoneState = SPEED;

int delayCountForCheckDetectZone = 0;
int delayCountForIsDetectZone = 0;

void appTaskfu_init(void){
	BasicLineScan_init();
	BasicPort_init();
    BasicGtmTom_init();
    BasicVadcBgScan_init();
    BasicGpt12Enc_init();
    AsclinShellInterface_init();

    zoneState = SPEED;
    beforeZoneState = SPEED;

    delayCountForIsDetectZone = 1;

#if BOARD == APPLICATION_KIT_TC237
    tft_app_init(1);
    perf_meas_init();
#elif BOARD == SHIELD_BUDDY
    IR_setSrvAngle(0.1953f);
    IR_setMotor0En(TRUE);
    IR_setMotor0Vol(0.3f);
#endif

#if CODE == CODE_HAND
    InfineonRacer_init();
#elif CODE == CODE_ERT
    IR_Controller_initialize();
#else

#endif
}

void appTaskfu_1ms(void)
{
	task_cnt_1m++;
	if(task_cnt_1m == 1000){
		task_cnt_1m = 0;
	}

}
float g_line_center_value = 0;

float lineCenter = 64.0f;
float servoValue = 0.0f;
void appTaskfu_10ms(void)
{
	task_cnt_10m++;
	if(task_cnt_10m == 1000){
		task_cnt_10m = 0;
	}

	if(task_cnt_10m%2 == 0){
		BasicLineScan_run();
		InfineonRacer_detectLane();
		BasicPort_run();
		BasicGtmTom_run();
		BasicVadcBgScan_run();
		//lineCentering_run();

		lineCenter = (float)GetCameraCenter();

		g_line_center_value = lineCenter;

		if(delayCountForCheckDetectZone == 0)
			CheckLimitZone(zoneState);

		if(delayCountForIsDetectZone == 0) {
			delayCountForIsDetectZone += 4; // delay 400ms
			beforeZoneState = IsLimitZone();
		}

		if(beforeZoneState != zoneState) {
			delayCountForCheckDetectZone += 40; // delay 4000ms
			delayCountForIsDetectZone += 40;
			zoneState = beforeZoneState;
		}

		if(zoneState == SPEED) {
			IR_setMotor0Vol(0.72f);
			//IR_setSrvAngle(((lineCenter - 60.0f) / 100.0f) * 1.5f + 0.1953f);
			if(lineCenter >= 55 && lineCenter < 65)
				IR_setSrvAngle(0.1953);
			else if(lineCenter >= 65 && lineCenter < 75) {
				IR_setSrvAngle(0.25f);
				IR_setMotor0Vol(0.6f);
			}
			else if(lineCenter >= 75) {
				IR_setSrvAngle(0.6f);
				IR_setMotor0Vol(0.4f);
			}
			else if(lineCenter >= 45 && lineCenter < 55) {
				IR_setSrvAngle(0.145f);
				IR_setMotor0Vol(0.6f);
			}
			else if(lineCenter < 45) {
				IR_setSrvAngle(-0.345f);
				IR_setMotor0Vol(0.4f);
			}
			servoValue = IR_getSrvAngle();
			// AEB
			if(GetInfraredSensorValue() > 300) {
				IR_setMotor0Vol(0.0f);
			}
		}
		else if(zoneState == LIMIT) {
			IR_setMotor0Vol(0.35f);
			//IR_setSrvAngle(((lineCenter - 60.0f) / 100.0f) * 1.5f + 0.1953f);
			if(lineCenter >= 55 && lineCenter < 65)
				IR_setSrvAngle(0.1953);
			else if(lineCenter >= 65 && lineCenter < 75)
				IR_setSrvAngle(0.25f);
			else if(lineCenter >= 75)
				IR_setSrvAngle(0.6f);
			else if(lineCenter >= 45 && lineCenter < 55)
				IR_setSrvAngle(0.145f);
			else if(lineCenter < 45)
				IR_setSrvAngle(-0.345f);
			if(GetInfraredSensorValue() > 200)
				IR_setSrvAngle(0.1953f + GetDashLine() * 0.3f);
		}


		if(IR_Ctrl.basicTest == FALSE){
			#if CODE == CODE_HAND
				//InfineonRacer_control();
			#elif CODE == CODE_ERT
				IR_Controller_step();
			#else

			#endif
		}
		//AsclinShellInterface_runLineScan();
	}
}


void SpeedZone() {

}

void LimitZone() {

}

void appTaskfu_100ms(void)
{
	if(delayCountForIsDetectZone > 0)
		delayCountForIsDetectZone -= 1;

	if(delayCountForIsDetectZone < 0)
		delayCountForIsDetectZone = 0;

	if(delayCountForCheckDetectZone > 0)
		delayCountForCheckDetectZone -= 1;

	if(delayCountForCheckDetectZone < 0)
		delayCountForCheckDetectZone = 0;

	task_cnt_100m++;
	if(task_cnt_100m == 1000){
		task_cnt_100m = 0;
	}
#if BOARD == APPLICATION_KIT_TC237
	if(task_cnt_100m % REFRESH_TFT == 0){
		tft_app_run();
	}

#elif BOARD == SHIELD_BUDDY

#endif
}

volatile int velocity = 0;
volatile int state = -1;
volatile int start = 0;
void appTaskfu_1000ms(void)
{
	task_cnt_1000m++;
	if(task_cnt_1000m == 1000){
		task_cnt_1000m = 0;
	}

}

void appTaskfu_idle(void){
	AsclinShellInterface_run();
#if BOARD == APPLICATION_KIT_TC237
	perf_meas_idle();
#elif BOARD == SHIELD_BUDDY

#endif

}

void appIsrCb_1ms(void){
	BasicGpt12Enc_run();
}

