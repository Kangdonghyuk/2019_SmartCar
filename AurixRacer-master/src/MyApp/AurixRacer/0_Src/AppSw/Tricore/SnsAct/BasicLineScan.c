/**
 * \file BasicLineScan.c
 * \brief BasicLineScan
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include <Cpu/Std/IfxCpu.h>
#include <IfxPort_PinMap.h>

#include <SysSe/Bsp/Bsp.h>
#include <Port/Std/IfxPort.h>

#include "BasicLineScan.h"
#include "Configuration.h"
#include <string.h>
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct
{
	IfxVadc_Adc vadc; /* VADC handle */
	IfxVadc_Adc_Group adcGroup;
	IfxVadc_Adc_Channel       adcChannel[CAMERACHANNEL];
} Basic_VadcAutoScan;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
Basic_VadcAutoScan g_VadcAutoScan; /**< \brief Demo information */

IR_LineScan_t IR_LineScan;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
int FILTERED_CENTER_LINE[LINESIZE];
int Zero_center_line[LINESIZE];

int countPassedObject;
int dottedLine;

void BasicLineScan_init(void)
{
	/* VADC Configuration */

	/* create configuration */
	IfxVadc_Adc_Config adcConfig;
	IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

	/* initialize module */
	IfxVadc_Adc_initModule(&g_VadcAutoScan.vadc, &adcConfig);

	/* create group config */
	IfxVadc_Adc_GroupConfig adcGroupConfig;
	IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &g_VadcAutoScan.vadc);

	/* with group 0 */
	adcGroupConfig.groupId = IfxVadc_GroupId_0;
	adcGroupConfig.master  = adcGroupConfig.groupId;

	/* enable scan source */
	adcGroupConfig.arbiter.requestSlotScanEnabled = TRUE;

	/* enable auto scan */
	adcGroupConfig.scanRequest.autoscanEnabled = TRUE;

	/* enable all gates in "always" mode (no edge detection) */
	adcGroupConfig.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

	/* initialize the group */
	/*IfxVadc_Adc_Group adcGroup;*/    //declared globally
	IfxVadc_Adc_initGroup(&g_VadcAutoScan.adcGroup, &adcGroupConfig);

	uint32                    chnIx;
	unsigned channels;
	unsigned mask;
	/* create channel config */
	IfxVadc_Adc_ChannelConfig adcChannelConfig[CAMERACHANNEL];

	{
		chnIx = 0;
		IfxVadc_Adc_initChannelConfig(&adcChannelConfig[chnIx], &g_VadcAutoScan.adcGroup);

		adcChannelConfig[chnIx].channelId      = (IfxVadc_ChannelId)(TSL1401_AO_1);
		adcChannelConfig[chnIx].resultRegister = (IfxVadc_ChannelResult)(TSL1401_AO_1);  /* use dedicated result register */

		/* initialize the channel */
		IfxVadc_Adc_initChannel(&g_VadcAutoScan.adcChannel[chnIx], &adcChannelConfig[chnIx]);

		/* add to scan */
		channels = (1 << adcChannelConfig[chnIx].channelId);
		mask     = channels;
		IfxVadc_Adc_setScan(&g_VadcAutoScan.adcGroup, channels, mask);

		chnIx = 1;
		IfxVadc_Adc_initChannelConfig(&adcChannelConfig[chnIx], &g_VadcAutoScan.adcGroup);
		adcChannelConfig[chnIx].channelId      = (IfxVadc_ChannelId)(TSL1401_AO_2);
		adcChannelConfig[chnIx].resultRegister = (IfxVadc_ChannelResult)(TSL1401_AO_2);  /* use dedicated result register */

		/* initialize the channel */
		IfxVadc_Adc_initChannel(&g_VadcAutoScan.adcChannel[chnIx], &adcChannelConfig[chnIx]);

		/* add to scan */
		channels = (1 << adcChannelConfig[chnIx].channelId);
		mask     = channels;
		IfxVadc_Adc_setScan(&g_VadcAutoScan.adcGroup, channels, mask);

		chnIx = 2;
		IfxVadc_Adc_initChannelConfig(&adcChannelConfig[chnIx], &g_VadcAutoScan.adcGroup);
		adcChannelConfig[chnIx].channelId      = (IfxVadc_ChannelId)(2);
		adcChannelConfig[chnIx].resultRegister = (IfxVadc_ChannelResult)(2);  /* use dedicated result register */

		/* initialize the channel */
		IfxVadc_Adc_initChannel(&g_VadcAutoScan.adcChannel[chnIx], &adcChannelConfig[chnIx]);

		/* add to scan */
		channels = (1 << adcChannelConfig[chnIx].channelId);
		mask     = channels;
		IfxVadc_Adc_setScan(&g_VadcAutoScan.adcGroup, channels, mask);

	}

	{
		initTime();

		IfxPort_setPinMode(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_Mode_outputPushPullGeneral);
		IfxPort_setPinPadDriver(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
		IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_low);

		IfxPort_setPinMode(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_Mode_outputPushPullGeneral);
		IfxPort_setPinPadDriver(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
		IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_low);

	}

	Camera_Initialization();
}

