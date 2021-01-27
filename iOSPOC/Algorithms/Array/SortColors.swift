//
//  SortColors.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/sort-colors/
/*Solution 1 :
Count number of 0s, 1s and 2s and recreate the given array of numbers
Time : O(n) Two Passes of given array
*/
func sortColors(_ nums: inout [Int]) {
    var index:Int = 0
    var numberOf0:Int = 0
    var numberOf1:Int = 0
    var numberOf2:Int = 0
    while index < nums.count {
        if nums[index] == 0{
            numberOf0 += 1
        }
        else if nums[index] == 1{
            numberOf1 += 1
        }
        else if nums[index] == 2{
            numberOf2 += 1
        }
        index += 1
    }
    index = 0
    while index < nums.count{
        if index < numberOf0{
            nums[index] = 0
        }
        else if index < numberOf0 + numberOf1{
            nums[index] = 1
        }
        else if index < numberOf0 + numberOf1 + numberOf2{
            nums[index] = 2
        }
        index += 1
    }
}
