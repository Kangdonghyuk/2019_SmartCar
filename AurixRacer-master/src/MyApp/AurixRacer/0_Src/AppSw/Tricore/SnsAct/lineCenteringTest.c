#include "lineCenteringTest.h"

#define SIZE 128

/* stretch value */
void Stretching(int array[], int _max) {
   int i, max = array[0], min = array[0];

   for (i = 0; i < SIZE; i++) {
      max = (array[i] > max) ? array[i] : max;
      min = (array[i] < min) ? array[i] : min;
   }
   for (i = 0; i < SIZE; i++)
      array[i] = ((float)_max / (float)(max - min)) * (array[i] - min);
}


int getMax(int array[]){
	int i, max = array[0];
	for (i = 0; i < SIZE; ++i){
		max = (array[i] > max) ? array[i] : max;
	}
	return max;
}

/* x-axis inversion */
void Sharpening(int array[]) {
	int MAX = getMax(array);
   int i, j;
   int minus, add, square;
   int temp[SIZE];

   for (i = 0; i < 128; i++) {
         array[i] = MAX - array[i];
         temp[i] = array[i];
   }

   for(i=3; i<125; i++) {
      minus = 0, add = 0, square = 0;
      for(j = -3; j <= 3; j++) {
         if(j <= -2 || j >= 2) minus += (array[i+j] * (-3));
         if(j == -1 || j == 1) add += (array[i+j] * 3);
         if(j == 0) square += (array[i+j] * 6);
      }
      temp[i] = minus + add + square;
   }
}


int GetMedian(int array[5]) {
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
void MedianFiltering(int array[]) {
   int i, j, t;
   int _array[5];
   for (i = 0 + 2; i < SIZE - 2; i++) {
      for (j = -2, t = 0; j <= 2; j++, t++)
         _array[t] = array[i + j];
      array[i] = GetMedian(_array);
   }
}

int getLineFirstIndex(int array[]){
	int idx;
	for (int i = 0; i < SIZE; ++i)
	{
		if (array[i] >= THRESHOLD)
		{
			idx = i;
			break;
		}
	}
	return idx;
}

int index = 0;
int rightCamera[128];
int leftCamera[128];
void lineCentering_run(void)
{

	float currentSrvAngle = IR_getSrvAngle();
	int cutRightCamera[116];
	int cutLeftCamera[116];
	int i;
	int count = 0;

	for(i=0; i<128; i++) {
		rightCamera[i] = IR_LineScan.adcResult[0][i];
		leftCamera[i] = IR_LineScan.adcResult[1][i];
	}


	Stretching(rightCamera, 4096);
	MedianFiltering(rightCamera);
	Sharpening(rightCamera);
	// MedianFiltering(rightCamera);
	Stretching(rightCamera, THRESHOLD);
	
	Stretching(leftCamera, 4096);
	MedianFiltering(leftCamera);
	Sharpening(leftCamera);
	// MedianFiltering(leftCamera);
	Stretching(leftCamera, THRESHOLD);

	for (i = 0; i < 116; ++i)
	{
		cutRightCamera[i] = rightCamera[i + 6];
		cutLeftCamera[i] = leftCamera[i + 6];
		if(cutRightCamera[i] >= THRESHOLD && count == 0){
			index = i;
			count++;
		}
	}

	/*Sharpening(cutRightCamera);
	MedianFiltering(cutRightCamera);
	Stretching(cutRightCamera, THRESHOLD);
	
	Sharpening(cutLeftCamera);
	MedianFiltering(cutLeftCamera);
	Stretching(cutLeftCamera, THRESHOLD);*/


	if (index <= 30){
		IR_setSrvAngle(currentSrvAngle - 0.03);
	}
	else if(30 < index && index <= 68){
		IR_setSrvAngle(currentSrvAngle - 0.005);
	}
	else if(68 < index && index <= 73){
		IR_setSrvAngle(0.1953);
	}
	else if(73 < index && index <= 105){
		IR_setSrvAngle(currentSrvAngle + 0.005);
	}
	else{
		IR_setSrvAngle(currentSrvAngle + 0.03);
	}
}