/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void BasicLineScan_run(void)
{
	uint32 chnIx;
	uint32 idx;

	IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_high);
	IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_low);
	waitTime(5*TimeConst_100ns);

	IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_high);
	IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_high);
	waitTime(5*TimeConst_100ns);

	IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_low);
	IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_high);
	waitTime(5*TimeConst_100ns);
	IfxVadc_Adc_startScan(&g_VadcAutoScan.adcGroup);


	for(idx = 0; idx < 128 ; ++idx)
	{

		IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_low);
		IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_low);
		waitTime(3*TimeConst_1us);

		IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_low);
		IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_high);
		waitTime(2*TimeConst_1us);

		/* check results */
		for (chnIx = 0; chnIx < CAMERACHANNEL; ++chnIx)
		{
			/* wait for valid result */
			Ifx_VADC_RES conversionResult;

			do
			{
				conversionResult = IfxVadc_Adc_getResult(&g_VadcAutoScan.adcChannel[chnIx]);
			} while (!conversionResult.B.VF);

			IR_LineScan.adcResult[chnIx][idx] = conversionResult.B.RESULT;
			if(IR_LineScan.adcResult[chnIx][idx] >= 2700){
				IR_LineScan.adcResult[chnIx][idx] = 4096;
			}
		}

	}

	IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_low);
	IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_low);
	//	waitTime(1*TimeConst_10ms);

}

cam_information cam_info[CAMS][LINES];
int debugLine[LINESIZE], speedLimitLine[3][LINESIZE];
int nowIndex;
int cntTotal, cntLeft;
int isLimitZone = 0, dashLine = 0;
int leftIndexCount = 0, rightIndexCount = 0;
int zeroCnt = 0;
int g_cameraDirection = 0;
int cent[4] = {0, 0, 0, 0};

void CopyPrevLine(cam_information * _cam_info, cam_information _prev_info) {
	int i;
	for (i = 0; i < LINESIZE; i++)
		_cam_info->cam_scan[i] = _prev_info.cam_scan[i];
	_cam_info->center = _prev_info.center;
}

int GetMedian(int _array[5]) {
	int i, j, temp;
	for (i = 0; i < 5; i++) {
		for (j = i; j < 5; j++) {
			if (_array[i] > _array[j]) {
				temp = _array[i];
				_array[i] = _array[j];
				_array[j] = temp;
			}
		}
	}
	return _array[2];
}

int GetMedianCenter(cam_information _cam_info[LINES]) {
	int i, j, temp;
	int _array[LINES];

	for(i=0; i<LINES; i++)
		_array[i] = _cam_info[i].center;

	for (i = 0; i < 5; i++) {
		for (j = i; j < 5; j++) {
			if (_array[i] > _array[j]) {
				temp = _array[i];
				_array[i] = _array[j];
				_array[j] = temp;
			}
		}
	}
	return _array[2];
}

