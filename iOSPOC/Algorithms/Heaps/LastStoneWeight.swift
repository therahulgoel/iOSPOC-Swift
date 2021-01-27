//
//  LastStoneWeight.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 24/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/last-stone-weight/

func lastStoneWeight(_ stones: [Int]) -> Int {
    var lastStoneWeight:Int = 0

    //In case of 1 stone only
    if stones.count == 1{
        return stones[0]
    }

    var stonesCopy:[Int] = stones 
    while stonesCopy.count >= 1 {
        stonesCopy.sort()
        let firstLargest = stonesCopy.removeLast()
        var secondLargest = 0
        if stonesCopy.count >= 1{
            secondLargest = stonesCopy.removeLast()
            stonesCopy.append(firstLargest - secondLargest)
        }
        lastStoneWeight = firstLargest - secondLargest
    }
    return lastStoneWeight
}



