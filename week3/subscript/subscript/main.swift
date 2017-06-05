struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}
let division = subexample(decrementer: 100)

print("The number is divisible by \(division[9]) times")
print("The number is divisible by \(division[2]) times")
print("The number is divisible by \(division[3]) times")
print("The number is divisible by \(division[5]) times")
print("The number is divisible by \(division[7]) times")
