//
//  SortArrayByParityII.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/sort-array-by-parity-ii/
func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var output:[Int] = Array(repeating:0, count:A.count)
    var index:Int = 0
    
    //i for even index j for odd index
    var i = 0, j = 1
    while index < A.count{
        if A[index] % 2 == 0 { //Even Number
            output[i] = A[index]
            i += 2
        }else{
            output[j] = A[index] //Odd Number
            j += 2
        }
        index += 1
    }
    
    return output
}
