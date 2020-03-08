#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>

void pressed(void){
	printf("hello world!\n");
	fflush(stdout);
}

int main(int argc, char* argv[]){
	if(argc < 2){
		printf("Usage: %s pin", argv[0]);
		return -1;
	}
	int BUTTON = atoi(argv[1]);
	wiringPiSetup();
	pinMode(BUTTON,INPUT);
	pullUpDnControl(BUTTON,PUD_UP);
	
	wiringPiISR(BUTTON, INT_EDGE_FALLING, pressed);
	while(1)
		waitForInterrupt(BUTTON, -1);

	return 0;
}
