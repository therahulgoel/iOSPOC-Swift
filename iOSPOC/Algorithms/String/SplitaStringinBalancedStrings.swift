//
//  SplitaStringinBalancedStrings.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/split-a-string-in-balanced-strings/

func balancedStringSplit(_ s: String) -> Int {
    var count = 0, rS = 0, lS = 0, i = 0
    let length = s.count, sStr = Array(s)
    while i < length{
        if sStr[i] == Character("L"){
            lS += 1
        }else{
            rS += 1
        }
        
        if lS == rS{
            count += 1
            lS = 0
            rS = 0
        }
        i += 1
    }
    return count
}

