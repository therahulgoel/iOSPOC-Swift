//
//  LengthofLastWord.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/length-of-last-word/
func lengthOfLastWord(_ s: String) -> Int {
    var length:Int = 0
    let S = Array(s)
    let SLength = S.count
    var index = SLength - 1
    
    while index >= 0 {
        if S[index] != " "{
            length += 1
        }else{
            if length != 0 {
                break
            }
        }
        index -= 1
    }
    return length
}
