import Foundation
 
 var f:Float
 var d:Double
 
f = 123.123456789123456789123456789123
d = 123.123456789123456789123456789123
 
 print(f)
 print(d)
 
 
 //強迫多印小位數,比較常見的做法是
 /*
  
  1.把要印的浮點數轉成字串
  2.指定字串要印的位數
  3.印字串
  
*/
 
 var 要轉的float字串:String
 要轉的float字串 = String(format: "%.30f", f)
 
 var 要轉的double字串:String
 要轉的double字串 = String(format:"%.30f", d)
 
 print(要轉的float字串)
 print(要轉的double字串)
