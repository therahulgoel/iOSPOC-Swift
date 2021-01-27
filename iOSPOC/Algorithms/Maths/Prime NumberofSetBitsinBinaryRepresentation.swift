//
//  Prime NumberofSetBitsinBinaryRepresentation.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 24/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/

func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
    var i = L
    var countPrimes = 0
    
    while i <= R{
        var number = i
        var count = 0
        while number > 0{
            let LSB = number & 1
            if LSB == 1{
                count += 1
            }
            number = number/2
        }
        if checkIfPrime(count) && count != 1{
            countPrimes += 1
        }
        i += 1
    }
    return countPrimes
}

func checkIfPrime(_ num:Int)->Bool{
    var i = 2
    while i < num{
        if num % i == 0{
            return false
        }
        i += 1
    }
    return true
}
