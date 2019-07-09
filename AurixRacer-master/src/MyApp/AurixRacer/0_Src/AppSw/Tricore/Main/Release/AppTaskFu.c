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
int delayCountForPassedObject = 0;

int g_nowCenterIndex = 60;
int g_prevCenterIndex = 60;
int g_cntDiffNowPrevCenterIndex = 0;
float g_servoValue = 60.0f;

float objectSrvAngle = 0.0f;

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
float servoValue = 0.0f;
int g_leftIndex;
int g_rightIndex;
void appTaskfu_10ms(void)
{
	int dottedLine;
	int countPassedObject;

	/*
	//shin
	float currentSrvAngle = IR_getSrvAngle();
	int lStdValue[4] = {25, 63, 67, 99};
	int rStdValue[4] = {99, 67, 63, 25};
	int lIndex = 0;
	int rIndex = 0;
	int lcount = 0;
	int rcount = 0;
	int totalCamera[232];
	int i = 0;
	//shin
*/
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

		g_nowCenterIndex = GetCameraCenter(g_prevCenterIndex, g_cntDiffNowPrevCenterIndex);
		FollowingLine();

		if(delayCountForCheckDetectZone == 0)
			CheckLimitZone(zoneState);  // 109 limit zone

		if(delayCountForIsDetectZone == 0) {
			delayCountForIsDetectZone += 4; // delay 400ms
			beforeZoneState = IsLimitZone();
		}

		if(beforeZoneState != zoneState) {
			delayCountForCheckDetectZone += 40; // delay 4000ms
			delayCountForIsDetectZone += 40;
			zoneState = beforeZoneState;
		}

		//if(zoneState == SPEED) { if 없애기
			IR_setMotor0Vol(0.72f);
/*
			// m:0, l:1, r:2
			//shin code
			for(i = 0; i < 116; i++) {
			  totalCamera[i] = IR_LineScan.adcResult[1][i + 6];
		   }
		   for(i = 0; i < 116; i++){
			  totalCamera[i + 116] = IR_LineScan.adcResult[2][i + 6];
		   }


		   Stretching(totalCamera, 4096);
		   MedianFiltering(totalCamera);
		   Sharpening(totalCamera);
		   Stretching(totalCamera, 100000);



		   for(i = 116; i > 0; --i){
			  if(totalCamera[i] >= THRESHOLD){
				  if(lcount == 0){
					  lIndex = i;
				  }
				 lcount++;
				 if(lcount > 3){
					 lIndex = -1;
					 break;
				 }
			  }
		   }
		   for(i = 116; i < 232; ++i){
			  if(totalCamera[i] >= THRESHOLD){
				  if(rcount == 0){
					  rIndex = i - 116;
				  }
				 rcount++;
				 if(rcount > 3){
					 rIndex = -1;
				 }
			  }
		   }


			if(lIndex == -1 && rIndex != -1){
				IR_setMotor0Vol(0.35f);
			  if (rIndex <= rStdValue[0]){
				 IR_setSrvAngle(currentSrvAngle - 0.03);
			  }
			  else if(rStdValue[0] < rIndex && rIndex <= rStdValue[1]){
				 IR_setSrvAngle(currentSrvAngle - 0.005);// 0.005
			  }
			  else if(rStdValue[1] < rIndex && rIndex <= rStdValue[2]){
				 IR_setSrvAngle(0.1953);
			  }
			  else if(rStdValue[2] < rIndex && rIndex <= rStdValue[3]){
				 IR_setSrvAngle(currentSrvAngle + 0.005);
			  }
			  else{
				 IR_setSrvAngle(currentSrvAngle + 0.03);
			  }
		   }

		   else if(rIndex == -1 && lIndex != -1){
			   IR_setMotor0Vol(0.35f);
			  if (lIndex <= lStdValue[0]){
				 IR_setSrvAngle(currentSrvAngle - 0.03);
			  }
			  else if(lStdValue[0] < lIndex && lIndex <= lStdValue[1]){
				 IR_setSrvAngle(currentSrvAngle - 0.005);
			  }
			  else if(lStdValue[1] < lIndex && lIndex <= lStdValue[2]){
				 IR_setSrvAngle(0.1953);
			  }
			  else if(lStdValue[2] < lIndex && lIndex <= lStdValue[3]){
				 IR_setSrvAngle(currentSrvAngle + 0.005);
			  }
			  else{
				 IR_setSrvAngle(currentSrvAngle + 0.03); // 0.03
			  }
		   }
		   else if(rIndex != -1 && lIndex != -1){
			   IR_setSrvAngle((((float)g_nowCenterIndex - 60.0f) / 100.0f) * 1.5f + 0.1953f);
			   //IR_setSrvAngle(0.1953);
		   }
		   else{
			   IR_setMotor0Vol(0.35f);
			   IR_setSrvAngle((((float)g_nowCenterIndex - 60.0f) / 100.0f) * 1.5f + 0.1953f);
		   }
			//until here shin code

	 	 	 */
			//origin code
			if(g_nowCenterIndex != -100){
				IR_setSrvAngle((((float)g_nowCenterIndex - 60.0f) / 100.0f) * 1.5f + 0.1953f);
				if(g_nowCenterIndex >= 55 && g_nowCenterIndex < 66)
					IR_setSrvAngle(0.1953);
				else if(g_nowCenterIndex< 58 || g_nowCenterIndex >= 63)
					IR_setMotor0Vol(0.35f);
			}
			servoValue = IR_getSrvAngle();

			// AEB
			if(GetInfraredSensorValue() > 150) {//120
				IR_setMotor0Vol(0.0f);
				//IR_setMotor0En(0);
			}
		//if없애기 }
		/*
		else if(zoneState == LIMIT) {
			dottedLine = GetDottedLine();
			countPassedObject = GetCountPassedObject();
			IR_setMotor0Vol(0.35f);
			IR_setSrvAngle((((float)g_nowCenterIndex - 60.0f) / 100.0f) * 2.2f + 0.1953f);

			if(g_nowCenterIndex >= 55 && g_nowCenterIndex < 66) {
				IR_setSrvAngle(0.1953);
			}

			if(delayCountForPassedObject == 0) {
				if(GetInfraredSensorValue() > 150){//120
					if(countPassedObject == 0){
						dottedLine = GetDashLine();
						countPassedObject += 1;
					}
					delayCountForPassedObject += 8;
					dottedLine *= -1;
					SetCountPassedObject(countPassedObject);
					SetDottedLine(dottedLine);
				}
			}

			if(delayCountForPassedObject > 0) {
				objectSrvAngle = 0.1953f + -dottedLine * 0.3f;
				IR_setSrvAngle(objectSrvAngle);
			}
		}*/




		if(IR_Ctrl.basicTest == FALSE){
			#if CODE == CODE_HAND
				//InfineonRacer_control();
			#elif CODE == CODE_ERT
				IR_Controller_step();
			#else

			#endif
		}
		AsclinShellInterface_runLineScan();
	}