void Stretching(int(*_line)[LINESIZE], int _max) {
	int i, max = (*_line)[0], min = (*_line)[0];

	for (i = 0; i < LINESIZE; i++) {
		max = ((*_line)[i] > max) ? (*_line)[i] : max;
		min = ((*_line)[i] < min) ? (*_line)[i] : min;
	}
	for (i = 0; i < LINESIZE; i++)
		(*_line)[i] = ((float)_max / (float)(max - min)) * ((*_line)[i] - min);
}

void MedianFiltering(int(*_line)[LINESIZE]) {
	int i, j, t;
	int array[5];
	for (i = 0 + 2; i < LINESIZE - 2; i++) {
		for (j = -2, t = 0; j <= 2; j++, t++)
			array[t] = (*_line)[i + j];
		(*_line)[i] = GetMedian(array);
	}
}
void Sharpening(int(*_line)[LINESIZE]) {
	int i, j;
	int minus, add, square;
	int temp[LINESIZE];

	for (i = 0; i < LINESIZE; i++) {
		(*_line)[i] = MAXVALUE - (*_line)[i];
		temp[i] = (*_line)[i];
	}

	for(i=3; i<LINESIZE-3; i++) {
		minus = 0, add = 0, square = 0;
		for(j = -3; j <= 3; j++) {
			if(j <= -2 || j >= 2) minus += ((*_line)[i+j] * (-3));
			if(j == -1 || j == 1) add += ((*_line)[i+j] * 3);
			if(j == 0) square += ((*_line)[i+j] * 6);
		}
		temp[i] = minus + add + square;
	}

	for(i=0; i<LINESIZE; i++)
		(*_line)[i] = temp[i];
}

int IsNoise(cam_information _cam_info[LINES]) {
	int noise = 0, i;

	for(i=0; i<LINES; i++)
		noise += DABS(_cam_info[i].center - _cam_info[(i+1)%LINES].center);

	if(noise >= 50)
		return 1;
	return 0;
}

void Camera_Initialization() {
	int i=0, j=0;
	for(i=0; i<CAMS; i++) {
		for(j=0; j < LINES; j++) {
			cam_info[i][j].center = LINECENTER;
			memset(cam_info[i][j].cam_scan, 0, 128 * 4);
		}
	}
	memset(FILTERED_CENTER_LINE, 0, 128 * 4);

	nowIndex = 0;
	cntTotal = 0;
	cntLeft = 0;

	SetCountPassedObject(0);
	SetDottedLine(0);
}

