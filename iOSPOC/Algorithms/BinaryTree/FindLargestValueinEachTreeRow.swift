//
//  FindLargestValueinEachTreeRow.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 02/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/find-largest-value-in-each-tree-row/

func largestValues(_ root: btNode?) -> [Int] {
    var output = [Int]()
    var parentQueue = [btNode]()
    var childQueue = [btNode]()
    if let root = root {
        parentQueue.append(root)
        output.append(root.val)
    }else{
        return []
    }
    var max = Int.min
    while !parentQueue.isEmpty {
        let first = parentQueue.removeFirst()
        if let left = first.prev{
            if max < left.val {
                max = left.val
            }
            childQueue.append(left)
        }
        if let right = first.next{
            if max < right.val {
                max = right.val
            }
            childQueue.append(right)
        }
        if parentQueue.isEmpty{
            if !childQueue.isEmpty{
               output.append(max)
            }
            max = Int.min
            parentQueue.append(contentsOf: childQueue)
            childQueue.removeAll()
        }
    }
    return output
}

