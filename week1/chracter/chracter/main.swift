print("請輸入任何一個字元，我來告訴你它的ASCII內碼")

let x:String
x = readLine()!

let xc:Character
xc = Character(x)

var uc:UnicodeScalar
uc = UnicodeScalar(String(x))!

print("\(xc)\(uc.value)")

//會噴錯
//var num:Int = Int(readLine()!)!
//print(num)

//var uc:UnicodeScalar
//
//uc = UnicodeScalar(num)!
//
//print("\(uc)")

