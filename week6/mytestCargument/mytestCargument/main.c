//
//  main.c
//  mytestCargument
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#include <stdio.h>

int main(int argc, char * argv[]) {

    
    printf("這個程式的命令列總共有%d個字段\n", argc);
    printf("第1個參數是: %s \n", argv[0]);
    printf("第2個參數是: %s \n", argv[1]);

    return 0;
}
