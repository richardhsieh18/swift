
func ls(array: [Int]) -> (large: Int, small: Int) {
    var lar = array[0]
    var sma = array[0]
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        }else if i > lar {
            lar = i
        }
    }
    return (lar, sma)
}
let num = ls(array:[40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")
 

func biggest(array:[Int])->Int{
    var standard:Int = array[0]
    //var record:Int = 0
    for temp in array {
        if  temp > standard{
            standard = temp
        }
    }
    return standard
}
func smallest(array:[Int])->Int{
    var standard:Int = array[0]
    //var record:Int = 0
    for temp in array {
        if  temp < standard{
            standard = temp
        }
    }
    return standard
}

func big_small(array:[Int])->(big:Int, small:Int){
    var standard:(big:Int, small:Int) = (array[0],array[0])
    //var record:Int = 0
    for temp in array {
        if  temp > standard.big{
            standard.big = temp
        }
        if temp < standard.small{
            standard.small = temp
        }
    }
    return standard
}

let test = [1,2,5,88,-9,61,4]
//print(biggest(array: test))
//print(smallest(array: test))
print(big_small(array: test))
