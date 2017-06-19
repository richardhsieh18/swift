//
//  main.m
//  testOcFunction
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

void meow(){
    printf("喵~~~\n");
}

int add(int x, int y){
    return x + y;
}

//@只宣告未實作
@interface cat : NSObject
+(void)meow;
-(int)addWithFirst:(int)first andSecond:(int)second;
@end

@implementation cat
//   +()class method
+(void)meow{
    NSLog(@"汪汪");
}
-(int)addWithFirst:(int)first andSecond:(int)second{
    return first + second;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        meow();
//        NSLog(@"3+8=%d\n", add(3,8));
        cat* c = [[cat alloc]init];
        [cat meow];
        NSLog(@"3+8=%d",[c addWithFirst:3 andSecond:8]);
    
    }
    return 0;
}
