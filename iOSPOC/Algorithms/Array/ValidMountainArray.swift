//
//  ValidMountainArray.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 07/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/valid-mountain-array/
 Given an array A of integers, return true if and only if it is a valid mountain array.
 Recall that A is a mountain array if and only if:
 A.length >= 3
 There exists some i with 0 < i < A.length - 1 such that:
 A[0] < A[1] < ... A[i-1] < A[i]
 A[i] > A[i+1] > ... > A[A.length - 1]
 */

func validMountainArray(_ A: [Int]) -> Bool {
    /*Check from first two numbers the nature of our start
    were we in valley or on mountain when we started
    */
    var mountainCovered:Int = 0
    if A.count < 3 {
        return false
    }
    if A[0] > A[1]{
        mountainCovered += -1
    }
    var isMountain:Bool = false
    var index:Int = 1
    var justVisitedMountain:Bool = false
    while index < A.count - 1{
        if A[index] <= A[index + 1]{
            justVisitedMountain = false
        }else{
            if justVisitedMountain == false{
                mountainCovered += 1
                justVisitedMountain = true
            }
        }
        index += 1
    }
    if A[A.count - 1] > A[A.count - 2]{
        if mountainCovered != 0{
            mountainCovered += 1
        }
    }
    if mountainCovered == 1{
        isMountain = true
    }
    return isMountain
}
