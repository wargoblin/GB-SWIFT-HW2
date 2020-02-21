import Foundation

var array = [23,361,2,66,132,361,2,66,132,21]

var string = "Hello, Swift!"
var num1 = 6.8
var num2 = 6.9

if !array.isEmpty && num1 == num2 {
    print("Условие истинно")
} else if array[0] == 1, array[1] == 2 {
    print("Первый элемент массива равен 1")
} else if string == "Hello, Swift" {
    print("Строка")
} else if (num2 - 10) < 0 {
    num2 *= num1
} else {
    print("Условие ложно")
}

var num3 = (num1 * num2 < 20) ? 10 : 0

// tuple
typealias CrazyType = (string: String, Int, Bool, Double, Optional<Int>, float: Float)
var tuple: CrazyType = (string: "String", 67, true, 123.123, Optional<Int>(nil), float: Float(56))
tuple.1 = 200
tuple.string = "NewString"

switch (num1, string) {
case (10, "Hello"):
    num1 += 1
case (5...10, "String"):
    num2 -= num1
case (var num, "Hello, Swift!") where num > 10:
    num += 10
    print("Ненужное число", num)
    fallthrough
case (6.8, _):
    print("Точное попадание")
    fallthrough
default:
    print("Ни одно из значений не совпало.")
}

//for num in array {
//    print(num)
//}
//for _ in 1...10 {
//    print("Repeat")
//}

//for i in stride(from: 1, to: 11, by: 2) {
//    print(i)
//}
//
//for i in stride(from: 1, through: 11, by: 5) {
//    print(i)
//}

for (index, num) in array.enumerated() {
    guard index > 2 else { continue }
    print(index, num)
}

while true {
    guard array.count < 12 else { break }
    array.append(array.last! * 2)
}

repeat {
    array.append(array.last! * 2)
} while array.count < 10


pow(3, 3)
sqrt(16)

func mult(_ x: Int = 0, _ y: Int = 0) -> Int {
    x * y
}

func createArray(elements: inout [Int]) {
    elements.removeAll(where: { $0 > 10 })
}

mult()
mult(12, 4)
mult(66,23423)
var arr = [1,5,3,6,73,4,3,6,4456,3,434,543,4]
var newArray = createArray(elements: &arr)
print(arr)
// private fileprivate internal public open


















// Практическое задание урока №1

// 1.
let a = 1.0
let b = 2.0
let c = 1.0

let x1 = (-b - sqrt(pow(b, 2) - 4*a*c)) / 2
let x2 = (-b + sqrt(pow(b, 2) - 4*a*c)) / 2
print(x1, x2)

// 2.
let ab = 5.0
let ac = 4.0

let s = ab * ac / 2
let bc = sqrt(pow(ab, 2) + pow(ac, 2))
let p = ab + ac + bc
print(s, bc, p)

// 3.
let deposite = 10_000.00
let percent = 8.0
let result = deposite * pow(1 + percent / 100, 5)
print(round(result))

