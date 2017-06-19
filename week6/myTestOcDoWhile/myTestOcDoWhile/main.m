//
//  main.m
//  myTestOcDoWhile
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        puts("Guess what number in my mind?(0~9)");
        
        long x = time(NULL);
        srand((unsigned int)x);
        int iThink = rand() % 10;
        int yGuess;
        
        BOOL firstTime = YES;
        
        do {
            if(firstTime){
                puts("Wrong");
            }
            firstTime = NO;
            puts("Right");
            puts("請猜猜");
            scanf("%d" ,&yGuess);
        }while(yGuess != iThink);
        
        
    }
    return 0;
}
