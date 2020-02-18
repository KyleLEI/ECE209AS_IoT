#include <unistd.h>

#define LOOP_COUNT 10000000
typedef int data_t;

data_t a = 0;
data_t b = 1;

int main(int argc, char* argv[]){
	data_t x = a;
	
	if(x==a)
    	for(register size_t i=0;i<LOOP_COUNT;++i){
        	x = 50*50; // arithmetic operation
			usleep(10);
		}
	else	
		for(register size_t i=0;i<LOOP_COUNT;++i){
			x = b; // read from memory
			usleep(10);
		}
	return 0;
}
