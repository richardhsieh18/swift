protocol proxxx {

}

class Living:proxxx{
    func haha(){
        print("living")
    }
}

class Animal:Living{
    override func haha(){
        print("Animal haha")
    }
}

class Human:Animal{
    override func haha(){
        print("Human haha")
    }
}

class Yellow:Human{
    override func haha(){
        print("yellow haha")
    }
}

class White:Human{

}

class Taiwan:Yellow{
    override func haha(){
        print("taiwan haha")
    }
}

class Korean:Yellow{
}

var liv:Living
liv = Living()
liv.haha()
liv = Animal()
liv.haha()
liv = Taiwan()
liv.haha()

var xx:proxxx

xx = Living()
//xx.haha()  因為Class Living 遵循protocol，protocol的協定裡面沒有haha()，所以無法使用method
(xx as! Living).haha()  //使用as!  向下轉型   才可以使用

var tt:Yellow
tt = Yellow()
tt.haha()
//(tt as! Taiwan).haha()   //待釋疑 ，試作失敗
