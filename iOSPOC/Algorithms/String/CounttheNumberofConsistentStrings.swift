//
//  CounttheNumberofConsistentStrings.swift
//  iOSPOC
//
//  Created by Rahul Goel on 27/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/count-the-number-of-consistent-strings/

func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    var count = 0, found = false
    for word in words{
        found = true
        for c in word{
            if !allowed.contains(c){
                found = false
                break
            }
        }
        if found{
            count += 1
        }
    }
    return count
}
