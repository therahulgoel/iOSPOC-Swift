//
//  BestTimetoBuyandSellStockII.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

func maxProfit_(_ prices: [Int]) -> Int {
    if prices.isEmpty{
        return 0
    }
    var min = prices[0] //First Day Stock Price
    var i = 0, totalProfit = 0
    let totalStocks = prices.count
    while  i < totalStocks{
        if min > prices[i]{
            min = prices[i]
        }
        let profitOnSellingThisDay = prices[i] - min
        totalProfit += profitOnSellingThisDay
        i += 1
    }
    return 0
}

