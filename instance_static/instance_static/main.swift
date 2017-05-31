
class test{
    var instance_value:Int! //這種property就是Instance Variables ---> 就是平常的property
    
    static var class_value:Int! //這種property就是Static Variables ---> 它因為static的修飾，編譯器會直接為它建立記憶體空間
}

//print(test.instance_value)  //無法call，因為實體尚未建立

var body = test()

body.instance_value = 45

print(body.instance_value)

var body2 = test()

body2.instance_value = 444

print(body2.instance_value)


/////static Variables 不必透過實體的建立就可以直接以class取用

test.class_value = 898898989
print(test.class_value)

