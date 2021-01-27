//
//  FactorialTrailingZeroes.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/factorial-trailing-zeroes/
*/

/*Solution 1 :
 Trailing 0's in factorial of given number = floor(n/5) + floor(n/25) + floor(n/125) ...
 and so on untill its greater than 1
 */
 func trailingZeroes(_ n: Int) -> Int {
    
    var trailingZeros:Int = 0
    var index:Int = 1
    
    while Double(n)/pow(Double(5),Double(index)) >= 1 {
        trailingZeros += Int(Double(n)/pow(Double(5),Double(index)))
        index += 1
    }
    return trailingZeros
}

//Solution 2: Keep on dividing the given number by 5 and count the times it is divisible upto its greater than 1
func trailingZeroes_(_ n: Int) -> Int {
    if n <= 1{
        return 0
    }else{
        return Int(n/5) + trailingZeroes(n/5)
    }
}
