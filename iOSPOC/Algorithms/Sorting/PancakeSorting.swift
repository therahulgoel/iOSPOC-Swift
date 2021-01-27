//
//  PancakeSorting.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 04/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/pancake-sorting/

func pancakeSort(_ A: [Int]) -> [Int] {
    var arr:[Int] = A
    var index:Int = A.count - 1
    var k = 0
    
    while index > 0{
        let maxIndex = returnMaxIndex(arr, index)
        reverseFrom(&arr, maxIndex, k)
        index -= 1
        k += 1
    }
    
    return arr
}

func returnMaxIndex(_ arr:[Int], _ upto:Int)->Int{
    var maxIndex:Int = 0 //max value Array Index
    var index:Int = 0 //iterator
    while index < upto{
        if arr[index] < arr[index + 1]{
            maxIndex = index + 1
        }else{
            maxIndex = index
        }
        index += 1
    }
    return maxIndex
}

func reverseFrom(_ arr:inout [Int], _ index:Int, _ k:Int){
    var iterator:Int = 0
    var startsFrom:Int = index
    let arrLength:Int = arr.count - 1 - k
    while startsFrom < (arrLength - index)/2{
        let tmp:Int = arr[arrLength - iterator]
        arr[arrLength - iterator] = arr[startsFrom]
        arr[startsFrom] = tmp
        startsFrom += 1
        iterator += 1
    }
}

