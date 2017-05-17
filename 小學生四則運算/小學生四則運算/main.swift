print("請輸入兩格整數，會為你計算這兩數的加減乘除結果")

var one:String
var two:String

print("請輸入第一個吧===>")
one = readLine()!

print("請輸入第二個吧===>")
two = readLine()!

var i_one = Int(one)!
var i_two = Int(two)!


/*
 print("很好，你輸入了")
 print(one)
 print("&")
 print(two)
 */

print("很好！你輸入了\(one)與\(two)")
print("結果\n相加為\(i_one + i_two)\n相減為\(i_one - i_two)\n相乘為\(i_one * i_two)\n相除為\(Float(i_one) / Float(i_two))\n")
