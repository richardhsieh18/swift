func operators_process(oper:String){
    if oper == "+"{
        print(add(first: first, second: second))
    }
    if oper == "-" {
        print(sub(first: first, second: second))
    }
    if oper == "*"{
        print(mul(first: first, second: second))
    }
    if oper == "/"{
        print(div(first: first, second: second))
    }
}
func add(first:Int, second:Int)->Int{
    let temp = first + second
    return temp
}

func sub(first:Int, second:Int)->Int{
    let temp = first - second
    return temp
}

func mul(first:Int, second:Int)->Int{
    let temp = first * second
    return temp
}

func div(first:Int, second:Int)->Float{
    let temp = Float(first) / Float(second)
    return temp
}
func input_number()->Int{
    return Int(readLine()!)!
}
