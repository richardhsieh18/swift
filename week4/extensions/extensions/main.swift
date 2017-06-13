class Good{
    func nice(){
        print("it is nice")
    }
}

var x:Good = Good()

x.nice()

class Better:Good{
    func niceer(){
        print("dfjodias")
    }
}

var b:Better = Better()

b.niceer()

extension Better{
    func ttt(){
        print("888888")
    }
}

b.ttt()

extension String{
    func i_m(){
        print("44444")
    }
}


var qqq:String = "fdsahfdhfoidsuafh"

qqq.i_m()
