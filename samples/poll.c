#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>

void pressed(void){
	printf("hello world!\n");
	fflush(stdout);
}

int main(int argc, char* argv[]){
	if(argc < 2){
		printf("Usage: %s pin\n",argv[0]);
		return -1;
	}
	int BUTTON = atoi(argv[1]);
	wiringPiSetup();
	pinMode(BUTTON,INPUT);

	int current, prev=1;
	while(1){
		current = digitalRead(BUTTON);
		if(current&&!prev){
			pressed();
		}
		prev = current;
	}

	return 0;
}
