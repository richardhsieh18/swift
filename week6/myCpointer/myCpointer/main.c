//
//  main.c
//  myCpointer
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int x;
    x = 38;
    printf("------%d\n",x);
    
    int* px;
    px = &x;
    *px = 77;
    printf("------%d\n",*px);
    printf("------%d\n",x);
    
    return 0;
}
