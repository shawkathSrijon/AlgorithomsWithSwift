import Cocoa

var str = "Hello, playground"


func linearSearch<T: Equatable>(find num: T, from array: [T]) -> Int? {
    for index in 0..<array.count {
        if array[index] == num {
            return index
        }
    }
    return nil
}

var array: [String] = ["2", "5", "7", "10", "20", "100"]

linearSearch(find: "10", from: array)
