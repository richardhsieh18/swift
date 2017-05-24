

//函數的參數在block裡為複本常數，無法改變
//func swap(first:Int, second:Int)
//{
//    var temp:Int
//    temp = first
//    first = second
//    second = temp
//}

//加上inout
func swap(first:inout Int, second:inout Int)
{
    var temp:Int
    temp = first
    first = second
    second = temp
}


print("Please input two integer")

var a:Int, b:Int

print("輸入a:")
a = Int(readLine()!)!

print("輸入b:")
b = Int(readLine()!)!

print("現在是 a = \(a), b = \(b)")

//  加上&代表指標
swap(first:&a, second:&b)

print("現在是 a = \(a), b = \(b)")
