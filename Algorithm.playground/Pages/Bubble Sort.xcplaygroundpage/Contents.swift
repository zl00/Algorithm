//: Playground - noun: a place where people can play

import UIKit

/**
 算法：每次遍历把最大的数字排到数组的最后
 复杂度：n*n/2
 */
func bubbleSort(_ input: [Int]) -> [Int] {
    guard input.count > 0 else { return [] }
    
    var array = input
    var end: Int = array.count - 1
    
    while end > 0 {
        var index = 0
        
        while index < end {
            if array[index] > array[index+1] {
                let tmp = array[index+1]
                array[index+1] = array[index]
                array[index] = tmp
            }
            index += 1
        }
        
        end -= 1
    }
    return array
}

let input = [54, 26, 93, 17, 77, 31, 44, 55, 20]
print(bubbleSort(input))

