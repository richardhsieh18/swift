print("猜數字")

var you_guess = Int8(readLine()!)!

if you_guess >= 10
{
    print("太大ㄌ")
    
}else if you_guess <= 9 && you_guess >= 7{
    print("太大ㄌ")
}else if you_guess == 6{
    print("答對ㄌ")
}else if you_guess <= 5 && you_guess >= 1{
    print("太小ㄌ")
}else{
    print("Over my dead body")
}
