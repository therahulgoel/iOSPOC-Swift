//
//  ClimbingStairs.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 09/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/climbing-stairs/

func climbStairs(_ n: Int) -> Int {
    var memo = [Int:Int]()
    return clibmStairsInternal(n, &memo)
}

func clibmStairsInternal(_ num:Int, _ memo:inout [Int:Int])->Int{
    if num <= 1 {
        //Increment 1 to number of paths
        return 1
    }else{
        if let lookedUpValue = memo[num]{ //Return From Memo
            return lookedUpValue
        }else{ //Calculate and store it in memo for future
         memo[num] = clibmStairsInternal(num - 1, &memo) + clibmStairsInternal(num-2, &memo)
         return memo[num] ?? 0
        }
    }
}

