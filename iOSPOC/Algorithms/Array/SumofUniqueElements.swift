//
//  SumofUniqueElements.swift
//  iOSPOC
//
//  Created by Rahul Goel on 24/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/sum-of-unique-elements/

func sumOfUnique(_ nums: [Int]) -> Int {
    var map = [Int:Int]()
    //Find all values with their frequency
    for ele in nums{
        if let value = map[ele]{
            map[ele] = value + 1
        }else{
            map[ele] = 1
        }
    }
    //Remove values with frequency greater than 1
    map = map.filter { (k,v) -> Bool in
        return v == 1
    }
    //Find of sum of all the values
    return map.keys.reduce(0) { (res, val) -> Int in
        return res + val
    }
}

