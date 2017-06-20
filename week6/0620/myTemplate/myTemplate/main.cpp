//
//  main.cpp
//  myTemplate
//
//  Created by chang on 2017/6/20.
//  Copyright © 2017年 changname. All rights reserved.
//

#include <iostream>

//int add(int x, int y){
//    return x+y;
//
//}
//
//float add_float(float x, float y){
//    return x+y;
//}

template <class T>
T add(T x,T y){
    return x+y;
}


int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    
    //int answer = add(3.38,8.1234648);
    //float answer = add_float(3.38, 8.126545);
    
    //int answer = add(3,8);
    float answer = add(3.8,2.46153);
    
    printf("answer=%f\n", answer);
    return 0;
}
