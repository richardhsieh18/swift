
var count = [5,10,-6,75,20]
/*
print(count)
let counted = count.sorted()
print(counted)
print(count)
*/

func ccc(a:Int, b:Int)-> Bool{
    return a > b
}

var f:(Int,Int)->Bool
f = ccc
count.sort(by: f)
print(count)

print("===============================")

var abc = ["hello", "teacher", "sea", "day"]

abc.sort()
print(abc)

let x = abc.sorted()
print(x)

abc.sort(by:{
    (a:String,b:String)
    in
    return a < b
})
print(abc)

