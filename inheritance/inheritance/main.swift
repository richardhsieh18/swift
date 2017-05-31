class pet {
    var number:Int!
    var kind:String!
    var cost:Double!

    func cry(){
        print("----")
    }
}

class dog:pet {
    func add(x:Int, y:Int) -> Int{
        return x + y
    }
}

class cat:pet {
    func meow(){
        print("MEOW")
    }
}


var d = dog()
d.number = 1
print(d.number)
d.kind = "拉布拉多"
print(d.kind)
print(d.add(x: 3, y: 7))
