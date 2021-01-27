//
//  PowerofThree.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/power-of-three/
 Given an integer, write a function to determine if it is a power of three.
 */

/*Solution 1 :
If reminder with largest possible power of 3 (For 32 bit integer) == 0 then yes
else no
Time : O(1)
*/
func isPowerOfThree(_ n: Int) -> Bool {
    if n <= 0{
        return false
    }
    if (1162261467%n == 0){
        return true
    }else{
        return false
    }
}

