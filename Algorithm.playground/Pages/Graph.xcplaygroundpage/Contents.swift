//: [Previous](@previous)

import Foundation

enum GraphCategory {
    case undirected
    case directed
}

class GraphArray {
    let maxLen = 10
    let category = GraphCategory.undirected
    
    var vexNum: Int = 0
    var arcNum: Int = 0
    
    var vexs: [Int] = []
    var arcs: [[Int]] = []
    
    init() {
        var index = 0
        repeat {
            vexs.append(0)
            index += 1
            
            var tmpIndex = 0
            var row: [Int] = []
            repeat {
                row.append(0)
                tmpIndex += 1
            } while(tmpIndex < maxLen)
            arcs.append(row)
            
        } while (index < maxLen)
    }
}
