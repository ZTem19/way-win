#include <stdio.h>
#include "way-win.h"

char* string;

void set(char* str){
	string = str;
}


void print(){
	printf("Address of string: %p\n", string);
	printf("String: %s\n", string);
}
