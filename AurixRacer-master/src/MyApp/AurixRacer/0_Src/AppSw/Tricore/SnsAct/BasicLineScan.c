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

#define CAMERACHANNEL 3
#define LINESIZE 128

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

}

void Sharpening2(int array[]) {
	int MAX = getMax(array);
   int i, j;
   int minus, add, square;
   int temp[LINESIZE];

   for (i = 0; i < LINESIZE; i++)
         temp[i] = array[i];

   for(i=3; i<LINESIZE - 3; i++) {
      minus = 0, add = 0, square = 0;
      for(j = -3; j <= 3; j++) {
         if(j <= -2 || j >= 2) minus += (array[i+j] * (-3));
         if(j == -1 || j == 1) add += (array[i+j] * 3);
         if(j == 0) square += (array[i+j] * 6);
      }
      temp[i] = minus + add + square;
   }
   for(i=0; i<LINESIZE; i++)
   		array[i] = temp[i];
}

void Stretching2(int array[], int _max) {
   int i, max = array[0], min = array[0];

   for (i = 0; i < LINESIZE; i++) {
      max = (array[i] > max) ? array[i] : max;
      min = (array[i] < min) ? array[i] : min;
   }
   for (i = 0; i < LINESIZE; i++)
      array[i] = ((float)_max / (float)(max - min)) * (array[i] - min);
}

int GetMedian2(int array[5]) {
   int i, j, temp;
   for (i = 0; i < 5; i++) {
      for (j = i; j < 5; j++) {
         if (array[i] > array[j]) {
            temp = array[i];
            array[i] = array[j];
            array[j] = temp;
         }
      }
   }
   return array[2];
}

/* reduce noise */
void MedianFiltering2(int array[]) {
   int i, j, t;
   int _array[5];
   for (i = 0 + 2; i < LINESIZE - 2; i++) {
      for (j = -2, t = 0; j <= 2; j++, t++)
         _array[t] = array[i + j];
      array[i] = GetMedian2(_array);
   }
}

int lineValues[3][LINESIZE];
int leftLineIndex, rightLineIndex, centerLineIndex = 64, beforeCenterLineIndex = 64, leftCount = 0, rightCount = 0;
int centerList[5] = {64, 64, 64, 64, 64}, centerIndex = 0;

int DIFF(int a, int b) {
	return (a >= b ? a : b) - (a >= b ? b : a);
}

int LineDetecting() {
	int i;
	for(i=0; i<LINESIZE; i++) {
		lineValues[0][i] = 4096 - IR_LineScan.adcResult[1][i];
		lineValues[1][i] = 4096 - IR_LineScan.adcResult[0][i];
		lineValues[2][i] = 4096 - IR_LineScan.adcResult[2][i];
	}

	Stretching2(lineValues[0], 4096);
	Stretching2(lineValues[1], 4096);
	Stretching2(lineValues[2], 4096);
	MedianFiltering2(lineValues[0]);
	MedianFiltering2(lineValues[1]);
	MedianFiltering2(lineValues[2]);
	Sharpening2(lineValues[0]);
	Sharpening2(lineValues[1]);
	Sharpening2(lineValues[2]);
	MedianFiltering2(lineValues[0]);
	MedianFiltering2(lineValues[1]);
	MedianFiltering2(lineValues[2]);
	Stretching2(lineValues[0], 100000);
	Stretching2(lineValues[1], 100000);
	Stretching2(lineValues[2], 100000);

	rightLineIndex = -1;
	leftLineIndex = 128;
	leftCount = 0;
	rightCount = 0;

	for(i=0; i<120; i++) {
		if(lineValues[0][i] >= 85000) {
			if(leftLineIndex == LINESIZE)
				leftLineIndex = i;
		}
		if(lineValues[0][i] >= 70000)
			leftCount += 1;
		if(lineValues[1][i] >= 85000) {
			if(rightLineIndex == -1)
				rightLineIndex = i;
		}
		if(lineValues[1][i] >= 70000)
			rightCount += 1;
	}

	if(leftCount >= 12)
		leftLineIndex = LINESIZE;
	if(rightCount >= 12)
		rightLineIndex = -1;


	/*for(i=0; i<64; i++) {
		if(lineValues[2][64 - i - 1] >= 85000 && leftLineIndex == 128) {
			leftLineIndex = 64 - i - 1;
		}
		if(lineValues[2][64 + i] >= 85000 && rightLineIndex == -1) {
			rightLineIndex = 64 + i;
		}
	}*/

	if(leftLineIndex != 128 && rightLineIndex != -1)
		centerLineIndex = (leftLineIndex + rightLineIndex) / 2;
	else if(leftLineIndex != 128 && rightLineIndex == -1)
		centerLineIndex = (leftLineIndex + 40);
	else if(leftLineIndex == 128 && rightLineIndex != -1)
		centerLineIndex = (rightLineIndex - 40);
	else
		centerLineIndex = 64;

	centerList[centerIndex] = centerLineIndex;
	centerIndex = (centerIndex + 1) % 5;

	return (centerList[0] + centerList[1] + centerList[2] + centerList[3] + centerList[4]) / 5;
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
