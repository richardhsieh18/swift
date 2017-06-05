class cricket {
    func echo() {
        print("Welcome to Swift Super Class")
    }
}

class tennis: cricket {
    override func echo() {
        print("Welcome to Swift Sub Class")
    }
}

let cricinstance = cricket()
cricinstance.echo()

let tennisinstance = tennis()
tennisinstance.echo()
