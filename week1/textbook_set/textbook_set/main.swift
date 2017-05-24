//var letters:Set<Character>
//letters = Set<Character>()

//
//
//var letters = Set<Character>()
//print("letters is of type Set<Character> with \(letters.count) items.")
//
//letters.insert("a")
//print("letters is of type Set<Character> with \(letters.count) items.")
//
//
//letters = []
//print("letters is of type Set<Character> with \(letters.count) items.")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

favoriteGenres.insert("Jazz")

print(favoriteGenres)

favoriteGenres.remove("Rock") //先移除之後無法移除，會讓後面false

if let removeGenre = favoriteGenres.remove("Rock"){
    print("\(removeGenre)? Qoo")
}else{
    print("沒東西可以移除了")
}

if let x = Int(readLine()!){
    print("你輸入了\(x)")
}else{
    print("你不能亂輸入")
}
