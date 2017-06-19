//
//  main.c
//  myTextCharacter
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {

    char x;
    //x = 'A';
    x = 65;
    int y = 'B';
    printf("----%c----\n",x);
    printf("----%c----\n",y);
    
    char name[5];
    name[0] = 'j';
    name[1] = 'o';
    name[2] = 'h';
    name[3] = 'n';
    name[4] = 0;
    printf("----%s---\n",name);
    
    char* name2;
//    name2 = malloc(sizeof(char));
//    *name2 = 'A';
//    
//    printf("----%s----\n",name);
//    printf("----%c----\n",*name2);
    
    name2 = malloc(5);
    name2 = "john";
    printf("用字元指標表達的c語言字串---%s---\n",name2);
    

    return 0;

}
