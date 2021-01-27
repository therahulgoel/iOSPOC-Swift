//
//  1.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/09/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/two-sum/

final class P1{
    
    //Solution 1 : O(N^2) 
    final class func twoSumNSquareSolution(_ nums: [Int], _ target: Int) -> [Int] {
        var i = 0, j = 0
        
        while  i < nums.count{
            j = i+1
            while j < nums.count{
                if  nums[i] + nums[j] == target{
                    return [i,j]
                }
                j += 1
            }
            i += 1
        }
        return []
    }
    
    final class func twoSumBetterSolution(_ nums: [Int], _ target: Int) -> [Int] {
        var index = 0
        var map:[Int:Int] = [Int:Int]()
        
        while  index < nums.count{
            
            let diff = target - nums[index]
            if let inded = map[nums[index]]{
                return [inded,index]
            }else{
                map[diff] = index
            }
            index += 1
        }
        return []
    }
}

extension P1{
    final class func test(){
        print(P1.twoSumNSquareSolution([3,2,4], 6))
        print(P1.twoSumNSquareSolution([2,5,5,11], 10))
        print(P1.twoSumBetterSolution([3,2,4], 6))
        print(P1.twoSumBetterSolution([2,5,5,11], 10))
    }
}
