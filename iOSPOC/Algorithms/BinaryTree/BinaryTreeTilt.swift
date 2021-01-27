//
//  BinaryTreeTilt.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 15/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/binary-tree-tilt/

func findTilt(_ root: btNode?) -> Int {
    var diff:Int = 0
    findTiltInternal(root, &diff)
    return diff
}

func findTiltInternal(_ root: btNode?, _ diff: inout Int)->Int{
    if root == nil{
        return 0
    }else{
        var leftV:Int = 0
        var rightV:Int = 0
        if let left = root?.prev{
            leftV = left.val + findTiltInternal(left, &diff)
        }
        if let right = root?.next{
            rightV = right.val + findTiltInternal(right, &diff)
        }
        diff = diff + abs(leftV - rightV)
        return leftV + rightV
    }
}
