import Foundation

/*
func love10()->Void{
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
    print("I Love You")
}

love10()
love10()
 */
/*

func love_times(times:Int) -> Void {
    for i in 1...times{
        print("I Love you\(i)次")
    }
}

func act_times(thisParameterStandForTheTimesYouAct times:Int, theActionYouTake act:String) -> Void {
    for i in 1...times{
        print("I \(act) you,\(i)次")
    }
}

func act_times_am_pm(thisParameterStandForTheTimesYouAct times:Int, theActionYouTake act:String, isAmOrPm isAfternoon:Bool) -> Void {
    if isAfternoon {
        print("Good Afternoon")
    }else{
        print("Good Morning")
    }
    for i in 1...times{
        print("I \(act) you,\(i)次")
    }
}

love_times(times:11)
act_times(thisParameterStandForTheTimesYouAct: 10, theActionYouTake: "Bite")

var date:Date
date = Date()
var date_format:DateFormatter
date_format = DateFormatter()
date_format.dateFormat = "HH"
let result:String = date_format.string(from: date)
let h = Int(result)!


if h > 12 {
    act_times_am_pm(thisParameterStandForTheTimesYouAct: 5, theActionYouTake: "Kick", isAmOrPm: true)
}else{
    act_times_am_pm(thisParameterStandForTheTimesYouAct: 5, theActionYouTake: "Kick", isAmOrPm: false)
}

print(date)
print(h)

*/

//DateFormatter
let date = NSDate()
var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "hh:mm:ss MM-dd-yyyy"
var dateString = dateFormatter.string(from: date as Date)
print(dateString)
