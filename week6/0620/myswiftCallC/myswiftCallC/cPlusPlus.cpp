//
//  cPlusPlus.cpp
//  myswiftCallC
//
//  Created by chang on 2017/6/20.
//  Copyright © 2017年 changname. All rights reserved.
//

#include <stdio.h>
#include <iostream>

using namespace std;

extern "C" void helloFromCpp(){
    cout << "hello C++" << endl;
    
}
