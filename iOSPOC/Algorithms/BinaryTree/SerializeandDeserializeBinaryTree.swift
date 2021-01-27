//
//  SerializeandDeserializeBinaryTree.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 27/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

class Codec_ {
    func serialize(_ root: btNode?) -> String {
        var str = ""
        if let rt = root{
            var parentQueue = [btNode?]()
            parentQueue.append(rt) //Root of Binary Tree
            while !parentQueue.isEmpty {
                if let first = parentQueue.removeFirst(){
                    str += "\(first.val)"
                    parentQueue.append(rt.prev)
                    parentQueue.append(rt.next)
                }else{ //For nil Nodes at any level
                    str += "#"
                }
            }
        }
        return str
    }
    
    func deserialize(_ data: String) -> btNode? {
        let levelOrder = data.components(separatedBy: " ")
        
        return nil
    }
}
