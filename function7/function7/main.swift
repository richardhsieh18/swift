/*
 func test(){
 print("TEST")
 }
 
 //上面的函數是 ()->Void
 
 var f:()->Void
 
 f = test
 
 f()
 */

print("Please tell me which caculation you want to do for number 3 and 8")
print("Input 1 for add, 2 for subtract, 3 for multiplication")

var how = Int(readLine()!)!
//function type用法
var how_to_do:(Int,Int)->Int

switch(how){
case 1:
    how_to_do = add
    break
case 2:
    how_to_do = sub
    break
case 3:
    how_to_do = mul
    break
default:
    how_to_do = other
    break
}

print("The reslut you want is \(how_to_do(3,8))")
