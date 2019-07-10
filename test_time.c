#include <unistd.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>

clock_t tick,tock;
struct timeval stop, start;
double processor_time;
unsigned long int elapsed_time;


int main(int argc, char* argv[]){
    /* Record start time */
	tick = clock();
	gettimeofday(&start, NULL);

    /* Do something */
	//sleep(1);
	usleep(5e5);
	printf("hello 1\n");
	fflush(stdout);
	//sleep(1);
	usleep(5e5);
	printf("hello 2\n");
	fflush(stdout);

	for(int i=0;i<5000000;i++){
		asm("nop");
	}

    /* Record end time */
	tock = clock();
	gettimeofday(&stop,NULL);

    /* Calculate time and print to stdout */
	processor_time = ((double)(tock - tick))/(double)CLOCKS_PER_SEC;
	elapsed_time = (stop.tv_sec - start.tv_sec)*1e6 
		+ stop.tv_usec - start.tv_usec;
	printf("Processor Time: %.2fms\n", processor_time*1e3);
	printf("Real Time: %.2fms\n", (double)elapsed_time/1e3);
}
