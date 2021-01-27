//
//  CountPrimes.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/count-primes/

//Based on Sieve of Eratosthenes Solution
func countPrimes(_ n: Int) -> Int {
    //Array To mark all the non primes and primes
    //Considering all numbers upto n as prime
    var arr:[Bool] = Array(repeating: true, count: n + 1)
    var countPrimes = 0
    var i = 2
    while i*i < n  {
        if arr[i] == false{
            i += 1
            continue
        }
        var j = i*i
        while j < n {
            arr[j] = false
            j += i
        }
        i += 1
    }
    i = 2
    while i < n{
        if arr[i] == true{
            countPrimes += 1
        }
        i += 1
    }
    return countPrimes
}

