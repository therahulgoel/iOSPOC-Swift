//
//  FindNUniqueIntegersSumuptoZero.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 16/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

func sumZero(_ n: Int) -> [Int] {
    var result:[Int] = [Int]()
    var i = 0, j = 1
    //If n is Odd add 0 in result set
    if n%2 != 0{
        result.append(0)
        i += 1
    }

    while  i < n{
        result.append(contentsOf: [j,-j])
        j += 1
        i += 2
    }
    return result
}

