var students:[Int16]

//students = [99,86,65,45,32]

students = [Int16]()
students.append(99)
students.append(86)
students.append(65)
students.append(45)
students.append(32)
students.append(100)


print(students)

//print("第三位考了\(students[5])")

var sum:Int16 = 0
var ave:Int16 = 0

for i in 0...5 {
    sum = students[i] + sum
    ave = sum / Int16(students.count)
    print("第\(i)位考了\(students[i])分")
 }

print("總分\(sum)")
print("平均值\(ave)")
