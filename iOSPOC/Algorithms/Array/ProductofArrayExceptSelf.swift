//
//  ProductofArrayExceptSelf.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 30/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/product-of-array-except-self/

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var output:[Int] = Array(repeating : 1, count: nums.count)
    if nums.isEmpty{
        return output
    }

    //1. Calculate Left Product Array for every element (inclusive element)
    var index:Int = 1
    while index < nums.count {
        output[index] = output[index - 1]*nums[index - 1]
        index += 1
    }
    index = nums.count - 1
    var right = 1
    //2. Calculate Right Product Array for every element (inclusive element)
    while index >= 0 {
        output[index] = output[index]*right
        right = right*nums[index]
        index -= 1
    }
    return output
}

