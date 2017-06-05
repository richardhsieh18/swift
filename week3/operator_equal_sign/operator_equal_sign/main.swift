var a:Int = 7
var b:Int = 7

// ==運算子是給class用的
if a == b {
    print("a==b")
}else{
    print("a!=b")
}

/*
 //===運算子是給class用的
 
if a === b {
    print("a==b")
}else{
    print("a!=b")
}
 
 */

print("=============以下類別=============")

class my{
    var v:Int
    init(v:Int){
        self.v = v
    }
}

/*
var x:my = my(v: 7)
var y:my = my(v: 7)

if x === y {
    print("x===y")
}else{
    print("x!==y")
}
*/
/*
var x:my = my(v: 7)
//class用 = 指定到另一個變數，只是把另一個變數也指向了同一個記憶體位置，沒有複製
var y = x

if x === y {
    print("x===y")
}else{
    print("x!==y")
}

print(x.v)
print(y.v)

print("------  y.v = 8 -----------")
y.v = 8

print(x.v)
print(y.v)
*/

//以下為繼承
class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}
func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

print(spClass1 === spClass2) // false
print("\(spClass1.myProperty)")

print(spClass1 !== spClass2) // true
print("\(spClass2.myProperty)")

print(spClass1 == spClass2)
