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


print("請輸入兩個整數")
var first = input_number()
var second = input_number()
print("你輸入為\(first)及\(second)")

print("請輸入運算子")
let oper = readLine()!
operators_process(oper: oper)


