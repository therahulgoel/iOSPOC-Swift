//
//  PeakIndexinaMountainArray.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 02/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/peak-index-in-a-mountain-array/

/*
    Solution 1 : Max element is always the peak in given array
    Time : O(n)
*/
func peakIndexInMountainArray(_ A: [Int]) -> Int {
    var peakElement:Int = A[0]
    var peakElementIndex:Int = 0
    var index:Int = 1
    
    while index < A.count {
        if  peakElement < A[index]{
            peakElement = A[index]
            peakElementIndex = index
        }
        index += 1
    }
    return peakElementIndex
}
