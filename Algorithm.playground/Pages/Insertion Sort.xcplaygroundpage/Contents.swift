//: [Previous](@previous)

import Foundation

/**
 算法：
 复杂度：
 */
func insertionSort(_ input: [Int]) -> [Int] {
    guard input.count > 0 else { return [] }
    
    var result = [Int]()
    var targetPosition = 0
    
    while targetPosition < input.count {
        var index: Int = 0
        
        for item in result {
            if item > input[targetPosition] { break }
            index += 1
        }
        
        result.insert(input[targetPosition], at: index)
        
        targetPosition += 1
    }
    
    return result
}

let input = [54, 26, 93, 17, 77, 31, 44, 55, 20]
print(insertionSort(input))
