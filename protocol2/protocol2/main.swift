protocol daysofaweek {
    mutating func echo()
}

enum days: daysofaweek {
    case sun, mon, tue, wed, thurs, fri, sat
    mutating func echo() {
        switch self {
        case .sun:
            //self = .sun
            print("Sunday")
        case .mon:
            //self = .mon
            print("Monday")
        case .tue:
            //self = .tue
            print("Tuesday")
        case .wed:
            //self = .wed
            print("Wednesday")
        case .thurs:
            //self = .thurs
            print("Thursday")
        case .fri:
            //self = .fri
            print("Friday")
        case .sat:
            //self = .sat
            print("Saturday")
        }
    }
}

var res = days.sun
res.echo()
