//
//  main.m
//  myTestOcblock
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

void xxxx(char x, int y, double z){
    printf("%c--%d--%lf", x, y, z);
}

void(^bbbb)(char x, int y, double z);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        bbbb = ^(char x, int y, double z){
            NSLog(@"%c--%d--%lf",x, y,z);
        };
        bbbb('X',123, 35.38);
    }
    return 0;
}
