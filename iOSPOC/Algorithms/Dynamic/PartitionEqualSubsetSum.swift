//
//  PartitionEqualSubsetSum.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 11/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/partition-equal-subset-sum/

func canPartition(_ nums: [Int]) -> Bool {
    if nums.isEmpty{
        return false
    }
    var sum = 0, i = 0
    while i < nums.count {
        sum += nums[i]
        i += 1
    }
    let halfSum = sum/2
    //If Sum is Odd : Can not devide in two equal parts
    if !(sum%2 == 0){
        return false
    }
    //Dictionary to store sub-problem results to be reused
    var memo:[String:Bool] = [String:Bool]()
    return canPartitionInternal(0, nums, halfSum, 0, &memo)
}

func canPartitionInternal(_ currentSum:Int,_ arr:[Int], _ target:Int, _ index:Int,_ memo: inout [String:Bool])->Bool{
    if currentSum == target{
        return true
    }
    if currentSum > target || index >= arr.count{
        return false
    }
    else{
        if let value = memo["\(currentSum)\(index)"]{
            return value
        }
        memo["\(currentSum)\(index)"] = canPartitionInternal(currentSum, arr,target,index + 1,&memo) ||
            canPartitionInternal(currentSum + arr[index], arr,target,index + 1,&memo)
        return memo["\(currentSum)\(index)"] ?? false
    }
}

