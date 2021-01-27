//
//  Maximum69Number.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/maximum-69-number/

func maximum69Number (_ num: Int) -> Int {
    var str = Array(String(num))
    var index = 0
    var found  = false
    while index < str.count {
        if str[index] == "6"{
            found = true
            break
        }
        index += 1
    }
    if found == true{
        str[index] = "9"
        return Int(String(str)) ?? 0
    }
    return num
}
