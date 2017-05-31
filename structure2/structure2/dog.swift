import AVFoundation

struct dog {
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
    
    func wan() {
        print("狗叫聲")
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
            return
        }
        //沒錯就執行到此
        sound!.play()
        
        sleep(3)
        
    }
}


