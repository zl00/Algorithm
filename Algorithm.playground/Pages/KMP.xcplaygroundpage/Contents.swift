//: [Previous](@previous)

import Foundation

/*
 1. text: 原文
 2. pattern: 搜索字符串
 */

/*
 功能: 计算搜索子串中 prefix与suffix匹配最大长度, e.g. "ABCBCDABC",结果是3.
 逻辑: 当前字符的最大匹配长度依赖前一个字符相应值
 */
func calculateNextArray(_ pattern: String) -> [Int] {
    var prefix_index = 0, suffix_index = 1
    
    var previousValue = 0
    var next: [Int] = [0]
    
    repeat {
        let prefixChar = (pattern as NSString).character(at: prefix_index)
        let suffixChar = (pattern as NSString).character(at: suffix_index)
        
        switch (prefixChar == suffixChar, prefix_index == 0) {
        case (true, _): // 匹配
            previousValue += 1
            next.append(previousValue)
            prefix_index += 1
            suffix_index += 1
            
        case (false, true): // 第一个字母不匹配
            previousValue = 0
            next.append(0)
            prefix_index = 0
            suffix_index += 1
            
        case (false, false):
            previousValue = 0
            prefix_index = 0
        }
    } while (suffix_index < pattern.count)
    
    return next
}

calculateNextArray("ABCBCDABCAF")
