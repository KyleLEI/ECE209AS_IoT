#include <stddef.h>

#define ACCESS_COUNT 10000000
typedef char data_t;

data_t a = 0;
data_t b = 1;

int main(int argc, char* argv[]){
	data_t t;
	register data_t* ptr = &a;

	/* Load 0s */
    for(register size_t i=0;i<ACCESS_COUNT;++i)
        t = *ptr;
	
	/* Load 1s */
	ptr = &b;
	for(register size_t i=0;i<ACCESS_COUNT;++i)
		t = *ptr;
}
