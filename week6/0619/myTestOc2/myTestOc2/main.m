//
//  main.m
//  myTestOc2
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        
        NSLog(@"Hello, World!");
        NSString* name = @"john";

        int* x = malloc(4);
        
        free(x);
    }
    return 0;
}
