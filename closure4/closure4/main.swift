var abc = ["hello", "teacher", "sea", "day"]
/*
abc.sort(by:
    {
        (a:String,b:String)
        in
        return a < b
    }
)
*/

/*//尾隨閉包(tailing closure)第一型
abc.sort(){
    (a:String,b:String)
    in
    return a < b
}*/

/*//尾隨閉包(tailing closure)第二型，參數型態省略
abc.sort(){
    (a,b)
    in
    return a < b
}*/

/*//尾隨閉包(tailing closure)第三型，參數型態省略，且直接回傳前一個參數--> $0與後一個參數-->$1的大小關係
abc.sort(){
     return $0 < $1
}*/

//尾隨閉包(tailing closure)第四型，大省
abc.sort(by: <)

print(abc)
