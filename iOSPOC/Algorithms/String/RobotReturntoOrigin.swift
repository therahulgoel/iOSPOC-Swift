//
//  RobotReturntoOrigin.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/robot-return-to-origin/

func judgeCircle(_ moves: String) -> Bool {
    var xCord = 0, yCord = 0
    var i = 0
    let move = Array(moves), length = moves.count
    while i < length {
        if move[i] == Character("L"){
            xCord -= 1
        }
        else if move[i] == Character("R"){
            xCord += 1
        }
        else if move[i] == Character("U"){
            yCord += 1
        }
        else if move[i] == Character("D"){
            yCord -= 1
        }
        i += 1
    }
    return (xCord == yCord) ? xCord == 0 : false
}