//
//	g_leftIndex = lIndex;
//	g_rightIndex = rIndex;
}

void FollowingLine() {
	if(g_nowCenterIndex <= 0 || g_nowCenterIndex >= 200)
		g_nowCenterIndex = g_prevCenterIndex;

	if(g_nowCenterIndex >= 65 || g_nowCenterIndex < 55) {
		if(DABS(g_nowCenterIndex - g_prevCenterIndex) >= 30) {
			g_cntDiffNowPrevCenterIndex += 1;
			if(g_cntDiffNowPrevCenterIndex >= 15) {
				g_prevCenterIndex = g_nowCenterIndex;
				g_cntDiffNowPrevCenterIndex = 0;
			}
			g_nowCenterIndex = g_prevCenterIndex;
		}
		else
			g_cntDiffNowPrevCenterIndex = 0;
	}

	g_prevCenterIndex = g_nowCenterIndex;
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

	if(delayCountForPassedObject > 0)
		delayCountForPassedObject -= 1;

	if(delayCountForPassedObject < 0)
		delayCountForPassedObject = 0;


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
volatile float start = 1;
void appTaskfu_1000ms(void)
{
//	test_srv_operation();
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


void test_srv_operation(void){
	// init : state -1(int), start 1(float)
	IR_setSrvAngle(start);
		if (start <-1){
			state = 1;
			start += 0.3;
		}
		if ((-1<= start && start <=1) && state ==-1){
			start -=0.3;
		}
		if ((-1 <= start && start <=1) && state == 1){
			start += 0.3;
		}
		if (start > 1){
			state = -1;
			start -= 0.3;
		}
}
