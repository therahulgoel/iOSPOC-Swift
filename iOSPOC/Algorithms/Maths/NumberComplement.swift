//
//  NumberComplement.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 23/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/number-complement/

func findComplement(_ num: Int) -> Int {
    var complement = 0
    var number = num
    var i = 0.0
    while number > 0{
        let LSB = number%2
        let invertedLSB = (LSB == 0 ? 1 : 0)
        complement = complement + Int(pow(2.0,i)) * invertedLSB
        i += 1
        number = number/2
    }
    return complement
}

