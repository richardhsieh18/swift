class StudDetails {
    var mark1: Int;
    var mark2: Int;
    
    init(stm1:Int, results stm2:Int) {
        mark1 = stm1;
        mark2 = stm2;
    }
    
    func echo() {
        print("Mark1:\(mark1), Mark2:\(mark2)")
    }
}

class display : StudDetails {
    init() {
        super.init(stm1: 93, results: 89)
    }
}

let marksobtained = display()
marksobtained.echo()
