#include <stdio.h>
#include <string.h>
#include "Basic.h"

#define THRESHOLD 8000

typedef struct _datafile
{
	char filename[30];
}datafile;

//void Stretching(int array[], int _max);


//int getMax(int array[]);

/* x-axis inversion */
//void Sharpening(int array[]);

//int GetMedian(int array[5]);

/* reduce noise */
//void MedianFiltering(int array[]);

int getLineFirstIndex(int array[]);

void lineCentering_run(void);
