//
//  main.m
//  mytestOcNumber
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSNumber* obj;
//        
//        BOOL x;
//        x = YES;
//        
//        obj = [NSNumber numberWithBool:x];
//        NSLog(@"%@",[obj description]);
        
        NSArray* arr = [[NSArray alloc]initWithObjects:
                        [NSNumber numberWithInt:1],
                        [NSNumber numberWithInt:2],
                        [NSNumber numberWithInt:3],
                        [NSNumber numberWithInt:4],
                        [NSNumber numberWithInt:5],
                        nil];
        
        NSLog(@"arr[0]+arr[1] = %d",[arr[0] intValue]+[arr[4]intValue]);
    }
    return 0;
}
