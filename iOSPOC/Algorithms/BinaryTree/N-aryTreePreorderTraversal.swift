//
//  N-aryTreePreorderTraversal.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/n-ary-tree-preorder-traversal/

public class Node {
  public var val: Int
  public var children: [Node]
  public init(_ val: Int) {
      self.val = val
      self.children = []
  }
}

func preorder(_ root: Node?) -> [Int] {
    var preOrder = [Int]()
    preorderHelper(&preOrder, root)
    return preOrder
}

func preorderHelper(_ preOrder:inout [Int], _ rt:Node?){
    if let rt = rt{
        preOrder.append(rt.val)
        for child in rt.children{
            preorderHelper(&preOrder, child)
        }
    }else{
        return
    }
}
