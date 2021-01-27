//
//  UnivaluedBinaryTree.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 02/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/univalued-binary-tree/

func isUnivalTree(_ root: btNode?) -> Bool {
    var isuniValued = true
    if let root = root{
        let value = root.val
        var queue = [btNode]()
        queue.append(root)
        while !queue.isEmpty {
            let first = queue.removeFirst()
            if let left = first.prev{
                if left.val != value{
                    isuniValued = false
                    break
                }
                queue.append(left)
            }
            if let right = first.next{
                if right.val != value{
                    isuniValued = false
                    break
                }
                queue.append(right)
            }
        }
    }else{
        isuniValued = false
    }
    return isuniValued
}

