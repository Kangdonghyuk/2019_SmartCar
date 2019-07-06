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
                adcChannelConfig[chnIx].channelId      = (IfxVadc_ChannelId)(TSL1401_AO_2);
                adcChannelConfig[chnIx].resultRegister = (IfxVadc_ChannelResult)(TSL1401_AO_2);  /* use dedicated result register */

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

cam_infomation cam_info[LINES];
int debugLine[LINESIZE];
int nowIndex;
int cntTotal, cntLeft;
int isLimitZone = 0, dashLine = 0;
int leftIndexCount = 0, rightIndexCount = 0;

void CopyPrevLine(cam_infomation * _cam_info, cam_infomation _prev_info) {
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

void Camera_Initialization() {
   int i=0, j=0;
   for(i=0; i < LINES; i++) {
      cam_info[i].center = LINECENTER;
      for(j=0; j<LINESIZE; j++)
         cam_info[i].cam_scan[j] = 0;
   }

   nowIndex = 0;
   cntTotal = 0;
   cntLeft = 0;
}

int GetCameraCenter() {
   int i=0;

   //GetCamera(&cam_info[nowIndex]);

   for(i=0; i<LINESIZE; i++)
	   cam_info[nowIndex].cam_scan[i] = IR_LineScan.adcResult[0][i];
   cam_info[nowIndex].center = LINECENTER;

   Stretching(&(cam_info[nowIndex].cam_scan), 4096);
   MedianFiltering(&cam_info[nowIndex].cam_scan);
   Sharpening(&cam_info[nowIndex].cam_scan);
   Stretching(&(cam_info[nowIndex].cam_scan), 100000);

   cam_info[nowIndex].center = FindCenter(&(cam_info[nowIndex].cam_scan));

   if(cam_info[nowIndex].center == -1 || cam_info[nowIndex].center == 0) {
      CopyPrevLine(&(cam_info[nowIndex]), cam_info[(nowIndex + LINES - 1) % LINES]);
      cam_info[nowIndex].center = cam_info[(nowIndex + LINES - 1) % LINES].center;
   }

   for(i=0; i<LINESIZE; i++)
	   debugLine[i] = cam_info[nowIndex].cam_scan[i];

   nowIndex = (nowIndex+1)%LINES;

   return cam_info[(nowIndex + 4) % 5].center;
}

int FindCenter(int(*_line)[LINESIZE]) {
   int i, index = 0, leftIndex = 0, rightIndex = 127, zeroCount = 0;

   for (i = 0; i < LINESIZE; i++) {
      if((*_line)[i] < 0)
         (*_line)[i] = 0;
      if ((*_line)[i] < THRESHOLD) {
    	  zeroCount++;
         (*_line)[i] = 0;
      }
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
	   if(leftIndex == 0)
	   		leftIndexCount++;
	   	if(rightIndex == 127)
	   		rightIndexCount++;
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

int IsLimitZone() {
	int i = 0;
	int count = 0;

	for (i = 0; i < LINESIZE - 1; ++i) {
		if (cam_info[(nowIndex+4)%5].cam_scan[i] == 0 && cam_info[(nowIndex+4)%5].cam_scan[i] != cam_info[(nowIndex+4)%5].cam_scan[i+1]){
//		if (DABS(cam_info[(nowIndex+4)%5].cam_scan[i] - cam_info[(nowIndex+4)%5].cam_scan[i+1]) >= 25000)
			count++;}
		if (count >= 5) {
			isLimitZone ^= 1;
			leftIndexCount = 0;
			rightIndexCount = 0;
			break;
		}
	}

	return isLimitZone;
}

int GetDashLine() {
	return leftIndexCount >= rightIndexCount ? 1 : -1;
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
        }

	}

	IfxPort_setPinState(TSL1401_SI.port, TSL1401_SI.pinIndex, IfxPort_State_low);
	IfxPort_setPinState(TSL1401_CLK.port, TSL1401_CLK.pinIndex, IfxPort_State_low);
//	waitTime(1*TimeConst_10ms);

}
