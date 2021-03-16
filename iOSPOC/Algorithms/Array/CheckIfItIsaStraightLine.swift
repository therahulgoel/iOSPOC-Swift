//
//  CheckIfItIsaStraightLine.swift
//  iOSPOC
//
//  Created by Rahul Goel on 25/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/check-if-it-is-a-straight-line/

func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        //Idea is to check slop of line for every two points if for all its same means it
        //forms a straight line
        if coordinates.count == 2{
            return true
        }
        var i = 0, slope = 0.0

        while i < coordinates.count - 1 {
            let first = coordinates[i]
            let second = coordinates[i + 1]
            let top = Double(second[1] - first[1])
            let bottom = Double(second[0] - first[0])
            var localSlope = 0.0
            if bottom != 0.0{
                localSlope = top / bottom
            }else{
                localSlope = Double(Int.min) //To avoid Devide by Zero case
            }
            if i == 0 {
                slope = localSlope
            }else{
                if slope != localSlope{
                    return false
                }
            }
            i += 1
        }
        return true
}
