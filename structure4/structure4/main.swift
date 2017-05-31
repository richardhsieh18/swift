struct MarksStruct {
    var mark: Int
    
    init(mark: Int) {
        self.mark = mark
    }
}
var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct // aStruct and bStruct are two structs with the same value!  // 複製時為建立一個複本，非參考值
bStruct.mark = 97
print(aStruct.mark) // 98
print(bStruct.mark) // 97
