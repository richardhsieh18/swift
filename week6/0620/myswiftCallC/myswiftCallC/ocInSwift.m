//
//  ocInSwift.m
//  myswiftCallC
//
//  Created by chang on 2017/6/20.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>


void oc_c(){
    printf("I am c but I am in oc\n");
}

@interface oc : NSObject

-(void)oc_func;

@end

@implementation oc

-(void)oc_func{
    NSLog(@"Hello form oc");
}

@end
