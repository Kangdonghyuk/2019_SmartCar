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
ZONE zoneState;

void appTaskfu_init(void){
	BasicLineScan_init();
	BasicPort_init();
    BasicGtmTom_init();
    BasicVadcBgScan_init();
    BasicGpt12Enc_init();
    AsclinShellInterface_init();

    zoneState = SPEED;

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

		if(zoneState == SPEED) {
			IR_setSrvAngle(((lineCenter - 60.0f) / 100.0f) * 1.0f + 0.1953f);
			servoValue = IR_getSrvAngle();
			IR_setMotor0Vol(0.6f);
			if(GetInfraredSensorValue() > 200) {
				IR_setMotor0Vol(0.0f);
			}
			zoneState = IsLimitZone();
		}
		else if(zoneState == LIMIT) {
			IR_setMotor0Vol(0.3f);
			if(GetInfraredSensorValue() > 200) {
				IR_setSrvAngle(0.1953f + GetDashLine() * 0.3f);
			}
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

