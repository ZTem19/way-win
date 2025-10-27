#include <stdio.h>
#include "way-win.h"

char* string;

void initWayWin(const char* title, const unsigned int width, const unsigned int height){
	printf("Init wayland window with title: %s, width: %d, height: %d", title, width, height);
}


void print(){
	printf("Address of string: %p\n", string);
	printf("String: %s\n", string);
}
