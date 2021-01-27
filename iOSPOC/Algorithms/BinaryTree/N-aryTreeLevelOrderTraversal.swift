//
//  N-aryTreeLevelOrderTraversal.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 27/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/n-ary-tree-level-order-traversal/

func levelOrder(_ root: Node?) -> [[Int]] {
    if let rt = root{
        var levelOdr = [[Int]]()
        
        var ParentQueue:[Node] = [Node]()
        ParentQueue.append(rt) //Root of Binary Tree
        
        var childQueue:[Node] = [Node]()
        var tmp = [Int]() //To store nodes of one level
        while !ParentQueue.isEmpty {
            let firstEle = ParentQueue.removeFirst()
            tmp.append(firstEle.val)
            childQueue.append(contentsOf: firstEle.children)
            if ParentQueue.isEmpty{
                levelOdr.append(tmp)
                tmp.removeAll()
                ParentQueue.append(contentsOf: childQueue)
                childQueue.removeAll()
            }
        }
        return levelOdr
    }else{
        return []
    }
}

