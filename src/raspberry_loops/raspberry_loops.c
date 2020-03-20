#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

unsigned long nowtime;

unsigned long millis(){
    struct timeval t;
    gettimeofday(&t, NULL);
    return t.tv_sec*1000+t.tv_usec/1000;
}

void loop1(){
    float x=10;
    while(1){
        printf("%lu\n%f\n",nowtime,x);
        nowtime=millis();
        while(millis()-nowtime<1)
            x=x+1;
    }
}

void loop2(){
    float x=10;
    while(1){
        nowtime=millis();
        while(millis()-nowtime<1)
         x=x+1;
    }
}

void loop3(){
    float x=10,y=6;
    while(1){
        nowtime=millis();
        while(millis()-nowtime<1)
          y=x+1;
    }
}

void loop4(){
    while(1){
    }
}

void loop5(){
    float x=10,y=6;
    while(1){
        x=x+1;
        y=y*y;
    }
}

int main(int argc,char* argv[]){
    if(argc<2){
        printf("Usage: %s {1,2,3,4,5}\n",argv[0]);
        return -1;
    }
    int choice = atoi(argv[1]);
    switch(choice){
        default:
        case 1:
            loop1();
            break;
        case 2:
            loop2();
            break;
        case 3:
            loop3();
            break;
        case 4:
            loop4();
            break;
        case 5:
            loop5();
    }
    return 0;
}
