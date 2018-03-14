//: [Previous](@previous)

import Foundation

/**
 算法：分而治之的思想。随机选出一个“支点”，再将数据分成2批。
 复杂度：最差的情况与Bubble的复杂度一样
 */
func quickSort(_ input: [Int]) -> [Int] {
    guard input.count > 1, let pivot = input.first else { return input }
    
    var midian: [Int] = [pivot]
    var left: [Int] = []
    var right: [Int] = []
    
    input.forEach {
        if $0 < pivot { left.append($0) }
        else if $0 > pivot { right.append($0) }
    }
    
    return quickSort(left) + midian + quickSort(right)
}

let input = [54, 26, 93, 17, 77, 31, 44, 55, 20]
print(quickSort(input))
