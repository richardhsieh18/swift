/*
class student{
    var studname: String
    var mark: Int
    var mark2: Int

    init(){
        self.studname = ""
        self.mark = 100
        self.mark2 = 200
    }
}
 */

class MarksStruct {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

class studentMarks {
    var mark1 = 300
    var mark2 = 400
    var mark3 = 900
}
let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")
