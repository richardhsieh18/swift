enum TEST{
    case AAA
    case BBB
    
    func test(){
        print("\(TEST.AAA) === \(TEST.BBB)")
    }
}

var t:TEST = TEST.BBB
print(t.hashValue)

t.test()