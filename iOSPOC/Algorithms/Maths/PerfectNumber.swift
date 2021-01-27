//
//  PerfectNumber.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/perfect-number/

//Time : O(sqrt(n))
func checkPerfectNumber(_ num: Int) -> Bool {
    var i = 1
    var sum = 0
    
    while i < Int(ceil(sqrt(Double(num)))){
        if num % i == 0 {
            sum = sum + i
        }
        i += 1
    }
    
    if sum == num{
        return true
    }
    return false
}
