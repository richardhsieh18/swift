func test(){
    print("haha")
}
/*
let f = {
    ()->Void
    in
    print("hahaaa")
}
*/
//等於↓
//let f = {
//   print("hahaaa")
//}
//
//f()

print("=========================")

//let divide = {(val1: Int, val2: Int) -> Int in
//    return val1 / val2
//}
//let result = divide(200, 20)
//print (result)

print("=========================")

/*  //字串比較的原則
let a = "abcd"
let b = "aacd"

print(a>b)
*/

func ascend(s1: String, s2: String) -> Bool {
    return s1 > s2
}
let stringcmp = ascend(s1: "swift", s2: "great")
print(stringcmp)
print("==========================")


