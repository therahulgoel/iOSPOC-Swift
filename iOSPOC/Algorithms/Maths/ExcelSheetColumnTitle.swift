//
//  ExcelSheetColumnTitle.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 06/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/excel-sheet-column-title/

func convertToTitle(_ n: Int) -> String {
    let title:String = ""
    
    //Count the maximum power of 26 in given number with remaining
    var countMaxPower:Double = 1
    var iterator:Int = 26
    
    while iterator < n {
        countMaxPower += 1
        iterator = Int(pow(26.0, countMaxPower))
    }
    
    return title
    
    
}
