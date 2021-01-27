//
//  KeyboardRow.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/keyboard-row/

func findWords(_ words: [String]) -> [String] {
    let firstRow = Set("qwertyuiopQWERTYUIOP")
    let secondRow = Set("asdfghjklASDFGHJKL")
    let thirdRow = Set("zxcvbnmZXCVBNM")
    var result = [String]()
    for word in words{
        let chrWord = Array(word)
        let wordLength = chrWord.count
        var firstRowCount = 0, secondRowCount = 0, thirdRowCount = 0
        for alphabet in chrWord{
            if firstRow.contains(alphabet){
                firstRowCount += 1
            }else if secondRow.contains(alphabet){
                secondRowCount += 1
            }else if thirdRow.contains(alphabet){
                thirdRowCount += 1
            }
        }
        if firstRowCount == wordLength || secondRowCount == wordLength || thirdRowCount == wordLength{
          result.append(word)
        }

    }
    return result
}

