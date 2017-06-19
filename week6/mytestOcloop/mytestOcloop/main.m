//
//  main.m
//  mytestOcloop
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        long int x;
        time(&x);
        //printf("%ld",x);
        
        srand((unsigned int)x);
        puts("請猜猜我心中所想的整數數字(0~9)");
        int iThink = rand() % 10;
        int yInput;
        scanf("%d", &yInput);
        while (yInput != iThink) {
            puts("請再輸入");
            scanf("%d", &yInput);
        }
        printf("你猜對了%d答案是%d\n",yInput,iThink);
    
    }
    return 0;
}
