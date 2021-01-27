//
//  ExcelSheetColumnNumber.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 05/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

func titleToNumber(_ s: String) -> Int {
    var numberIs:Int = 0
    let charArr:[Character] = Array(s)
    var i:Int = 0
    
    while i < charArr.count {
        if let ascii = getAscii(charArr[s.count - i - 1]) {
            let value = ascii - 65 + 1
            let po = Int(pow(26.0, Double(i)))
            numberIs = numberIs + value * po
        }
        i += 1
    }
    return numberIs
}

func getAscii(_ str:Character)->Int?{
    return Int(str.unicodeScalars.first?.value ?? 0)
}

