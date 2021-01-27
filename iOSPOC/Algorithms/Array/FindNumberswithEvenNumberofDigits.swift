//
//  FindNumberswithEvenNumberofDigits.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 07/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
 Given an array nums of integers, return how many of them contain an even number of digits.
 */

func findNumbers(_ nums: [Int]) -> Int {
    var index:Int = 0
    var countEventDigitNumbers:Int = 0
    
    while index < nums.count{
        let digits = numberlength(nums[index])
        if digits%2 == 0{
            countEventDigitNumbers += 1
        }
        index += 1
    }
    return countEventDigitNumbers
}

func numberlength(_ num:Int)->Int{
    var length:Int = 0
    var number = num
    //In case number iteself is zero
    if num == 0 {
        length = 1
    }else{
        while (number > 0){
            length += 1
            number = number/10
        }
    }
    return length
}
