//
//  Subtract the ProductandSumofDigitsofanInteger.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 23/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

func subtractProductAndSum(_ n: Int) -> Int {
    var product = 1
    var number = n
    var sum = 0
    while number > 0 {
        let lastDigit = number % 10
        sum = sum + lastDigit
        product = product * lastDigit
        number = number / 10
    }
    return (product - sum)
}
