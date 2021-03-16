//
//   IntegerReplacement.swift
//  iOSPOC
//
//  Created by Rahul Goel on 26/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/integer-replacement/

func integerReplacement(_ n: Int) -> Int {
    return integerReplacementHelper(n)
}

func integerReplacementHelper(_ n:Int)->Int{
    if n <= 1{
        return 0
    }else{
        if n%2 == 0{
            return 1 + integerReplacementHelper(n/2)
        }else{
            return 1 + min(integerReplacement(n-1), integerReplacement(n+1))
        }
    }
}
