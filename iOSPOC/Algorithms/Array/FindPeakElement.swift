//
//  FindPeakElement.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 02/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/find-peak-element/

/*
    Solution 1 : Max element is always the peak in given array
    Time : O(n)
*/
func findPeakElement(_ nums: [Int]) -> Int {
    var peakElement:Int = nums[0]
    var peakElementIndex:Int = 0
    var index:Int = 1
    
    while index < nums.count {
        if  peakElement < nums[index]{
            peakElement = nums[index]
            peakElementIndex = index
        }
        index += 1
    }
    return peakElementIndex
}

/*
 Solution 2 : Can use Binary Search
 Time : O(logn)
 */

func findPeakElement_(_ nums: [Int]) -> Int {
    return 0
}
