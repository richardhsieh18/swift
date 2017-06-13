extension Int {
    var add: Int {return self + 100 }
    var sub: Int { return self - 10 }
    var mul: Int { return self * 10 }
    var div: Int { return self / 5 }
}

let addition = 3.add
print("Addition is \(addition)")

let subtraction = 120.sub
print("Subtraction is \(subtraction)")

let multiplication = 39.mul
print("Multiplication is \(multiplication)")

let division = 55.div
print("Division is \(division)")

let mix = 30.add + 34.sub
print("Mixed Type is \(mix)")

struct sum {
    var num1 = 100, num2 = 200
}

struct diff {
    var no1 = 200, no2 = 100
}

struct mult {
    var a = sum()
    var b = diff()
}

let calc = mult()
print ("Inside mult block \(calc.a.num1, calc.a.num2)")
print("Inside mult block \(calc.b.no1, calc.b.no2)")

let memcalc = mult(a: sum(num1: 300, num2: 500),b: diff(no1: 300, no2: 100))

print("Inside mult block \(memcalc.a.num1, memcalc.a.num2)")
print("Inside mult block \(memcalc.b.no1, memcalc.b.no2)")

extension mult {
    init(x: sum, y: diff) {
        //let X = x.num1 + x.num2
        //let Y = y.no1 + y.no2
    }
}


let a = sum(num1: 100, num2: 200)
print("Inside Sum Block:\( a.num1, a.num2)")


let b = diff(no1: 200, no2: 100)
print("Inside Diff Block: \(b.no1, b.no2)")



