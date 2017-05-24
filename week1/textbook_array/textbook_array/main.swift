//var someInts = [Int]()
//print("someInts is of type [Int] with \(someInts.count) items.")
//
//someInts.append(3)
//
//print("someInts is of type [Int] with \(someInts.count) items.")
//
//for i in 0 ... someInts.count - 1{
//print(someInts[i])
//}
//
//someInts = []
//
//print("someInts is of type [Int] with \(someInts.count) items.")

////陣列參數及陣列相加
//var threeDoubles = Array(repeating:0.0, count:3)
//
//print(threeDoubles)
//
//var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
//// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]
//
//var sixDoubles = threeDoubles + anotherThreeDoubles
//// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
//
//print(sixDoubles)

//var shoppingList: [String] = ["Eggs", "Milk"]
//// shoppingList has been initialized with two initial items
//
//shoppingList.append("Flour")
//
//shoppingList += ["Baking Powder"]
//// shoppingList now contains 4 items
//shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
//// shoppingList now contains 7 items
//
//print(shoppingList)
//
//shoppingList[4...6] = ["Bananas", "Apples"]
//print(shoppingList)
//
//shoppingList.insert("OOOOOO", at: 0)
//print(shoppingList)

var shoppingList = ["Chocolate Spread", "Cheese", "Butter"]

//for xxx in shoppingList {
//    print(xxx)
//}

var new_container:EnumeratedSequence<[String]>
new_container = shoppingList.enumerated()

for i in shoppingList
{
    print("\(i)")
}

for (i, c) in new_container
{
    print("No.\(i + 1)的東西是\(c)")
}
