//
//  SelfDividingNumbers.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/self-dividing-numbers/
 A self-dividing number is a number that is divisible by every digit it contains.
 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
 Also, a self-dividing number is not allowed to contain the digit zero.
 Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
 */
func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var index = left
    var output:[Int] = [Int]()
    while index <= right{
        if checkIfNumberSelfDividing(index){
            output.append(index)
        }
        index += 1
    }
    return output
}

func checkIfNumberSelfDividing(_ num:Int)->Bool{
    var status:Bool = true
    var number = num
    while number > 0{
        let lastDigit = number%10
        if lastDigit != 0{
            if num%lastDigit != 0{
                status = false
                break
            }
        }else{
            status = false
            break
        }
        number = number/10
    }
    return status
}


