extension Int {
    
    func topics(summ: () -> ()) {
        for _ in 0..<self {
            summ()
        }
    }
    
}

4.topics(summ: {
    print("Inside Extensions Block")
})

3.topics(summ: {
    print("Inside Type Casting Block")
})
