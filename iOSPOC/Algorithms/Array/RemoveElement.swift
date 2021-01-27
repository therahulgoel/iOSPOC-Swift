//
//  RemoveElement.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/remove-element/

 func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    if nums.isEmpty{
        return 0
    }
    let arrLength = nums.count
    var count = 0, left = 0, right = arrLength - 1
    while left <= right {
        if nums[left] == val{ //Match
            if nums[right] == val{
                right -= 1
            }else{
                nums[left] = nums[right]
                nums[right] = val
                left += 1
                right -= 1
            }
            count += 1 //To count how many matches
        }else{
            left += 1
        }
    }
    return arrLength - count
}

