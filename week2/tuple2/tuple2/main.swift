let arr:[String] = ["Hello", "ok", "Qoo"]
let arr_enumerate:EnumeratedSequence<[String]>

arr_enumerate = arr.enumerated()

print(arr_enumerate)

for i in arr_enumerate{
    print(i)
}
