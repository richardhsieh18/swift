
func test(){
    print("haha")
}

var f = {
    ()->Void
    in
    print("wohaha")
}

f()

func test2(a:Int, b:Int)->Int{
    var result:Int
    result = a + b
    return result
}

var f2 = {
    (a:Int,b:Int)->Int
    in
    var result:Int
    result = a + b
    return result
}
print(test2(a:6,b:8))
print(f2(6,8))
