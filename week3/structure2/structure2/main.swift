import AVFoundation

struct cat {
    var number:Int = 0
    var kind:String = ""
    var cost:Double = 0.0
    
    func report_price(){
        print("\(cost * 5)")
    }
    func report_price_level(level_is_vip_normal_stranger level:Int) -> Double {
        var temp:Double
        switch level {
        case 0:
            temp = cost * 5 * 0.8
        case 1:
            temp = cost * 5 * 0.85
        case 2:
            temp = cost * 5 * 0.9
        default:
            temp = cost * 5 * 0.99
        }
        return temp
    }
    
    func meow() {
        print("meowww")
        var sound:AVAudioPlayer?
        var sound_place:URL
        sound_place = URL(string: "/Users/chang/Desktop/swift/structure2/meow.mp3")!
        do{
            sound = try AVAudioPlayer(contentsOf: sound_place)
        }catch{
            //要是出錯!系統會hold你的程式(不讓它當掉!!)同時將錯誤的種種資訊包裝製作成一個錯誤物件 --> error
            //再接著把程式導引到catch這個區塊!!!
            //在發生錯誤時作補救措施!就寫在這
            print("出錯，錯誤是:\(error)")
            //return //不帶回傳值就是停止執行
        }
        //沒錯就執行到此
        //sound!.play()
        if let s = sound {
            s.play()
        }else{
            print("沒檔案，執行也沒用")
        }
        
        sleep(3)
    
    }
    
    func meow(times: Int) {
        for _ in 1...times{
            print("meow")
        }
    }
}


print("=======XXX寵物店===============")
print("本店新進一隻貓")

var c1:cat

c1 = cat()

print("...內部作業...輸入該貓的基本資料")

c1.number = 1
c1.kind = "PERSIAN"
c1.cost = 2.3

print("這隻貓是\(c1.kind)貓，編號\(c1.number)，報價..")
c1.report_price()

print("客人要賣多少")
print("輸入客人等級")

var level_customer:Int
level_customer = Int(readLine()!)!
var sale_price = c1.report_price_level(level_is_vip_normal_stranger: level_customer)

print("客人是\(level_customer)級的所以要賣\(sale_price)")

print("摸一下貓頭")
c1.meow()
c1.meow(times: 3)

print("狗的")
print("=======XXX寵物店===============")
print("本店新進一隻狗")

var d1:dog

d1 = dog()

print("...內部作業...輸入該貓的基本資料")

d1.number = 1
d1.kind = "PERSIAN"
d1.cost = 20.99

print("這隻貓是\(d1.kind)狗，編號\(d1.number)，報價..")
d1.report_price()

print("客人要賣多少")
print("輸入客人等級")

var sale_price_dog = d1.report_price_level(level_is_vip_normal_stranger: level_customer)

print("客人是\(level_customer)級的所以要賣\(sale_price_dog)")

print("摸一下狗頭")
d1.wan()
