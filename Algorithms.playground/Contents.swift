import Foundation

let numbers: [Int] = [10, 3, 5, 4, 34, 23, 2, 55, 42, 23, 43, 3]
let someStr = ["b", "d", "f", "a", "c", "i", "g", "e", "s", "l", "k"]

//Buble sort

//func bubleSort<T: Comparable>(_ arr: [T]) -> [T] {
//    guard arr.count > 1 else { return arr }
//
//    var newArray = [T]()
//
//    for i in 0..<arr.count {
//        let lastIndex = (arr.count - 1) - i
//
//        for j in 0..<lastIndex {
//            let current = arr[j]
//            let nextIndex = arr[j + 1]
//
//            if current < nextIndex {
//                newArray[j] = nextIndex
//                newArray[j + 1] = current
//            }
//        }
//    }
//    return newArray
//}
//
//let result = bubleSort(numbers)
//print(result)


//Quick sort

func quick<T: Comparable>(_ arr: [T]) -> [T] {
    guard arr.count > 1 else { return arr }

    let middleIndex = arr[arr.count / 2]

    let startElement = arr.filter { $0 < middleIndex }
    let middleElement = arr.filter { $0 == middleIndex }
    let lastElement = arr.filter { $0 > middleIndex }

    return quick(startElement) + middleElement + quick(lastElement)
}

let result = quick(someStr)
print(result)
