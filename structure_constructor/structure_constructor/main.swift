//swift中的結構體中所有的變數，在建立物件時，"一定"要有值
struct cat{
    var number:Int?
    var kind:String?
    var cost:Double?
    
    init(){
        number = 1
        kind = "PERSIAN"
        cost = 2.3
    }
    
    init(可以指定號碼的建構子 number:Int){  //建構子多形
        self.number = number //指定給自己的參數
    }
}

var c1:cat
c1 = cat()

print("第\(c1.number!)隻貓是\(c1.kind!)種成本是\(c1.cost!)")

var c2 = cat(可以指定號碼的建構子: 2)

print("第\(c2.number!)隻貓是\(c2.kind)種成本是\(c2.cost)")
