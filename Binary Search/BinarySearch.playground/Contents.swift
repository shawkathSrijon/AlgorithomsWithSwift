import Foundation

func binarySearch(search number: Int, from array: [Int]) -> Int? {
    var start: Int = 0
    var end: Int = array.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        if array[mid] == number {
            return mid
        } else if array[mid] >= number {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return nil
}

var array: [Int] = [2, 4, 5, 6, 10, 12, 20, 25, 26, 30, 31, 32, 34, 38, 40, 41]

var numberAtIndex: Int? = binarySearch(search: 23, from: array)

print(numberAtIndex ?? -1)
