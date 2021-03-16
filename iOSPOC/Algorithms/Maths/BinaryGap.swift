//
//  BinaryGap.swift
//  iOSPOC
//
//  Created by Rahul Goel on 26/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/binary-gap/

func binaryGap(_ n: Int) -> Int {
    var number = n, gap = 0
    var lastIndex = -1, currIndex = -1
    
    while number > 0 {
        let LSB =  number & 1
        currIndex += 1
        if LSB == 1{
            if lastIndex == -1{
                lastIndex = currIndex
            }else{
                if (currIndex - lastIndex) > gap {
                    gap = currIndex - lastIndex
                }
                lastIndex = currIndex
            }
        }
        //To divide number by 2 or right shift
        number >>= 1
    }
    return gap
}
