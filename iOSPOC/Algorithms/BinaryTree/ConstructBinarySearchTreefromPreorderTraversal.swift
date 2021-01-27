//
//  ConstructBinarySearchTreefromPreorderTraversal.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/

//Solution 1 : Time O(n)
func bstFromPreorder(_ preorder: [Int]) -> btNode? {
    if preorder.isEmpty{ //If Empty
        return nil
    }
    var index = 0
    return bstFromPreorderHelper(preorder, min: Int.min, max: Int.max, index: &index)
}

func bstFromPreorderHelper(_ preorder:[Int], min:Int, max:Int, index:inout Int )->btNode?{
    if index >= preorder.count{
        return nil
    }
    let value = preorder[index]
    if value > min && value < max{
        let root = btNode(value:value, pr: nil, nx: nil)
        index = index + 1
        root.prev = bstFromPreorderHelper(preorder, min: min, max: value, index: &index)
        root.next = bstFromPreorderHelper(preorder, min: value, max: max, index: &index)
        return root
    }
    else{
        return nil
    }
}

//Solution 2 : O(n^2)
func bstFromPreorder_(_ preorder: [Int]) -> btNode? {
    if preorder.isEmpty{ //If Empty
        return nil
    }
    let root = btNode(value: preorder[0], pr: nil, nx: nil)
    for ele in preorder{
        //Insert element every time from root of Bianary Tree
        _ = bstFromPreorderHelper(root, ele)
    }
    return root
}

func bstFromPreorderHelper(_ rt:btNode?, _ value:Int)->btNode?{
    if rt == nil{ //Insert New Node
        return btNode(value:value, pr: nil, nx: nil)
    }else{
        if value < rt!.val {
            rt?.prev = bstFromPreorderHelper(rt?.prev, value)
        }
        if value > rt!.val{
            rt?.next = bstFromPreorderHelper(rt?.next, value)
        }
        return rt
    }
}

    
