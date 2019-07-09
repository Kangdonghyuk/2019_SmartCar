/**
 * \file BasicLineScan.h
 * \brief BasicLineScan
 *
 */

#ifndef BASICLINESCAN_H
#define BASICLINESCAN_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Vadc/Std/IfxVadc.h>
#include <Vadc/Adc/IfxVadc_Adc.h>

#include "Basic.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
	uint32 adcResult[3][128];
}IR_LineScan_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN IR_LineScan_t IR_LineScan;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void BasicLineScan_init(void);
IFX_EXTERN void BasicLineScan_run(void);

#define CAMERACHANNEL 3
#define LINESIZE 128
#define LINES 5
#define CAMS 3
#define MAXVALUE 4096
#define DABS(n) ((n < 0) ? -n : n)
#define DSQUARE(n) (n*n)
#define THRESHOLD 90000
#define WHITETHRESHOLD 60000
#define C_THRESHOLD 70000
//#define THRESHOLD 3500
//#define C_THRESHOLD 1700
#define LEFTMAXCOUNT 300
#define LEFTTHRESHOLD 197
#define LINECENTER 70
//#define LIMIT_THRESHOLD 44
//#define LIMIT_THRESHOLD 109
#define LIMIT_THRESHOLD 4

typedef struct CAM_INFORMATION {
	int cam_scan[LINESIZE];
	int center;
}cam_information;

int AdjustBySides();
void Camera_Initialization();
int GetCameraCenter(int prevServo, int cntDiff);
enum DIRECTION GetCameraDash();

void GetCamera(cam_information * _cam_info);
void CopyPrevLine(cam_information * _cam_info, cam_information _prev_info);

int GetMedian(int _array[5]);
int GetMedianCenter(cam_information _cam_info[LINES]);
void Stretching(int(*_line)[LINESIZE], int _max);
void MedianFiltering(int(*_line)[LINESIZE]);
void Sharpening(int(*_line)[LINESIZE]);
int IsNoise(cam_information _cam_info[LINES]);
IFX_EXTERN int FindCenter(int(*line)[LINESIZE]);

//void MakeIdxZero(int(*_line)[LINESIZE]);
void MakeIdxZero(int(*_line)[LINESIZE], int threshold);
void MakeIdxMax(int(*_line)[LINESIZE], int threshold);
IFX_EXTERN void CheckLimitZone(int nowState);
IFX_EXTERN int IsLimitZone();
IFX_EXTERN int GetDashLine();
IFX_EXTERN int FindCenter(int(*_line)[LINESIZE]);
IFX_EXTERN int FindOneLine(int line[LINESIZE], int dir);
IFX_EXTERN int GetCountPassedObject();
IFX_EXTERN void SetCountPassedObject(int cpo);
IFX_EXTERN int GetDottedLine();
IFX_EXTERN void SetDottedLine(int dl);


#endif
