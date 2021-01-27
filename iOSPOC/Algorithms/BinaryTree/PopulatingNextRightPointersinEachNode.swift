//
//  PopulatingNextRightPointersinEachNode.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/populating-next-right-pointers-in-each-node/

func connect(_ root: btNode?) -> btNode? {
    var parentQueue = [btNode]()
    var childQueue = [btNode]()
    if let root = root {
        parentQueue.append(root)
    }else{
        return root
    }
    var siblingPtr:btNode?
    while !parentQueue.isEmpty {
        let first = parentQueue.removeFirst()
        if let left = first.prev{
            if siblingPtr == nil{
                siblingPtr = left
            }else{
                siblingPtr?.sibling = left
                siblingPtr = siblingPtr?.next
            }
            childQueue.append(left)
        }
        if let right = first.next{
            if siblingPtr == nil{
                siblingPtr = right
            }else{
                siblingPtr?.sibling = right
                siblingPtr = siblingPtr?.sibling
            }
            childQueue.append(right)
        }
        if parentQueue.isEmpty{
            siblingPtr = nil
            parentQueue.append(contentsOf: childQueue)
            childQueue.removeAll()
        }
    }
    return root
}

