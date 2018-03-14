//: [Previous](@previous)

import Foundation

/**
 算法：与bubble思路一致，只交换一次。
 复杂度：n*n/2
 */
func selectionSort(_ input: [Int]) -> [Int] {
    guard input.count > 0 else { return [] }
    
    var array = input
    var position: Int = array.count - 1
    
    while position > 0 {
        var targetIndex: Int = 0
        
        var index = 0
        while index <= position {
            if array[targetIndex] < array[index]  {
                targetIndex = index
            }
            index += 1
        }
        
        let tmp = array[position]
        array[position] = array[targetIndex]
        array[targetIndex] = tmp
        
        position -= 1
    }
    
    return array
}

let input = [54, 26, 93, 17, 77, 31, 44, 55, 20]
print(selectionSort(input))
