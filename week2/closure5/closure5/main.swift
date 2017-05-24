
/*
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 100
    
    func decrementer() -> Int {
        overallDecrement -= total
        print(overallDecrement)
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 18)
let x = decrem()
let y = decrem()
let z = decrem()
*/

func makeIncrementer() -> ((Int) -> Int) {
    
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))
