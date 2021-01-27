//
//  PowerofTwo.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/* https://leetcode.com/problems/power-of-two/
 Given an integer, write a function to determine if it is a power of two.
 */

func isPowerOfTwo(_ n: Int) -> Bool {
    //To store the count of set bits in binary rep of given number
    var count:Int = 0
    var number:Int = n
    
    while number > 0 {
        //Bitwise AND with 1 or 0001 in Binary to count number of 1s
        count += number & 1
        
        //Every time Divide number by 2 or Right Shift 1 Pos
        //As the LSB is the one that we are checking for counting
        number >>= 1
    }
    if count == 1{
        return true
    }
    return false
}
