//
//  main.m
//  testOcLoopCollection
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray* arr = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
        
        for (NSString* temp in arr){
            NSLog(@"%@",temp);
        }
        
        NSDictionary* dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"100",@"john", @"90",@"mary",@"80",@"tom", nil];
        
        for (NSString* temp1 in dic){
            NSString* point = [dic objectForKey:temp1];
            NSInteger score = [point integerValue];
            
            if (score >= 90){
                NSLog(@"%@", temp1);
                continue;
            }
                //NSLog(@"%@", temp1);
        }
    }
    return 0;
}
