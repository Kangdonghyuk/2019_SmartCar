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

int left_index = -1;
int right_index = -1;
void lineCentering_run(void)
{
	int lStdValue[4] = {25, 63, 67, 99};
	int rStdValue[4] = {146, 184, 189, 221};
	float currentSrvAngle = IR_getSrvAngle();
	int totalCamera[232];
	//int cutTotalCamera[232];
	int lIndex = -1;
	int rIndex = -1;
	int centerIndex = 0;

	int i;

	for(i=0; i<116; i++) {
		totalCamera[i] = IR_LineScan.adcResult[1][i + 6];
	}
	for(i = 0; i < 116; i++){
		totalCamera[i + 116] = IR_LineScan.adcResult[0][i + 6];
	}


	Stretching(totalCamera, 4096);
	MedianFiltering(totalCamera);
	Sharpening(totalCamera);
	// MedianFiltering(totalCamera);
	Stretching(totalCamera, 10000);
	
	for(i = 116; i > 0; --i){
		//cutTotalCamera[i] = totalCamera[i+6]
		if(totalCamera[i] >= THRESHOLD){
			lIndex = i;
			break;
		}
	}
	for(i = 116; i < 232; ++i){
		if(totalCamera[i] >= THRESHOLD){
			rIndex = i;
			break;
		}
	}

	//shin
	float c = -0.03;
	if(rIndex == -1 && lIndex != -1){
		IR_setSrvAngle(0.1935 + 1.5 * (58 - lIndex) * c);
	}
	else if(lIndex == -1 && rIndex != -1){
		IR_setSrvAngle(0.1935 + 1.5 * (174 - rIndex) * c);
	}
	else if(rIndex == -1 && lIndex == -1){
		IR_setSrvAngle(0.1953);
	}
	else{
		IR_setSrvAngle(0.1953 + (116 - (rIndex + lIndex)/2) * c);
	}

	/*
	// nam
	if(lIndex == -1 && rIndex != -1){
		lIndex = rIndex-123;
	}

	else if(rIndex == -1 && lIndex != -1){
		rIndex = lIndex+123;
	}

	left_index = lIndex;
	right_index = rIndex;

	centerIndex = (lIndex+rIndex)/2;

	if(centerIndex <= 90){
		IR_setSrvAngle(currentSrvAngle - 0.05);
	}

	else if (100 <= centerIndex && centerIndex < 106){
		IR_setSrvAngle(currentSrvAngle - 0.03);
	}
	else if(106 <= centerIndex && centerIndex < 111){
		IR_setSrvAngle(currentSrvAngle - 0.01);
	}
	else if(111 <= centerIndex && centerIndex <= 121){
		IR_setSrvAngle(0.1953);
	}
	else if(121 < centerIndex && centerIndex <= 126){
		IR_setSrvAngle(currentSrvAngle + 0.01);
	}
	else if(126 < centerIndex && centerIndex <= 132){
		IR_setSrvAngle(currentSrvAngle + 0.03);
	}
	else{
		IR_setSrvAngle(currentSrvAngle + 0.05);
	}
*/

/*
	if(lIndex == 0 && rIndex != 0){
		if (rIndex <= rStdValue[0]){
			IR_setSrvAngle(currentSrvAngle - 0.03);
		}
		else if(rStdValue[0] < rIndex && rIndex <= rStdValue[1]){
			IR_setSrvAngle(currentSrvAngle - 0.005);
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

	else if(rIndex == 116 && lIndex != 0){
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
			IR_setSrvAngle(currentSrvAngle + 0.03);
		}
	}
	*/

	/*좌코너 우코너 인식
	if(lIndex == 0 && rIndex > 116){
		IR_setSrvAngle(currentSrvAngle - 0.05);
	}

	else if(rIndex == 116 && lIndex > 0 && lIndex < 116){
		IR_setSrvAngle(currentSrvAngle + 0.05);
	}
	else{
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
			IR_setSrvAngle(currentSrvAngle + 0.03);
		}
	}
	*/
}
