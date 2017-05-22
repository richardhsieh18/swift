/*
var namesOfIntegers = [Int:String]()

namesOfIntegers = [:]

print(namesOfIntegers.count)

namesOfIntegers = [3:"TTT", 7:"十", 8:"mobile"]

print(namesOfIntegers.count)
print(namesOfIntegers)


print("\n===========================================\n")

var airports:[String:String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

airports["LHR"] = "London"
print(airports)

print("\n============重要的 if let xxxx = 有可能會出錯的值{}語法==============\n")

airports.updateValue("阿里山", forKey: "DUB")
print(airports)
if let oldValue = airports.updateValue("都伯林", forKey: "DUB"){
    print("The old value for DUB was \(oldValue)")
}

print("\n===========================================\n")

*/


var airports = ["XUZ" : "Toronto Pearson", "DUB": "Dublin"]

for (airportCode, airportName) in airports{
    print("\(airportCode): \(airportName)")
}

//print(airports.keys)

for airportCode in airports.keys{
    print("Airport code:\(airportCode)")
}

for airportName in airports.values{
    print("Airport name:\(airportName)")
}


let airportCodes = [String](airports.keys)
print(airportCodes)

let airportNames = [String](airports.values)
print(airportNames)


