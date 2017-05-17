print("猜猜我心中所想的數字(0~9)")//假設是6

//var you_guess:Int8
var you_guess = Int8(readLine()!)!

//照起工
//var x_string:String
//
//x_string = readLine()!
//
//var you_guess:Int8
//
//you_guess = Int8(x_string)!

if you_guess == 6
{
    print("你答對了")
    
}else{
    print("Game Over")
    print("你猜的結果是\(you_guess == 6)")
}

