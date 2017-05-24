import Foundation

var x:Int
x = 0
print(x)
x = x + 1
print(x)
x += 1
print(x)
x += 3
print(x)

print("========BitWise============")

var a = 3, b = 5
var bit = 3 & 5
print(bit)

var bit2 = 3 | 5
print(bit2)

var bit3 = 3 ^ 5
print(bit3)
/*
print("========以下是一個假設(假設嵌入式微控制器用8個bit 來控制8盞燈)============")

 print(0b01010101) //print(85)
print(0b10101010) //print(170)
 */
/*
var flash = 0b01010101

for i in 1...10{
    //print(flash ^ 0b11111111)
    print(~flash)
    sleep(1)
}
*/

print("=============================BitWise之位移===================================")

var A = 0b00111100
A = A << 2 //往左位移2位

print(A)
