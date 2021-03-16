//
//  CheckIfNandItsDoubleExist.swift
//  iOSPOC
//
//  Created by Rahul Goel on 25/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/check-if-n-and-its-double-exist/

func checkIfExist(_ arr: [Int]) -> Bool {
    var map = [Int:Int](), exists = false
    for ele in arr{
        if let _ = map[ele]{
            exists = true
            break
        }else{
            if ele%2 == 0{ //If even store Half of ele
                map[ele/2] = ele/2
            }
            map[2*ele] = 2*ele //store Double of ele
        }
    }
    return exists
}

