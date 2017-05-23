
 func vari<N>(members: N...) {
    for i in members {
        print(i)
    }
}
vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift", "Enumerations", "Closures")



func vari_type<T>(parameter:T)->Void{
    print(parameter)
}
vari_type(parameter: 123)
vari_type(parameter: 3.38)

