func test()->Int{
    return 123
}

/*
var accept:Int
accept = test()
print(accept)
 */

//等於
//print(test())

func input_number()->Int{
    return Int(readLine()!)!
}

print("請輸入兩個整數")
var first = input_number()
var second = input_number()
print("你輸入為\(first)及\(second)")

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
print("請輸入運算子")
let oper = readLine()!
operators_process(oper: oper)


