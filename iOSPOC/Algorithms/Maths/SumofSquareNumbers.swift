//
//  SumofSquareNumbers.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 23/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/sum-of-square-numbers/

//Using Two Pointers :
func judgeSquareSum(_ c: Int) -> Bool {
    var left = 0
    var right = Int(sqrt(Double(c)))
    while left <= right {
           let sum = left*left + right*right
            if sum <  c {
                left += 1
            }else if sum > c {
                right -= 1
            }else{
                return true
            }
        }
        return false
}
