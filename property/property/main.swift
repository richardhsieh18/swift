/*
struct test{
    var p1:Int!
    var p2:String!
}

var obj:test = test()
obj.p1 = 789
obj.p2 = "hahahahah"
 */

/*//struct結構體會自機掃描你的property初始化的狀態
 //會自動產生能初始化你原先沒有初始化的property的建構子出來
 建構子自動化
struct Number{
    var digits: Int
    let pi = 3.1415
}

var n = Number(digits: 12345) //這種建構子的參數修飾字就直接沿用參數名稱
n.digits = 67

print("\(n.digits)")
print("\(n.pi)")
*/


struct Number {
    var digits: Int
    var numbers = 3.1415
}

var n = Number(digits: 12345, numbers: 3.8888)
n.digits = 67

print("\(n.digits)")
print("\(n.numbers)")
n.numbers = 8.7




