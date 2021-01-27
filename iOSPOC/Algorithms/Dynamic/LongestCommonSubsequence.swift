//
//  File.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 17/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/longest-common-subsequence/

func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    var memo:[String:Int] = [String:Int]()
    return longestCommonSubsequenceHelper(Array(text1), Array(text2), text1.count - 1, text2.count - 1, &memo)
}

func longestCommonSubsequenceHelper(_ text1: [Character], _ text2: [Character], _ m:Int, _ n:Int, _ memo: inout [String:Int])->Int{
    if m < 0 || n < 0 {
        return 0
    }else{
        if let value = memo["\(m)\(n)"]{
            return value
        }
        if text1[m] == text2[n]{
            memo["\(m)_\(n)"] = 1 + longestCommonSubsequenceHelper(text1, text2, m - 1, n - 1, &memo)
        }else{
            memo["\(m)_\(n)"] =  max(longestCommonSubsequenceHelper(text1, text2, m - 1, n, &memo), longestCommonSubsequenceHelper(text1, text2, m, n - 1, &memo))
        }
        return memo["\(m)_\(n)"] ?? 0
    }
}

func longestCommonSubsequence_(_ text1: String, _ text2: String) -> Int {
    var table:[String:Int] = [String:Int]()
    
    return 0
}

