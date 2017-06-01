
class sample {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle: (Double, Double) {
        get{
            return (length / 2, breadth / 2)
        }set(axis) {
            no1 = axis.0 - (length / 2)
            no2 = axis.1 - (breadth / 2)
        }
    }
}

var result = sample()
print(result.middle)
result.middle = (0.0, 10.0)

print(result.no1)
print(result.no2)

/*
class abc{
    var test:Int  = 123

    
}

var t = abc()
t.test = 789
print(t.test)
t.test = t.test + t.test
print(t.test)
 
 */
/*
class abc{
    private var inner_test:Int!
    var test:Int{
        get{
            return inner_test
        }
        set(xxx){
            self.inner_test = xxx
        }
    }
}

var x:abc  = abc()
print(x.test)

x.test = 888
print(x.test)
*/
