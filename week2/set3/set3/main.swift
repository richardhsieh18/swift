//交集、聯集
//let a:Set = [1,2,3,4,5]
//let b:Set = [4,5,6,7]
//
//let c = a.intersection(b)
//
//print(c)
//
//print(a.symmetricDifference(b))
//
//print(a.union(b).sorted())
//
//print(a.subtracting(b))

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

var h = houseAnimals.isSubset(of: farmAnimals)

var f = farmAnimals.isSuperset(of: houseAnimals)

var c = cityAnimals.isDisjoint(with: farmAnimals)

print(h)

print(f)

print(c)
