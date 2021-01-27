//
//  BestTimetoBuyandSellStock.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 17/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

func maxProfit(_ prices: [Int]) -> Int {
    if prices.isEmpty{
        return 0
    }
    var min = prices[0] //First Day Stock price
    var maxProfitEarned = 0
    for price in prices{
        if min > price{
            min = price
        }
        let currentPriceSellProfit = (price - min)
        if currentPriceSellProfit > maxProfitEarned{
            maxProfitEarned = currentPriceSellProfit
        }
    }
    return maxProfitEarned
}

    
