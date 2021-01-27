//
//  PowerofFour.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 05/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
    https://leetcode.com/problems/power-of-four/
    Given an integer (signed 32 bits),
    write a function to check whether it is a power of 4.
 */

/*
    Solution 1 : If Log of given number base 4 is integer then number is power of 4.
*/
func isPowerOfFour(_ num: Int) -> Bool {
    if num == 0 {
        return false
    }
    var isPowerOfFour:Bool = false
    let numberLogBase4:Double = log(Double(num))/log(4)
    if (numberLogBase4.rounded() == numberLogBase4) {
        isPowerOfFour = true
    }
    return isPowerOfFour
}
