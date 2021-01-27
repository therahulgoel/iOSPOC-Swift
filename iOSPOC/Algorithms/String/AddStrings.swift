//
//  AddStrings.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/add-strings/

func addStrings(_ num1: String, _ num2: String) -> String {
    let num1Chars = Array(num1.reversed())
    let num2Chars = Array(num2.reversed())
    var i = 0, j = 0, sum = 0, carry = 0
    var res = ""
    while i < num1Chars.count || j < num2Chars.count || carry != 0 {
        sum = carry
        if i < num1Chars.count {
            sum += Int(String(num1Chars[i]))!
            i += 1
        }
        if j < num2Chars.count {
            sum += Int(String(num2Chars[j]))!
            j += 1
        }
        carry = sum / 10
        sum = sum % 10
        res.append(String(sum))
    }
    return String(res.reversed())
}
