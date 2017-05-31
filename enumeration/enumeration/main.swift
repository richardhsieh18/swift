/*
enum WEEK{
    case SUNDAY
    case MONDAY
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case SATURDAY
}

var day:WEEK

day = WEEK.SUNDAY
day =.SUNDAY

 */
/*
enum names {
    case Swift
    case Closures
}
var lang = names.Closures
lang = .Closures
switch lang {
case .Swift:
    print("Welcome to Swift")
case .Closures:
    print("Welcome to Closures")
}


enum Climate :Int{
    case India = 100
    case America = 222
    case Africa = 444
    case Australia = 555
}

var season = Climate.America
season = .America
switch season {
case .India:
    print("Climate is Hot")
case .America:
    print("Climate is Cold")
case .Africa:
    print("Climate is Moderate")
case .Australia:
    print("Climate is Rainy")
}
print(season.hashValue)
print(season.rawValue)
*/
/*
enum Climate :String{
    case India = "South Asia"
    case America = "South Ame"
    case Africa = "Black Con"
    case Australia = "Kanguroo"
}

var season = Climate.America
season = .America
switch season {
case .India:
    print("Climate is Hot")
case .America:
    print("Climate is Cold")
case .Africa:
    print("Climate is Moderate")
case .Australia:
    print("Climate is Rainy")
}

print(season.rawValue)
print(season.hashValue)
 
 */

/*
enum Student {
    case Name(String)
    case Mark(Int,Int,Int)
}
var studDetails = Student.Name("Swift")
var studMarks = Student.Mark(98,97,95)

//在swift的switch語法中
//case後面的"比對值"可以(與c語言比較)有更豐富的動作

//現在用來比對的值是enum Student的Mark
switch studMarks {                                       // (studMark是enum Student的Mark )
case .Name(let studName):                          //這個case用不到
    print("Student name is: \(studName).")    //也不會執行
case .Mark(let Mark1, let Mark2, let Mark3):  //這個case是enum Student的Mark，所以對上這個case
                                                                        //所以case中的程式碼會被執行!等等!Mark後面跟著一個小括號!
                                                                        //這就是swift的switch語法比較豐富的地方了(C語言"值"歸"值"，"處理"歸"處理"，分的比較清楚)
                                                                        //在swift語法中，常常"處理"可以當"值"用(後面會有"值"!)
                                                                        // --> (let Mark1, let Mark2, let Mark3)跟在.Mark後面的意思是:
                                                                        //宣告一個雜堆Tuplex裡面的三個雜堆值登用常數型態，分別叫做Mark1,Mark2,Mark3
                                                                        //拿這三個去裝，對上這個case的 .Mark中的雜堆裡的三個值
    print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
default:
    print("Nothing")
}
*/

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")
