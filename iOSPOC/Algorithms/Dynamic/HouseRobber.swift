//
//  HouseRobber.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 17/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/house-robber/

//Memoization : Solution 1
func rob(_ nums: [Int]) -> Int {
    var memo:[Int:Int] = [Int:Int]()
    return robHelper(nums, 0, &memo)
}

func robHelper(_ nums: [Int], _ curInd :Int, _ memo:inout [Int:Int])->Int{
    if curInd > nums.count - 1{
        return 0
    }else{
        if let lookedUpValue = memo[curInd]{ //Return from Memo
            return lookedUpValue
        }
        //Calculate and store it for future
        memo[curInd] =  max(nums[curInd] + robHelper(nums, curInd + 2, &memo) , 0 + robHelper(nums, curInd + 1, &memo))
        return memo[curInd] ?? 0
    }
}

//Tabulation : Solution 2
func rob_(_ nums: [Int]) -> Int {
    if nums.isEmpty{
        return 0
    }
    if nums.count == 1{
        return nums[0]
    }
    if nums.count == 2{
        return max(nums[0], nums[1])
    }
    
    //To store max value stolen so far upto ith house
    var table:[Int:Int] = [Int:Int]()
    table[0] = nums[0]
    table[1] = max(nums[0], nums[1])
    
    var i = 2
    let totalNums = nums.count
    while i < totalNums {
        table[i] = max((table[i - 2]! + nums[i]), table[i - 1]!)
        i += 1
    }
    return table[totalNums - 1] ?? 0
}

