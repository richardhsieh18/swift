//
//  main.m
//  myTestOcPointerCaculation
//
//  Created by chang on 2017/6/19.
//  Copyright © 2017年 changname. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int arr[] = {12,13,14,15,16};

        
        int* p;
        p = &arr[2];
        //位置遞增
        printf("---> %d\n", *p);
        printf("---> %d\n", *p+1);
        printf("---> %d\n", *p+2);
        //從第一個開始
        printf("%d\n", *arr);
        printf("%d\n", *(arr+1));
        //迴圈
        for (int i = 0; i<5; i++){
            printf("^^^%d\n",arr[i]);
        }
        
    }
    return 0;
}
