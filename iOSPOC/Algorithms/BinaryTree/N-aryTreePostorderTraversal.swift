//
//  N-aryTreePostorderTraversal.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 27/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/n-ary-tree-postorder-traversal/

func postorder(_ root: Node?) -> [Int] {
    var postOrder = [Int]()
    postorderHelper(&postOrder, root)
    return postOrder
}

func postorderHelper(_ postOrder:inout [Int], _ rt:Node?){
    if let rt = rt{
        for child in rt.children{
            postorderHelper(&postOrder, child)
        }
        postOrder.append(rt.val)
    }else{
        return
    }
}
