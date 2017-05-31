/*
class sample {
    var no = number() // `var` declaration is required.
}

class number {
    var name = "Swift"
}

var firstsample = sample()

//第一次看到"層次"
//類別裡的屬性可以是另一個類別型態的屬性
//如此一來!我們就需要以"層次"的方式去存取該屬性

print(firstsample.no.name)
*/

class sample {
    lazy var no = number() // `var` declaration is required.

    lazy var abc:Int = 123
}

class number {
    var name = "Swift"
    init(){
        print("有配置記憶體")
    }
}

var firstsample = sample()

print("aaaaaaaaaa")
//如果沒呼叫下面則不會初始化number()
print(firstsample.no.name)
print(firstsample.abc)
