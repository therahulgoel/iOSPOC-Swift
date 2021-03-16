//
//  RichestCustomerWealth.swift
//  iOSPOC
//
//  Created by Rahul Goel on 25/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/richest-customer-wealth/

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var richestCustomerWealth = Int.min
    for customerWealth in accounts{
        let totalWealth = customerWealth.reduce(0) { (result, number) -> Int in
            result + number
        }
        if richestCustomerWealth < totalWealth {
            richestCustomerWealth = totalWealth
        }
    }
    return richestCustomerWealth
}
