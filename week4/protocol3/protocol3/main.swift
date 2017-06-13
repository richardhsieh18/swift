protocol rule {
    init(first:Int,second:String)
}

class Cat:rule{
    var number:Int!
    var kind:String?
    
    required init(first:Int,second:String){
        self.number = first
        self.kind = second
    }
    
    func say() -> String{
        return "WOw"
    }
}

let t = Cat(first: 5, second: "yyy")
print(t.number)
print(t.kind!)
print(t.say())