int GetCameraCenter(int prevServo, int cntDiff) {
	int result = 0;
	int i=0, j=0;
	int medianLeftCenter = 70, medianRightCenter = 70;
	int isLeftNoise = 0, isRightNoise = 0;

	if(cntDiff >= 2) {
		if(prevServo >= 60)
			g_cameraDirection = 0;
		else if(prevServo < 60)
			g_cameraDirection = 1;
	}

	for(i=0; i<LINESIZE; i++){
		cam_info[0][nowIndex].cam_scan[i] = IR_LineScan.adcResult[0][i]; // center
		cam_info[1][nowIndex].cam_scan[i] = IR_LineScan.adcResult[1][i]; // left
		cam_info[2][nowIndex].cam_scan[i] = IR_LineScan.adcResult[2][i]; // right
	}
	cam_info[0][nowIndex].center = LINECENTER;

	for(i=0; i<CAMS; i++){
		Stretching(&(cam_info[i][nowIndex].cam_scan), 4096);
		MedianFiltering(&cam_info[i][nowIndex].cam_scan);
		Sharpening(&cam_info[i][nowIndex].cam_scan);
		Stretching(&(cam_info[i][nowIndex].cam_scan), 100000);
	}


	cam_info[0][nowIndex].center = FindCenter(&(cam_info[0][nowIndex].cam_scan));
	cam_info[1][nowIndex].center = FindOneLine(cam_info[1][nowIndex].cam_scan, -1);
	cam_info[2][nowIndex].center = FindOneLine(cam_info[2][nowIndex].cam_scan, 1);


	for(i=0; i<3; i++) {
		for(j=0; j<128; j++)
			speedLimitLine[i][j] = cam_info[i][nowIndex].cam_scan[j];
	}

	/*if(cam_info[0][nowIndex].center == -1) {
		CopyPrevLine(&cam_info[0][nowIndex], cam_info[0][(nowIndex + 4) % 5]);
		cam_info[0][nowIndex].center = cam_info[0][(nowIndex+4)%5].center;
	}*/

	if(cam_info[1][nowIndex].center == -1) {
		CopyPrevLine(&cam_info[1][nowIndex], cam_info[1][(nowIndex + 4) % 5]);
		cam_info[1][nowIndex].center = cam_info[1][(nowIndex+4)%5].center;
	}

	if(cam_info[2][nowIndex].center == -1) {
		CopyPrevLine(&cam_info[2][nowIndex], cam_info[2][(nowIndex + 4) % 5]);
		cam_info[2][nowIndex].center = cam_info[2][(nowIndex+4)%5].center;
	}

	medianLeftCenter = GetMedianCenter(cam_info[1]);
	medianRightCenter = GetMedianCenter(cam_info[2]);

	isLeftNoise = IsNoise(cam_info[1]);
	isRightNoise = IsNoise(cam_info[2]);

	if(isLeftNoise == 1 && isRightNoise == 1)
		result = 70;
	else if(isLeftNoise == 1 && isRightNoise == 0)
		result = medianRightCenter - 35;
	else if(isLeftNoise == 0 && isRightNoise == 1)
		result = medianLeftCenter + 35;
	else {
		if(DABS(cam_info[1][nowIndex].center - medianLeftCenter) >= 30)
			cam_info[1][nowIndex].center = medianLeftCenter;
		if(DABS(cam_info[2][nowIndex].center - medianRightCenter) >= 30)
			cam_info[2][nowIndex].center = medianRightCenter;

		if(DABS(medianLeftCenter - medianRightCenter) >= 60 && DABS(medianLeftCenter - medianRightCenter) <= 80) {
			result = medianLeftCenter + medianRightCenter;
			result = result / 2;
		}
		else {
			result = DABS(70 - medianLeftCenter) <= DABS(70 - medianRightCenter) ?
					medianLeftCenter + 35 : medianRightCenter - 35;
		}
	}

	result = DABS(result - 70) > DABS(cam_info[0][nowIndex].center - 70) ? result : cam_info[0][nowIndex].center;

	nowIndex = (nowIndex + 1) % LINES;

	return result;
}

int FindCenter(int(*_line)[LINESIZE]) {
	int i, index = 0, leftIndex = 0, rightIndex = 127, zeroCount = 0, whiteCount = 0;

	// find points greater than THRESHOLD
	for (i = 0; i < LINESIZE; i++) {
		if((*_line)[i] < 0)
			(*_line)[i] = 0;
		if ((*_line)[i] < C_THRESHOLD) {
			zeroCount++;
			(*_line)[i] = 0;
		}
	}


	//test
	for(i =  0; i < LINESIZE; i++){
		Zero_center_line[i] = (*_line)[i];
	}

	//if(zeroCount <= 118) isLimitZone = 1;
	if(zeroCount <= 120) return -1;

	for(i=1; i<LINECENTER; i++) {
		if((LINECENTER - i - 1) >= 1) {
			if(leftIndex == 0 && (*_line)[LINECENTER - i] != 0 && (*_line)[LINECENTER - i - 1] == 0)
				leftIndex = LINECENTER - i;
		}
		if((LINECENTER + i + 1) <= 126) {
			if(rightIndex == 127 && (*_line)[LINECENTER + i] != 0 && (*_line)[LINECENTER + i + 1] == 0)
				rightIndex = LINECENTER + i;
		}
	}

	if(isLimitZone == 1) {
		if(GetCountPassedObject() == 0){
			if(leftIndex == 0)
				leftIndexCount++;
			if(rightIndex == 127)
				rightIndexCount++;
		}
	}

	if(rightIndex <= 126) {
		index = rightIndex - 55;
		if(rightIndex <= 65) index = -1;
	}
	else if(leftIndex >= 5) {
		index = leftIndex + 55;
		if(leftIndex >= 55) index = -1;
	}
	else if(leftIndex != 0 && rightIndex != 127)
		index = (leftIndex + rightIndex) / 2;
	else
		index = -1;
	if(index <= 10 || index >= 118)
		index = -1;

	return index;
}

