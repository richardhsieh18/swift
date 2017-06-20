//
//  main.c
//  mytestcAdd
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {

    if (argc != 3) {
        printf("需要傳3個參數");
        return 1;
    }else{
        int x = atoi(argv[1]);
        int y = atoi(argv[2]);
        printf("相加為%d", x + y);
    }
    
    return 0;
}
