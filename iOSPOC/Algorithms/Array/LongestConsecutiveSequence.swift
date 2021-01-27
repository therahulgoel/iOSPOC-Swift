//
//  LongestConsecutiveSequence.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 09/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/longest-consecutive-sequence/

func longestConsecutive(_ nums: [Int]) -> Int {
    var count = 0
    let setNumbers = Set(nums)
    var i = 0
    while i < nums.count {
        //To check if ith number is first number
        if !setNumbers.contains(nums[i] - 1){
            //Look for next number in set by incrementing with 1
            var tmp = 1
            var number = nums[i] + 1
            while setNumbers.contains(number){
                tmp += 1
                number += 1
            }
            if tmp > count{
                count = tmp
            }
        }
        i += 1
    }
    return count
}

