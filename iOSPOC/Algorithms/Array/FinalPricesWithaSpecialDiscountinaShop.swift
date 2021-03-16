//
//  Final PricesWithaSpecialDiscountinaShop.swift
//  iOSPOC
//
//  Created by Rahul Goel on 25/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

func finalPrices(_ prices: [Int]) -> [Int] {
    var finalPriceAfterDiscount = [Int]()
    var i = 0, j = 0, lessPriceFound = false
    let count = prices.count
    while i < count {
        let ele = prices[i]
        j = i + 1
        lessPriceFound = false
        while j < count {
            if prices[j] <= ele{
                lessPriceFound = true
                finalPriceAfterDiscount.append(ele - prices[j])
                break
            }
            j += 1
        }
        if !lessPriceFound{
            finalPriceAfterDiscount.append(ele)
        }
        i += 1
    }
    return finalPriceAfterDiscount
}
