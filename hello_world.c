#include<stdio.h>

int add(int a, int b){
    return (a+b);
}

int main(){
    printf("HELLO WORLD");
    int c=3;
    int d=6;
    int result=add(c,d);
    printf("result is %d\n",result);
    return 0;
}