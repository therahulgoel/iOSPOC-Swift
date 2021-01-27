//
//  HowManyNumbersAreSmallerThantheCurrentNumber.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var i = 0, j = 0, count = 0
    var output:[Int] = Array(repeating:0, count:nums.count)
    let arrLength = nums.count
    
    while i < arrLength {
        j = 0
        count = 0
        while j < arrLength {
             if  nums[j] < nums[i]{
                 count += 1
             }
            j += 1
        }
        output[i] = count
        i += 1
    }
    return output
}
