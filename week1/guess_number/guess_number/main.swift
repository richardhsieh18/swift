import Foundation

print("Guess the number in my mind now?(1~9)") // answer is random

var YOU_GUESS = Int(readLine()!)!
var counter = 0

var random_ans:Int
random_ans = Int(arc4random() % 10)

while YOU_GUESS != random_ans {
    print("Wrong Answer\n")
    print("Guess Again")
    
    counter = counter + 1
    YOU_GUESS = Int(readLine()!)!
}
print("Game Over")
print("你猜的次數\(counter)")


////測試亂數
//var x:UInt32
//
//for _ in 1 ... 10 {
//    x = arc4random() % 9 + 1
//}
