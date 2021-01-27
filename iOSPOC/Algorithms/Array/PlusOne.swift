//
//  PlusOne.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 08/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/plus-one/

func plusOne(_ digits: [Int]) -> [Int] {
    var num :[Int] = digits
    let arrLength = num.count
    var i = arrLength - 1
    var carry = 0
    while i >= 0{
        var sumLSB = num[i] + carry
        if i == arrLength - 1{
            sumLSB += 1
        }
        if sumLSB % 10 == 0{
            num[i] = sumLSB%10
            carry = 1
        }else{
            num[i] = sumLSB%10
            carry = 0
            break
        }
        i -= 1
    }
    if carry == 1{
        num.insert(carry, at: 0)
    }
    return num
}

