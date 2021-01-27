//
//  LongestContinuousIncreasingSubsequence.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 06/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/longest-continuous-increasing-subsequence/
 Given an unsorted array of integers,
 find the length of longest continuous increasing subsequence (subarray).
 Time : O(n)
 */
func findLengthOfLCIS(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    var index:Int = 0
    var length:Int = 1
    var min:Int = 1
    while index < nums.count - 1{
        if nums[index] < nums[index + 1]{
            length += 1
        }else{
            length = 1
            
        }
        if min < length{
            min = length
        }
        index += 1
    }
    return min
}
