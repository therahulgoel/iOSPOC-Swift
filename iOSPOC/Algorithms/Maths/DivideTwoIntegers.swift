//
//  DivideTwoIntegers.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 06/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/divide-two-integers/

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    var quotient:Int = 0
    var dividend_ = dividend
    
    while abs(dividend_) > abs(divisor){
        dividend_ = abs(dividend_) - abs(divisor)
        quotient += 1
    }
    return quotient
}
