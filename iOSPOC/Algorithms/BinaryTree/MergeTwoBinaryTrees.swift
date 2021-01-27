//
//  MergeTwoBinaryTrees.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 27/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/merge-two-binary-trees/

func mergeTrees(_ t1: btNode?, _ t2: btNode?) -> btNode? {
    if t1 == nil && t2 == nil{
        return nil
    }else{
        if let t1Node = t1{
            
        }
        t1?.prev =  mergeTrees(t1?.prev, t2?.prev)
        t2?.next =  mergeTrees(t1?.next, t2?.next)
    }
    return t1
}

