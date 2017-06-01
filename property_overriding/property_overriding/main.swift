
/*
class Circle {
    var radius = 12.5
    var area: String {
        return "of rectangle for \(radius) "
    }
}

class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " is now overridden as \(print)"
    }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")
*/

class base_login{
    private var inner_account:String!
    private var inner_password:String!
    var account:String{
        get{
            return inner_account
        }
        set{
            inner_account = newValue
        }
    }
    var password:String{
        get{
            return inner_password
        }
        set{
            inner_password = newValue
        }
    }
}

var john:base_login = base_login()
john.account = "werwer"
john.password = "123456"
print("你的帳號是\(john.account)，你的密碼是\(john.password)")

class secure_login: base_login{
    private var inner_password:String!
    override var password:String{
        
        get{
            print("輸入通關密語")
            let you_input = readLine()!
            if you_input == "hello" {
                return inner_password
            }else{
                return "fool"
            }
        }
        set{
            inner_password = newValue
        }
    }
}

var tom:secure_login = secure_login()
tom.password = "wwww"
print("\(tom.password)")
