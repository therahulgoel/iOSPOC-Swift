//
//  ReverseBits.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 02/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/reverse-bits/

func reverseBits(_ n: Int) -> Int {
    var index:Int = 0
    var str = Array(String(n))
    let length = str.count
    while index < n/2 {
        let tmp = str[index]
        str[index] = str[length - 1 - index]
        str[length - 1 - index] = tmp
        index += 1
    }
    return Int(String(str)) ?? 0
}

