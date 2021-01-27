//
//  DegreeofanArray.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 17/06/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/degree-of-an-array/

func findShortestSubArray(_ nums: [Int]) -> Int {
    var i = 0
    let result = 0
    var map:[Int:[Int]] = [Int:[Int]]() //key : Number , value : Array of all occurances
    let length = nums.count
    
    //Store frequency of each number and first occurance
    while i < length{
        if var value = map[nums[i]]{
            value[0] += 1
        }else{
            //To store Frequency and all of the occurances
            map[nums[i]] = [1,i]
        }
        i += 1
    }
    return result
}

