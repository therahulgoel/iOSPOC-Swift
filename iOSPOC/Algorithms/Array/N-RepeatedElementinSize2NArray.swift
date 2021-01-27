//
//  N-RepeatedElementinSize2NArray.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/n-repeated-element-in-size-2n-array/
func repeatedNTimes(_ A: [Int]) -> Int {
    var element:Int = 0
    var index:Int = 0
    var map :[Int:Int] = [Int:Int]()
    while index < A.count {
        if let _ = map[A[index]] {
            element = A[index]
            break
        }else{
            map[A[index]] = 1
        }
        index += 1
    }
    return element
}

