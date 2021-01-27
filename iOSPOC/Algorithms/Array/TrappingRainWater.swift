//
//  TrappingRainWater.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 08/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/trapping-rain-water/

 func trap(_ height: [Int]) -> Int {
    //To calculate Highest bar on left for every ith bar
    var index = 1
    let arrLength = height.count
    var max = 0
    var leftHighs = Array(repeating:0, count:arrLength)

    while index < arrLength{
        if height[index - 1] > max{
            max = height[index - 1]
        }
        leftHighs[index] = max
        index += 1
    }
    var rightHighs = Array(repeating:0, count:arrLength)
    index = arrLength - 1
    max = 0
    while  index > 0{
        if height[index] > max{
            max = height[index]
        }
        rightHighs[index - 1] = max
        index -= 1
    }
    //To calculate water trapped for every ith bar
    index = 0
    var water = 0
    while index < arrLength{
        let diff = min(leftHighs[index], rightHighs[index])
         //If height of current bar is lesser than diffence
        if diff >= height[index]{
            water = water + diff - height[index]
        }
        index += 1
    }
    return water
}

