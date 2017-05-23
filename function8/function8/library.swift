
/////////////////////////////////////Function Decleration//////////////////////////////////////////////////////////

func add(first:Int, second:Int) -> Int {
    return first + second
}
func sub(first:Int, second:Int) -> Int {
    return first - second
}
func mul(first:Int, second:Int) -> Int {
    return first * second
}
func div(first:Int, second:Int) -> Float {
    return Float(first) / Float(second)
}

func other(a:Int,b:Int)->Int{
    print("Your input can't be executed")
    return 0;
}

//// enclose dirty, messy code
func input_number()->Int{
    return Int(readLine()!)!
}
