//optional value
//var x:Int?
//x = 123
//print(x!)


var x:Int?

x = 123

print(x! + 2)


var xx:String
xx = readLine()!

var yy:Int
yy = Int(xx)!

print("============if let 臨時檢核常數 = 有可能出錯的值(通常就是Optional Value){}=====================")


if let x = Int(xx){ ///因為Int(xx)這種轉型有可能出錯而沒有值可以交出去!(使用者輸入一個不能轉整數的字串)
                    ///if let aaa = 某Optional Value  ....語法的作用方式是: 幫你的Optional Value剝殼(加!), 如果能成功得到一個合法的值，那麼這個值就指定給let aaa常數
                    ///然後結果判定為true進入{}中去執行(我們可以在{}中作一些一切都正常的工作)
}else{  //幫你的Optional Value 剝殼的動作失敗，表示這個賦值的動作失敗，系統會hold住不讓它當掉!但是判定為false
        //如果你也想在失敗實作一些(補救)，就可以加else
}