int countWhite[2] = {0, 0};
int indexWhite = 0;
int FindOneLine(int line[LINESIZE], int dir) {
	int i, zeroCount = 0, whiteCount = 0;
	int lineIndex = -1;

	for (i = 0; i < LINESIZE; i++) {
		if(line[i] < 0)
			line[i] = 0;
		if(line[i] < WHITETHRESHOLD) {
			whiteCount+=1;
		}
		if (line[i] < THRESHOLD) {
			zeroCount+=1;
			line[i] = 0;
		}
	}

	countWhite[indexWhite] = whiteCount;
	indexWhite = (indexWhite+1)%2;

	// all white
	if(zeroCount <= 124 || whiteCount <= 115)
		return -1;

	for(i=0; i<108; i++) {
		if(dir == -1) {
			if(lineIndex == -1 && line[i+5] != 0 && line[i+1+5] == 0)
				lineIndex = i+5;
			else if(lineIndex != -1 && line[i+5] != 0 && line[i+1+5] == 0 && line[lineIndex] <= line[i+5])
				lineIndex = i+5;
		}
		else if(dir == 1) {
			if(lineIndex == -1 && line[128 - i - 5] != 0 && line[128 - i - 5 - 1] == 0)
				lineIndex = 128 - i - 5;
			else if(lineIndex != -1 && line[128 - i - 5] != 0 && line[128 - i - 5 - 1] == 0 && line[lineIndex] <= line[128 - i - 5])
				lineIndex = 128 - i - 5;
		}
	}

	if(lineIndex <= 3 || lineIndex >= 124)
		lineIndex = -1;

	return lineIndex;
}
int limitCount = 0;
void CheckLimitZone(int nowState) {
	int i = 0;
	int countiousLineCnt = 0;
	int lineCnt = 0;
	for(i = 0; i < LINESIZE-1; i++){
		if(cam_info[0][nowIndex].cam_scan[i] != 0 && cam_info[0][nowIndex].cam_scan[i+1] != 0)
			countiousLineCnt += 1;
		else if(cam_info[0][nowIndex].cam_scan[i] == 0 && cam_info[0][nowIndex].cam_scan[i+1] == 0)
			continue;
		else{
			if(countiousLineCnt >= 1){
				lineCnt += 1;
			}
		}
	}
	if(lineCnt >= LIMIT_THRESHOLD){
		if(limitCount <= 1){
			limitCount++;
		}
		else{
			isLimitZone = nowState ^ 1;
			limitCount = 0;
		}
	}
	/*
	int i = 0;
	zeroCnt = 0;
	for(i = 0; i < LINESIZE; i++){
		if(speedLimitLine[i] == 0)
			zeroCnt++;
	}
	if(zeroCnt <= LIMIT_THRESHOLD)
		isLimitZone = nowState ^ 1;
	 */

}

int IsLimitZone() {
	return isLimitZone;
}

int GetDashLine() {
	return leftIndexCount >= rightIndexCount ? -1 : 1;
}

int GetCountPassedObject(){
	return countPassedObject;
}
void SetCountPassedObject(int cpo){
	countPassedObject = cpo;
}
int GetDottedLine(){
	return dottedLine;
}
void SetDottedLine(int dl){
	dottedLine = dl;
}
