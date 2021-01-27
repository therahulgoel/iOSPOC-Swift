//
//  TwoSumII-Inputarrayissorted.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    let arrLength = numbers.count
    var left = 0, right = arrLength - 1
    while left < right {
        let eleSum = numbers[left] + numbers[right]
        if eleSum == target{
            return [left + 1, right + 1]
        }else if eleSum < target{
            left += 1
        }else{
            right -= 1
        }
    }
    return [-1,-1]
}


