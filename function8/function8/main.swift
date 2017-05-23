

func sum(a: Int, b: Int) -> Int {
    return a + b
}


var addition: (Int, Int) -> Int = sum


print("Result: \(addition(40, 89))")



func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(addition(a, b))")
}


another(addition: sum, a: 10, b: 20)


func my(choose:Int)->(Int,Int)->Int{
    
  
    
  
    
    var how_to_do:(Int,Int)->Int
    
    switch(choose){
        
    case 1:
        
        how_to_do = add
        
     
        
    case 2:
        
        how_to_do = sub
        
        
        
    case 3:
        
        how_to_do = mul
        
        
        
    default:
        
        how_to_do = other
        
        
        
    }

    

    return how_to_do
    
}


print("Give me a choose?")

var choose = Int(readLine()!)!

/*
var xxx:(Int,Int)->Int

xxx = my(choose: choose)

var result = xxx(3,8)

print(result)
 */

print( my(choose: choose)(3,8))







