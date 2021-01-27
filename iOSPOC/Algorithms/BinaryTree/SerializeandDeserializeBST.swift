//
//  SerializeandDeserializeBST.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/serialize-and-deserialize-bst/

class Codec {
    // Encodes a tree to a single string.
    func serialize(_ root: btNode?) -> String {
        var str = ""
        serializeHelper(root, &str)
        return str
    }
    func serializeHelper(_ rt:btNode?, _ str:inout String){
        if rt == nil{
            return
        }else{
            str += "\(rt!.val) "
            serializeHelper(rt?.prev, &str)
            serializeHelper(rt?.next, &str)
        }
    }
    // Decodes your encoded data to tree.
    func deserialize(_ data: String) -> btNode? {
        let values = data.components(separatedBy: " ")
        let preOrder = values.compactMap { (ele) -> Int? in
            Int(ele)
        }
        var index = 0
        return bstFromPreorder(preOrder, min: Int.min, max: Int.max, index: &index)
    }
    func bstFromPreorder(_ preorder:[Int], min:Int, max:Int, index:inout Int )->btNode?{
        if index >= preorder.count{
            return nil
        }
        let value = preorder[index]
        if value > min && value < max{
            let root = btNode(value:value, pr: nil, nx: nil)
            index = index + 1
            root.prev = bstFromPreorder(preorder, min: min, max: value, index: &index)
            root.next = bstFromPreorder(preorder, min: value, max: max, index: &index)
            return root
        }
        else{
            return nil
        }
    }
}
