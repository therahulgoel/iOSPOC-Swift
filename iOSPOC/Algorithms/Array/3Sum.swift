//
//  3Sum.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 13/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/3sum/

// Solution 1: O(n^3) - Time Limit Exceeds for large input
func threeSum_(_ nums: [Int]) -> [[Int]] {
    var result:[[Int]] = [[Int]]()
    var i = 0, j = 0, k = 0
    while i < nums.count {
         j = i + 1
           while j < nums.count{
               k = j + 1
               while k < nums.count{
                   if (nums[i] + nums[j] + nums[k] == 0) {
                       let arr:[Int] = [nums[i],nums[j],nums[k]]
                       var isAlreadyAdded:Bool = false
                       
                       //Check if its already in result array
                       for obj in result{
                           if Set(obj) == Set(arr) {
                               isAlreadyAdded = true
                               break
                           }
                       }
                       if !isAlreadyAdded {
                            result.append(arr)
                       }
                   }
                   k += 1
               }
               j += 1
           }
        i += 1
    }
    return result
}

//Solution 2 : O(n^2)
func threeSum(_ nums: [Int]) -> [[Int]] {
    //1. Sort the given array
    let arr:[Int] = nums.sorted()
    var output = Set<[Int]>()
    let arrlength = arr.count - 1
    //2. find the triplet with sum equals 0
    var left = 0, right = arr.count - 1, i = 0
    while i < nums.count {
        left = i + 1
        right = arrlength
        while left < right {
            let sum = arr[left] + arr[right] + arr[i]
            if sum == 0 {
                let obj = [arr[left], arr[right], arr[i]]
                    output.insert(obj)
                left += 1
                right -= 1
            }else if sum < 0{
                left += 1
            }else{
                right -= 1
            }
        }
        i += 1
    }
    return Array(output)
}


